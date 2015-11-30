---
title: Plotting a Double Helix Path
author: fiskur
layout: post
permalink: /plotting-a-double-helix-path
videourl:
  - 
ample_page_layout:
  - no_sidebar_full_width
slide_template:
  - default
categories:
  - processing
---
After ordering a <a href="http://www.bitcraze.se/crazyflie-2/" target="_blank">Crazyflie 2 drone</a> I started thinking about how cool it&#8217;d be to have two flying in formation. Here&#8217;s the maths if you wanted to plot a double helix in 3D space.

If you think about a helix/spiral path an object is moving in a circle with a change in height, so we just need to plot a circle in two planes and increment a third. Using <a href="https://processing.org/" target="_blank">Processing</a>, let&#8217;s draw a circle in 2D using the <a href="http://www.mathopenref.com/coordcirclealgorithm.html" target="_blank">parametric equation</a> (<a href="http://www.openprocessing.org/sketch/179365" target="_blank">view the code running on OpenProcessing</a>):

<img src="http://fiskur.eu/wp-content/uploads/2014/12/Screen-Shot-2014-12-29-at-09.58.45.png" alt="Screen Shot 2014-12-29 at 09.58.45" width="498" height="499" class="size-full wp-image-637" />

<script src="https://gist.github.com/fiskurgit/80fc7d4892f430bd2711.js"></script>

Now we have the maths to draw a circle all we need to do is to convert that sketch to 3D and change the height over time, add a second path and you have a double helix (<a href="http://www.openprocessing.org/sketch/179366" target="_blank">view the code running on OpenProcessing</a>):

<img src="http://fiskur.eu/wp-content/uploads/2014/12/Screen-Shot-2014-12-29-at-09.57.41.png" alt="Screen Shot 2014-12-29 at 09.57.41" width="498" height="499" class="size-full wp-image-640" />

<script src="https://gist.github.com/fiskurgit/2fabdc3bca625f11caf6.js"></script>