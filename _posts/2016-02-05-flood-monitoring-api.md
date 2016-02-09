---
title: Flood Monitoring API
author: fiskur
layout: post
permalink: /flood_monitoring_api
ample_page_layout:
  - default_layout
slide_template:
  - default
categories:
  - android
---
The library I used to create both the [Flood Alerts](https://play.google.com/store/apps/details?id=eu.fiskur.floodmonitor) and [River Levels](https://play.google.com/store/apps/details?id=eu.fiskur.riverlevels) apps is available on Github: [fiskurgit/FloodMonitoring](https://github.com/fiskurgit/FloodMonitoring).

Full details are on the [Github readme](https://github.com/fiskurgit/FloodMonitoring/blob/master/README.md) but it's an Android library (available as a maven dependency thanks to [jitpack.io](https://jitpack.io/)), the web service calls are made with [Retrofit](http://square.github.io/retrofit/) and returned to the implementation using [RxJava](https://github.com/ReactiveX/RxJava). There's still work to do on the library but it's in a usable state (it doesn't currently handle stations that have both upstream and downstream gauges, and doesn't differentiate tidal and non-tidal gauges).
