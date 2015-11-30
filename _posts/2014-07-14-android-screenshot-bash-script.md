---
title: Android Screenshot Bash Script
author: fiskur
layout: post
permalink: /android-screenshot-bash-script
videourl:
  - 
ample_page_layout:
  - no_sidebar_full_width
slide_template:
  - default
categories:
  - android
---
If you make apps and work in a consultancy you&#8217;ll probably be used to taking a screenshot on-device with the power and volume keys pressed, then emailing them to yourself, downloading, and scaling them down to a smaller size before sending them on. 

This little script does it all for you (if you&#8217;re on OSX):

<script src="https://gist.github.com/fiskurgit/ed98b0bf83f2384a406a.js"></script>

Just put the script somewhere suitable, edit the permissions to make it executable (`chmod u+x screenshot.sh`), attach your device via USB, make sure it&#8217;s debuggable, then run the script. The Android SDK comes with **adb** (*android debug bridge*) which allows you to take and grab the screenshot, then Apple&#8217;s own **sips** (*scriptable image processing system* [full guide here][1]) takes the image file and scales it down to 270 pixels wide (while maintaining the image ratio).

 [1]: https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man1/sips.1.html