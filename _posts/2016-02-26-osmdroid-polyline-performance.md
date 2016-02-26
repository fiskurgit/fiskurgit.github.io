---
title: OSMDroid Polyline Performance
author: fiskur
layout: post
permalink: /osmdroid_polyline_performance
ample_page_layout:
  - default_layout
slide_template:
  - default
categories:
  - android
---
I've been looking at rewriting my [Pennine Way app](https://play.google.com/store/apps/details?id=eu.fiskur.penninewaydistancecalculator), it currently uses GoogleMaps and was written at full tilt in a couple of days so the code is messy proof of concept and also made heavy use of an Event Bus ([Otto](https://github.com/square/otto)). Coming back to the code after a couple of years really highlights the problems with the Event Bus pattern - it's tricky to trace logic when it's not fresh in the mind. I also want to move to Open Street Map and store tiles locally so there's no dependency on having cellular coverage. I'm using [OSMDroid](https://github.com/osmdroid/osmdroid) which offers a similar structure to the GoogleMap api. For drawing the Pennine Way path I'm using the OSMBonusPack which has been endorsed by the [OSMDroid maintainers](https://github.com/osmdroid/osmdroid/issues/40).

There's a difference in the way GoogleMaps and OSMDroid (plus Bonus Pack) handle Polylines, GoogleMaps takes care of only drawing the path in the viewport to save memory, while OSMDroid renders the entire texture, for a path with ~9000 points this causes OOM exceptions when using hardware acceleration: ```OpenGLRenderer﹕ Path too large to be rendered into a texture```, some Stack Overflow posts suggest turning off hardware acceleration for the OSM view:

```xml
<org.osmdroid.views.MapView
    android:id="@+id/map"
    android:layout_width="fill_parent"
    android:layout_height="fill_parent"
    android:layerType="software"
    />
```

but this is inefficient and will cause issues on lower powered devices. In order to use OSMDroid with large paths you need to use a different strategy than you'd use with GoogleMaps; only render the points onscreen, and thin the number of points so there's less drawing work to do.

* Attach zoom and drag listeners to your MapView:
```java
osmMap.setMapListener(new MapListener() {
    @Override
    public boolean onScroll(ScrollEvent event) {
        drawRoute(MapActivity.this, osmMap, pathColor);
        return false;
    }

    @Override
    public boolean onZoom(ZoomEvent event) {
        drawRoute(MapActivity.this, osmMap, pathColor);
        return false;
    }
});
```
* Do the work off the main event thread:
```java
private Thread updateThread = null;
//...
public void drawRoute(final Context context, final MapView osmMap, final int color){
    if(updateThread == null || !updateThread.isAlive()){
        updateRoute(context, osmMap, color);
    }
}
```
* Remove any points outside of the view port, then thin the remaining points so there's a sane number to draw (where routeGeoPoints is the full array of ~9000 geopoints):
```java
Polyline pathOverlay = null;

private void updateRoute(final Context context, final MapView osmMap, final int color){
    updateThread = new Thread(new Runnable() {
        public void run() {
            final ArrayList<GeoPoint> zoomPoints = new ArrayList<GeoPoint>(routeGeoPoints);

            //Remove any points that are offscreen
            removeHiddenPoints(osmMap, zoomPoints);

            //If there's still too many then thin the array
            if(zoomPoints.size() > MAX_POINTS){
                int stepSize = (int) zoomPoints.size()/MAX_POINTS;
                int count = 1;
                for (Iterator<GeoPoint> iterator = zoomPoints.iterator(); iterator.hasNext();) {
                    iterator.next();

                    if(count != stepSize){
                        iterator.remove();
                    }else{
                        count = 0;
                    }

                    count++;
                }
            }

            //Update the map on the event thread
            osmMap.post(new Runnable() {
                public void run() {
                    //ideally the Polyline instantiation would happen in the thread but that causes glitches while the event thread
                    //waits for redraw:
                    osmMap.getOverlays().remove(pathOverlay);
                    pathOverlay = new Polyline(context);
                    pathOverlay.setPoints(zoomPoints);
                    pathOverlay.setColor(color);
                    osmMap.getOverlays().add(pathOverlay);
                    osmMap.invalidate();
                }
            });
        }
    });
    updateThread.start();
}

private void removeHiddenPoints(MapView osmMap, ArrayList<GeoPoint> zoomPoints){
    BoundingBoxE6 bounds = osmMap.getBoundingBox();

    for (Iterator<GeoPoint> iterator = zoomPoints.iterator(); iterator.hasNext();) {
        GeoPoint point = iterator.next();

        boolean inLongitude = point.getLatitudeE6() < bounds.getLatNorthE6() && point.getLatitudeE6() > bounds.getLatSouthE6();
        boolean inLatitude = point.getLongitudeE6() > bounds.getLonWestE6() && point.getLongitudeE6() < bounds.getLonEastE6();
        if(!inLongitude || !inLatitude){
            iterator.remove();
        }
    }
}
```

The result is very smooth, though with occasional glitches along the viewport boundary:

<iframe width="1280" height="720" src="https://www.youtube.com/embed/hWcA5LL27Ms?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
