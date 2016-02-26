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
I've been looking at rewriting my [Pennine Way app](https://play.google.com/store/apps/details?id=eu.fiskur.penninewaydistancecalculator), it currently uses GoogleMaps and was written at full tilt in a couple of days so the code is messy proof of concept and also made heavy use of an Event Bus ([Otto](https://github.com/square/otto)). Coming back to the code after a couple of years really highlights the problems with the Event Bus pattern - it's tricky to trace logic when it's not fresh in the mind. I also want to move to [Open Street Map](https://www.openstreetmap.org) and store tiles locally so there's no dependency on having cellular coverage. I'm using [OSMDroid](https://github.com/osmdroid/osmdroid) which offers a similar API to GoogleMaps. For drawing the Pennine Way path I'm using the [OSMBonusPack](https://github.com/MKergall/osmbonuspack) which has been endorsed by the [OSMDroid maintainers](https://github.com/osmdroid/osmdroid/issues/40).

There's a difference in the way GoogleMaps and OSMDroid (plus Bonus Pack) handle Polylines, GoogleMaps takes care of only drawing the path in the viewport to save memory, while OSMDroid renders the entire texture, for a path with ~9000 points this causes OOM exceptions when using hardware acceleration: ```OpenGLRenderer﹕ Path too large to be rendered into a texture``` ([see this issue](https://github.com/MKergall/osmbonuspack/issues/68)), some Stack Overflow posts suggest turning off hardware acceleration for the OSM view:

<script src="https://gist.github.com/fiskurgit/59e0ba268a4625a6c403.js"></script>

but this is inefficient and will cause issues on lower powered devices. In order to use OSMDroid with large paths you need to use a different strategy than you'd use with GoogleMaps; only render the points that will appear on screen, and thin the number of points so there's less drawing work to do.

* Attach zoom and drag listeners to your MapView:

<script src="https://gist.github.com/fiskurgit/714989c9c439fb72415c.js"></script>

* Do the work off the main event thread:

<script src="https://gist.github.com/fiskurgit/0b9314cb533875efc14d.js"></script>

* Remove any points outside of the view port, then thin the remaining points so there's a sane number to draw (where routeGeoPoints is the full array of ~9000 geopoints):

<script src="https://gist.github.com/fiskurgit/42fadafaac089dfaf7bd.js"></script>

The result is very smooth, though with occasional glitches along the viewport boundary, this example has MAX_POINTS set to 150:

<iframe width="640" height="360" src="https://www.youtube.com/embed/hWcA5LL27Ms?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
