---
title: Estimote Temperature App for Android Part 1
author: fiskur
layout: post
permalink: /estimote-temperature-app-for-android
panels_data:
  - 'a:0:{}'
videourl:
  - 
categories:
  - android
---
Project &#8211; update the firmware on some old [Estimote][1] iBeacons to use the temperature sensor and build an Android app to tell me what the weather&#8217;s doing outside my house.

I purchased a pack of three Estimote beacons when they first appeared nearly a year ago, after doing a couple of proof-of-concept apps on Android and some R&#038;D at [Degree53][2] to see if trilateration using beacons is feasible (it isn&#8217;t) they&#8217;ve sat unused on a shelf. All the Estimotes that ever shipped contain hardware for sensing temperature and movement, but it&#8217;s been locked away without software support until [April when Estimote released a firmware upgrade][3]. 

<img src="http://fiskur.eu/wp-content/uploads/2014/07/dead_estimotes.jpg" alt="dead_estimotes" width="679" height="509" class="alignnone size-full wp-image-279" />  
<!--more-->

Estimotes were supposed to have a battery life of two years but my units are dead&#8230; I finally found [this blog][4] which in a roundabout way admits the units they shipped will die long before two years is out.

> The default interval setting for Estimote beacons shipped so far has been 200 ms. We have discovered that this is too short for typical applications

So, for the moment, I&#8217;m stuck and will need to [replace the batteries][5]. Although it looks like the easiest way into an Estimote is through the base don&#8217;t try this, they&#8217;re too well made, the best method is to slice the top off with a hobby knife, then reattach with a glue that&#8217;ll work with silicon rubber.

<img src="http://fiskur.eu/wp-content/uploads/2014/07/opened_estimotes.jpg" alt="opened_estimotes" width="679" height="509" class="alignnone size-full wp-image-282" />

The way iBeacons work on iOS is battery efficient, you tell the OS which beacon IDs you&#8217;re interested in and the OS wakes up your app when one comes into range. Unfortunately [iBeacons are an Apple initiative][6], therefore the same support might not ever be present on Android. On Android you need to have a Service constantly listening for beacons which is not great for the battery &#8211; and if a user has several apps that support iBeacons they&#8217;ll be running several Services each running a Bluetooth instance and scanning for devices, the battery wouldn&#8217;t last more than half a day.

A better strategy for Android is to make use of [Geofences][7]. Set up a geofence around where your beacons are located, then when the users enters the region start up a Service to scan, when the user exits just close it to save battery. 

For the the app I want to build I&#8217;ll simply use the [AlarmManager][8] class to start up the Bluetooth logic and scan for my Estimotes before my morning alarm (and/or on demand), so when I wake up I can get an accurate idea of the temperature outside.

I&#8217;ll post a new blog once the batteries have arrived and my beacons are up and running again&#8230;

 [1]: http://estimote.com/
 [2]: http://degree53.com
 [3]: http://blog.estimote.com/post/81380655308/estimote-sdk-updated-with-accelerometer-and-temperature
 [4]: http://blog.estimote.com/post/83618039493/how-to-extend-estimote-beacon-battery-life
 [5]: http://beekn.net/2013/11/whats-inside-an-estimote/
 [6]: https://developer.apple.com/ibeacon/
 [7]: http://developer.android.com/training/location/geofencing.html
 [8]: http://developer.android.com/reference/android/app/AlarmManager.html