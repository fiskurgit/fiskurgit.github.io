---
title: Blog
author: fiskur
layout: default
permalink: /blog
---

{% for post in site.posts %}
        {{ post.date | date: "%d/%m/%Y" }} <a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a><br>
{% endfor %}
