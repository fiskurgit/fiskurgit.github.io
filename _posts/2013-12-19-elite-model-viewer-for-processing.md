---
title: Elite Model Viewer for Processing
author: fiskur
layout: post
permalink: /elite-model-viewer-for-processing
panels_data:
  - 'a:0:{}'
videourl:
  - 
categories:
  - processing
---
View all the old Elite ship models. <a href="http://en.wikipedia.org/wiki/Elite_(video_game)" target="_blank">Elite</a> is an early 3D game from 1984, one of the creators has an <a href="http://www.iancgbell.clara.net/elite/archive/index.htm" target="_blank">archive of old files</a> available including the <a href="http://www.iancgbell.clara.net/elite/archive/a/b5052480.zip" target="_blank">model geometries from the </a><a href="http://en.wikipedia.org/wiki/Acorn_Archimedes" target="_blank">Archimedes port</a> written in C.  
I created a script to parse this C source and spit out a <a href="http://processing.org/" target="_blank">processing sketch</a> that cycles through the models when you click the mouse, a separate file holds the model geometries, it&#8217;s 7425 lines long so I&#8217;ve not embedded it here, <a href="https://gist.github.com/fiskurgit/7229079" target="_blank">get it at Github</a>.

<!--more-->

  
<img class="alignnone size-large wp-image-82" alt="elitescreenshot" src="http://fiskur.eu/wp-content/uploads/2013/12/elitescreenshot-1024x266.png" width="720" height="187" />