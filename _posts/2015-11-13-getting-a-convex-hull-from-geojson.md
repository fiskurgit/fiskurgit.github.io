---
title: Getting a Convex Hull from GeoJSON
author: fiskur
layout: post
permalink: /convex_hull_from_geojson
ample_page_layout:
  - default_layout
slide_template:
  - default
categories:
  - android
---
I&#8217;m working with the <a href="http://environment.data.gov.uk/flood-monitoring/doc/reference" target="_blank">Environment Agency Real Time flood-monitoring API</a> which returns flood areas as <a href="https://en.wikipedia.org/wiki/GeoJSON" target="_blank">GeoJSON</a>, these areas are made up of many thousands of points and displaying them on Android GoogleMaps as-is (using the <a href="https://developers.google.com/maps/documentation/android-api/utility/geojson" target="_blank">GoogleMap Utility Library</a>) kills performance, for example the local Walsden flood area GeoJSON has 7347 points, but the effected flood report could apply to anywhere within this region, so the detail isn&#8217;t useful or necessary: 

<img src="http://fiskur.eu/wp-content/uploads/2015/11/1447444652.png" alt="1447444652" width="640" height="360" class="alignnone size-full wp-image-876" />

What I want to do instead is trace the outline of the flood area and place a marker at the centre, the name for a bounding polygon of an array of points is call a <a href="https://en.wikipedia.org/wiki/Convex_hull" target="_blank">Convex Hull</a>.

To get this shape I need all the points that make up the GsoJSON shape, iterating through the GeoJSON using JSONObject/JSONArray to extract a list of Lat/Lon pairs would be very expensive, instead you can pass the raw GeoJSON String through a regular expression:

<script src="https://gist.github.com/fiskurgit/c1b718f788c9726db6db.js"></script>

Calculating the centre point for the marker is easy, just an average of the Latitude and Longitude points:

<script src="https://gist.github.com/fiskurgit/ab7816209d5ae9d74e41.js"></script>

I found a <a href="http://jaredrummler.com/2014/11/13/android-bitmaps-convex-hull/" target="_blank">beautiful Convex Hull implementation from Jared Rummler</a> which works with x,y points, instead of adapting this code to work with Lat,Longs we can just convert between the two using the GoogleMap Projection class: convert the LatLng list to Points, run through the Quick Hull algorithm then convert back to LatLng, not efficient but still reasonable:

<script src="https://gist.github.com/fiskurgit/22fb5fd4766d954fb1d9.js"></script>

The final convex hull has just 23 points:

<img src="http://fiskur.eu/wp-content/uploads/2015/11/1447444893.png" alt="1447444893" width="640" height="360" class="alignnone size-full wp-image-877" />