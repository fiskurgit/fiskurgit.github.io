---
title: Raspberry Pi Net Radio
author: fiskur
layout: post
permalink: /raspberry-pi-net-radio
videourl:
  - 
ample_page_layout:
  - no_sidebar_full_width
slide_template:
  - default
categories:
  - rapberrypi
---
I listen to [NTS Radio][1] a lot while working, and I&#8217;ve got an old [Raspberry Pi][2] that doesn&#8217;t get much use so I&#8217;m going to create a simple net-radio with nothing but an on/off switch. To accomplish this we need to get the Raspberry Pi to automatically play an audio stream on start-up, and also safely shutdown at the flip of a switch.

It&#8217;s a good idea to set up the Raspberry Pi so you can [access via SSH][3] and do all the work from your normal computer (full guide [here][4]. This blog assumes you&#8217;re using [Raspbian][5] and booting to desktop, the same concepts apply to other setups though.

<img src="http://fiskur.eu/wp-content/uploads/2014/07/mausberry_connected.jpg" alt="mausberry_connected" width="679" height="509" class="alignnone size-full wp-image-302" />  
<!--more-->

**Step 1** &#8211; Firstly we need to get the RaspberryPi playing a remote audio stream, to do this install [VLC][6] (updating apt-get first):

    sudo apt-get update
    sudo apt-get install vlc

Once installed check vlc is working correctly (cvlc is the console version of vlc);

`cvlc http://134.213.27.207:8000/stream`

If you don&#8217;t get any audio (even when it does work it&#8217;ll print out some red error logs) the most likely cause is that the wrong output device is configured (default is HDMI), try:

`sudo amixer cset numid=3 1`

You can switch back using: 0 for auto, 1 for headphone jack, 2 for hdmi.

**Step 2** &#8211; Play the stream automatically when the Raspberry Pi starts-up. Raspbian will look for an autostart directory on start-up, so we need to create it and add an entry:

    mkdir /home/pi/.config/autostart
    nano /home/pi/.config/autostart/autovlc.desktop

In Nano enter the following:

    [Desktop Entry] 
    Type=Application
    Exec=cvlc http://134.213.27.207:8000/stream

Then restart and hopefully the stream will play:

`sudo reboot`

Note. while testing when the Raspberry Pi restarts you can shutdown VLC by connecting again via SSH and running `pkill vlc`.

**Step 3** &#8211; Safely turn off the Raspberry Pi from a switch. If you just pull out the USB power supply to turn the device off you risk corrupting Rasbian. To turn off the Pi without using SSH I bought a switch from [Mausberry Circuits][7], the setup guide is [here][8].

<img src="http://fiskur.eu/wp-content/uploads/2014/07/mausberry_switch.jpg" alt="mausberry_switch" width="679" height="509" class="alignnone size-full wp-image-303" />

**Step 4** &#8211; build a box&#8230;

 [1]: http://ntslive.co.uk/
 [2]: http://www.raspberrypi.org/
 [3]: http://www.raspberrypi.org/documentation/remote-access/ssh/
 [4]: https://www.modmypi.com/blog/remotely-accessing-the-raspberry-pi-via-ssh-console-mode
 [5]: http://www.raspbian.org/
 [6]: http://www.videolan.org/vlc/
 [7]: http://mausberry-circuits.myshopify.com/products/direct-plug-shutdown-switch-with-rocker
 [8]: http://mausberry-circuits.myshopify.com/pages/setup