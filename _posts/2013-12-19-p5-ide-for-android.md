---
title: P5 IDE for Android
author: fiskur
layout: post
permalink: /p5-ide-for-android
panels_data:
  - 'a:0:{}'
videourl:
  - 
categories:
  - android
  - processing
---
IDE for developing and viewing Processing sketches.

See <a href="http://processingjs.org" target="_blank">processingjs.org</a> and <a href="http://processing.org" target="_blank">processing.org</a> for more details about ProcessingJS/Processing.

  * Run the sketch in-app
  * Syntax highlighting
  * Code tidy-up/indent
  * Code keyboard with visibility toggle
  * Open/Save sketches on SDCard
  * Download remote sketches
  * Share code with other applications
  * New sketch opens with basic template

For 3D/WebGL sketches make sure you have Firefox installed and choose &#8216;Launch sketches in external browser&#8217; in the Options screen, then when running the sketch choose Firefox and select Always.

[Download on Google Play][1]

<!--more-->

  
<img src="http://fiskur.eu/wp-content/uploads/2013/12/Screenshot_2013-08-30-09-18-05.png" alt="Screenshot_2013-08-30-09-18-05" width="288" height="480" class="alignnone size-full wp-image-58" />&nbsp;<img src="http://fiskur.eu/wp-content/uploads/2013/12/Screenshot_2013-08-30-09-18-19.png" alt="Screenshot_2013-08-30-09-18-19" width="288" height="480" class="alignnone size-full wp-image-59" />  
<img src="http://fiskur.eu/wp-content/uploads/2013/12/Screenshot_2013-08-30-09-18-29.png" alt="Screenshot_2013-08-30-09-18-29" width="288" height="480" class="alignnone size-full wp-image-60" />&nbsp;<img src="http://fiskur.eu/wp-content/uploads/2013/12/Screenshot_2013-08-30-09-18-42.png" alt="Screenshot_2013-08-30-09-18-42" width="288" height="480" class="alignnone size-full wp-image-61" />

[![Get it on Google Play][2]][1]

A brief summary of how the app was built. ProcessingJS is a port of Processing to Javascript, I&#8217;d already created a code editor for the <a href="http://fiskur.eu/blog/android/20130819.html" target="_blank">JSON application</a> so by adding a WebView thought it should be possible to create a pretty decent IDE experience on Android. When you click the &#8216;run&#8217; ActionBar icon the source String from the coding EditText is added as an Extra to an intent which is then used to start the SketchActivity class (which contains the WebView):



Unfortunately the Android WebView doesn&#8217;t currently support WebGL, this means any sketches that use 3D features won&#8217;t run, to get arround this I&#8217;ve added a feature where the sketch can be run in an external browser instead. Chrome Beta supports WebGL but won&#8217;t open a file passed as a Uri in an Intent, Firefox will though.

For security reasons when opening local files browsers won&#8217;t allow local files to be referenced, though we can get around that in the webview by using:`webview.getSettings().setAllowUniversalAccessFromFileURLs(true);`To solve this we have to pull in both referenced files (the Processing .js file and the sketch.pde) and inline them into a flattened html file. To make this simpler I packaged a template.html file containing processing.js inline, then append the sketch code, and finally add the closing html tags.

This flattened file is written to the SDCard and the Uri added to an Intent &#8211; it works well and feels seamless (to a point, some WebGL sketces don&#8217;t run, and some code that runs fine on a Nexus4 fails on the Nexus 7).

 [1]: https://play.google.com/store/apps/details?id=com.fiskur.p5
 [2]: https://developer.android.com/images/brand/en_generic_rgb_wo_45.png