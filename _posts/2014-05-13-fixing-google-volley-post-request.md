---
title: Fixing Google Volley POST Request
author: fiskur
layout: post
permalink: /fixing-google-volley-post-request
videourl:
  - 
panels_data:
  - 'a:0:{}'
categories:
  - android
---
We&#8217;ve just come across a problem submitting a POST request to a 3rd party service, while inspecting the http requests we found that Google Volley was appending the &#8216;&#038;&#8217; separator to the last name/value pair in the post body<!--more-->, the service wasn&#8217;t handling this elegantly and threw a server exception. Here&#8217;s the original method from Request.java:

<script src="https://gist.github.com/fiskurgit/1bb7139d21c4b3db82ec.js"></script>

and here's our amended method that correctly builds the name/value pairs:

<script src="https://gist.github.com/fiskurgit/9c21a55cb015065222b8.js"></script>