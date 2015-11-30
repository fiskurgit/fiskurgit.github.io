---
title: Creating a gradient tool
author: fiskur
layout: post
permalink: /creating-a-gradient-tool-highschool-algebra
panels_data:
  - 'a:0:{}'
videourl:
  - 
categories:
  - android
  - processing
---
Simple algebra to create effects along a gradient. I thought of a nice new feature for the Delaunay Android app, the app &#8216;polygonises&#8217; pictures by overlaying triangles onto a photo, I guessed it&#8217;d look good if the opacity could be controlled in a similar way to a gradient tool in a drawing application. Having the user tap once to mark the start of the gradient and again to mark the end is easy, but the gradient could be at any angle across the screen, to calculate the opacity for a triangle/point we need to use some basic algebra &#8211; I say basic; I did struggle a little with this, and there may be better ways of doing it.

In the <a href="http://processing.org" target="_blank">processing</a> code below there are 5 points, and a line representing a linear gradient tool created by the user. The code calculates the opacity for each point based on its relation to the gradient vector.

<!--more-->

  
<img class="alignnone size-medium wp-image-7" alt="grad-0109" src="http://fiskur.eu/wp-content/uploads/2013/12/grad-0109-300x300.png" width="250" height="250" /><img class="alignnone size-medium wp-image-6" alt="grad-0071" src="http://fiskur.eu/wp-content/uploads/2013/12/grad-0071-300x300.png" width="250" height="250" /><img class="alignnone size-medium wp-image-5" alt="grad-0205" src="http://fiskur.eu/wp-content/uploads/2013/12/grad-0205-300x300.png" width="250" height="250" />



Here&#8217;s an example of the code running in the Delaunay Android app, two gradient controls &#8211; controlling the fill and wireframe opacity:

<img class="alignnone  wp-image-9" alt="10052591823_1ca49e1940" src="http://fiskur.eu/wp-content/uploads/2013/12/10052591823_1ca49e1940.jpg" width="320" height="320" />