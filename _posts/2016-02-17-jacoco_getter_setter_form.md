---
title: Jacoco Getter/Setter Form
author: fiskur
layout: post
permalink: /jacoco_getter_setter_form
ample_page_layout:
  - default_layout
slide_template:
  - default
categories:
  - android
---
I've been adding [codecov.io](https://codecov.io) to both work and personal projects and one thing I've found is that the amount of [Pojos](https://en.wikipedia.org/wiki/Plain_Old_Java_Object) associated with modern client-server apps (due to serialising JSON) skew the code-coverage percentage, the huge amount of getters and setters bring the score down. There's plenty of discussion about [whether you should bother or not](http://stackoverflow.com/questions/6197370/should-unit-tests-be-written-for-getter-and-setters) but I'm not happy about my public libraries showing low percentage scores, even if I know the crucial parts of the codebase have appropriate coverage it still looks bad to have a low-scoring badge on a project homepage. The de facto standard code-coverage tool on Android is [Jacoco](https://github.com/jacoco/jacoco), and unfortunately they don't have the ability to annotate classes and/or methods and have them excluded from the reports, [see the discussion here](Filtering options for coverage analysis).

To keep the percentage scores reflective of actual 'real' unit test coverage I've been adding a basic/semi-useless test for each pojo so that all the getters and setters are covered:
<script src="https://gist.github.com/fiskurgit/cdfca240d9b387d6a15b.js"></script>

Doing this by hand is tedious so I've created a simple web app to generate the test, just paste your class in and some terribly written Javascript will attempt to figure out your getters and setters and spit out the setters, and Asserts plus getters:

{% include jacoco.html %}
