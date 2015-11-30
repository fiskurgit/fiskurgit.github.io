---
title: 'Delaunay Rising &#8211; Processing sketch'
author: fiskur
layout: post
permalink: /delaunay-rising-processing-sketch
panels_data:
  - 'a:0:{}'
videourl:
  - 
categories:
  - processing
---
Source-code for Delaunay based animation. There&#8217;s a couple of really nice UI features shown on the <a href="http://www.kickstarter.com/projects/cargo/brewbot-the-smart-brewing-appliance" target="_blank">Kickstarter video for Brewbot</a>, here I&#8217;ve attempted to do the same in Processing. The code is pretty simple, there&#8217;s a bunch of marching points and we reduce the y value each frame so they float upwards, once they&#8217;re out of view we recycle them off the bottom of the screen by a random amount. The colour of the triangles is dictated by the y value in such a way that they fade to white the higher up the screen they go.

<!--more-->

  


The Delaunay Triangulation is handled by the Processing Triangulaion library: <a href="http://wiki.processing.org/w/Triangulation" target="_blank">wiki.processing.org/w/Triangulation</a>