---
title: PHP Source for hexcol.net
author: fiskur
layout: post
permalink: /php-source-for-hexcol-net
panels_data:
  - 'a:0:{}'
videourl:
  - 
categories:
  - web
---
Source code that runs <a href="http://hexcol.net" target="_blank">hexcol.net</a> &#8211; it&#8217;s a tool that displays colours passed as a <a href="http://en.wikipedia.org/wiki/Web_colors#Hex_triplet" target="_blank">hex triplet</a>. A friend helped set up the server to redirect all paths to the root php file using mod_rewrite (so arguments can be passed as hexcol.net/ff00c instead of hexcol.net/?ff00cc), the rest was then assembled with the help of various <a href="http://stackoverflow.com/" target="_blank">stack overflow</a> searches and the <a href="http://php.net/docs.php" target="_blank">php docs</a>. The cool bit is where a custom favicon is created dynamically from the colour code.

<!--more-->