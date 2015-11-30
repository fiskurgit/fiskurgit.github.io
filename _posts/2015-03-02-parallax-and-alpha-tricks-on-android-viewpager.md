---
title: Parallax and Alpha tricks on Android ViewPager
author: fiskur
layout: post
permalink: /parallax_and_alpha_tricks_on_android_viewpager
slide_template:
  - default
featured_image_placing:
  - default
post_image_size:
  - inherit
header_position:
  - absolute
header_spacing:
  - 
heading_title:
  - 0
custom_logo:
  - 
custom_logo_width:
  - 
custom_menu_skin:
  - default
sticky_menu_on_page:
  - default
page_custom_css:
  - 
ample_page_layout:
  - no_sidebar_full_width
categories:
  - android
---
Google&#8217;s latest Android apps include a really slick &#8216;Product Tour&#8217; on first run which introduces the product, they&#8217;ve got some beautiful UI touches including smooth cross-fading backgrounds, subtle parallax scrolling, a clean footer with a simple circle indicator, and when you scroll the last page the tutorial fades to transparent revealing the app underneath:  
<!--more-->

  
<img src="http://fiskur.eu/wp-content/uploads/2015/03/1425302624.png" alt="1425302624" width="320" height="569" /><img src="http://fiskur.eu/wp-content/uploads/2015/03/1425302634.png" alt="1425302634" width="320" height="569" />

Here&#8217;s the product tour in our own <a href="https://play.google.com/store/apps/details?id=eu.fiskur.penninewaydistancecalculator" target="_blank">Pennine Way app</a>, it includes all the same transitions:



The full Activity source is below, it has a simple ViewPager indicator rather than using a library, look at the ViewPager.PageTransformer implementation CrossfadePageTransformer which is where all the alpha/crossfade and parallax transitions happen:

The TutorialActivity layout, which includes the footer, also note the root background which makes the Activity transparent for the last ViewPager slide:

The TutorialPane Fragment has no logic, it just displays the layout: