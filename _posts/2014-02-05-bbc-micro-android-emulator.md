---
title: BBC Micro Android Emulator
author: fiskur
layout: post
permalink: /bbc-micro-android-emulator
panels_data:
  - 'a:0:{}'
videourl:
  - 
categories:
  - android
  - bbc micro
---
BBC Micro emulation on Android done the right way, build from source available on Github

<!--more-->

**Note. I&#8217;ve removed this app from Google Play ([you can still download it on the products page though][1])**

In order to run a 30 year old BBC Basic program (<a href="http://fiskur.eu/?p=127" target="_blank">see the Braille story</a>) I needed to either buy an original BBC Micro or look into emulation. I found an application called <a href="https://play.google.com/store/apps/details?id=com.littlefluffytoys.beebdroid" target="_blank">Beebdroid</a> from <a href="http://www.littlefluffytoys.mobi/" target="_blank">Little Fluffy Toys</a>, it&#8217;s an open source project <a href="https://github.com/littlefluffytoys/Beebdroid" target="_blank">hosted on Github</a>. I didn&#8217;t like typing on the tiny BBC keyboard they&#8217;d created so looked into using the standard Android soft keyboard. This was achieved by having an invisible EditText with a TextWatcher (<a href="https://github.com/fiskurgit/bbcmicro/blob/master/src/com/littlefluffytoys/beebdroid/Beebdroid.java" target="_blank">inspect the source on Github</a>), it&#8217;s a pretty hacky solution but works well &#8211; there&#8217;s no key repeat though, so it&#8217;s useless for most games (use a Bluetooth keyboard instead).

<img class="alignnone size-full wp-image-167" src="http://fiskur.eu/wp-content/uploads/2014/02/Screenshot_2014-02-05-15-04-00.png" alt="Screenshot_2014-02-05-15-04-00" width="303" height="550" />     <img class="alignnone size-full wp-image-166" src="http://fiskur.eu/wp-content/uploads/2014/02/Screenshot_2014-02-04-18-44-47.png" alt="Screenshot_2014-02-04-18-44-47" width="303" height="550" />

As well as introducing the soft keyboard I removed a lot of code from Beebdroid to do with custom on-screen keypads, refactored a fair amount of code, and fixed a little issue with OpenGL on API 14 and newer; if you want to work with Beebdroid as a base for BBC Micro emulation you might find it easier to <a href="https://github.com/fiskurgit/bbcmicro/" target="_blank">clone this project</a>.

> Excellent A vast improvement on Beebdroid. Well done Fiskur for modernising this emulator, the inclusion of Google drive brings fun & usability that was missing in Beebdroid. Good work! &#8211; Google Play review

I added a feature that will open a text file and automatically type the lines into the emulator, the idea is you can write your BBC Basic on a modern computer then save the file to your device instead of trying to type your programs out on a phone (remember the whole point of this project is to get some 30 year old code running again from an old daisy-wheel printout). Here&#8217;s a video of the first auto-typing test:



[BBC Micro emulator &#8211; load basic from file][2] from [Jonathan Fiskur][3] on [Vimeo][4].

You can also load disk images, the app will auto-boot them. As mentioned earlier games won&#8217;t perform well with the soft keyboard, but if you use a Bluetooth keyboard it&#8217;s perfect, exactly the same as playing on an original BBC Micro. Here&#8217;s the app running Chuckie Egg, with a Bluetooth keyboard and a Slimport HDMI adapter to my TV:

<img class="alignnone size-full wp-image-168" src="http://fiskur.eu/wp-content/uploads/2014/02/chuck12327123444_c5b1436a08_c.jpg" alt="chuck12327123444_c5b1436a08_c" width="800" height="1200" />

To get fullscreen, minimise the keyboard in portrait mode, then switch the device to landscape &#8211; all system chrome will disappear (battery level, notifications, etc etc). In portrait mode you can get the keyboard to show again by tapping the screen. In order to give the best possible UX you can remap the BBC Micro keys to any on your Bluetooth keyboard, there&#8217;s also a shortcut key that&#8217;ll load the files chooser &#8211; you can switch disks/games without leaving the hardware keyboard.

 [1]: http://fiskur.eu/?page_id=401
 [2]: http://vimeo.com/85711035
 [3]: http://vimeo.com/user21603195
 [4]: https://vimeo.com