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

{% highlight javascript %}
"label": "WESTHAMPNETT MILL RL",

//...

"label": [
    "BARDNEY GS",
    "Bardney"
]
{% endhighlight %}

This causes <a href="https://github.com/google/gson" target="_blank">GSON</a> to throw an exception, here&#8217;s how to handle buggy services that have JSON fields that change type:

Firstly create an object to replace the *String*, which is also occasionally a *String[]*, that can hold either:

<script src="https://gist.github.com/fiskurgit/ba25bf281c58bc79773d.js"></script>

Next create your POJO for the GSON serialization as usual, but for the offending field use the RemedialStringType:

<script src="https://gist.github.com/fiskurgit/d2bf2ea52e77ae43022b.js"></script>

Now when GSON encounters the field named ***label*** with the declared type *RemedialStringType* it needs to be told how to serialize the JSON to a <a href="https://en.wikipedia.org/wiki/Plain_Old_Java_Object" target="_blank">POJO</a>, create a custom TypeAdapter for our new type:

<script src="https://gist.github.com/fiskurgit/db551ad8275d8ae3d492.js"></script>

and finally when building the Retrofit interface use a custom GSON instance:

<script src="https://gist.github.com/fiskurgit/44e27925579da7e0fdea.js"></script>