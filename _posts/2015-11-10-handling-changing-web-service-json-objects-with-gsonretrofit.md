---
title: Handling Changing Web Service JSON Objects with GSON/Retrofit
author: fiskur
layout: post
permalink: /changing_web_service_objects_with_retrofit
ample_page_layout:
  - default_layout
slide_template:
  - default
categories:
  - android
---
I&#8217;ve been working with a web service that&#8217;s usually returning a particular field as a *String*, but sometimes as a *String* array:

<pre>"label": "WESTHAMPNETT MILL RL",

...

"label": [
    "BARDNEY GS",
    "Bardney"
],</pre>

This causes <a href="https://github.com/google/gson" target="_blank">GSON</a> to throw an exception, here&#8217;s how to handle buggy services that have JSON fields that change type:

Firstly create an object to replace the *String*, which is also occasionally a *String[]*, that can hold either:



Next create your POJO for the GSON serialization as usual, but for the offending field use the RemedialStringType:



Now when GSON encounters the field named ***label*** with the declared type *RemedialStringType* it needs to be told how to serialize the JSON to a <a href="https://en.wikipedia.org/wiki/Plain_Old_Java_Object" target="_blank">POJO</a>, create a custom TypeAdapter for our new type:



and finally when building the Retrofit interface use a custom GSON instance: