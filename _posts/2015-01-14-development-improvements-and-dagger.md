---
title: Android Development with Dagger
author: fiskur
layout: post
permalink: /development-improvements-and-dagger
videourl:
  - 
ample_page_layout:
  - no_sidebar_full_width
slide_template:
  - default
categories:
  - android
---
Post for the <a href="http://www.degree53.com/blog/2015/january/android-development-with-dagger" target="_blank">Degree 53 blog</a>:

We&#8217;ve been looking at ways to improve how we develop our Android apps, in the last couple of years we&#8217;ve improved our processes a great deal which has resulted in apps being delivered on time/budget and with fewer issues. Our customers have large services which are deployed in multiple environments (Test/PreProd, Debug, HiddenLive, Live for example) so we need to create multiple builds of an app to target different endpoints, we do this using a build server (<a href="http://www.thoughtworks.com/products/go-continuous-delivery" target="_blank">Thoughtworks Go</a>) together with custom <a href="http://tools.android.com/tech-docs/new-build-system/user-guide" target="_blank">Gradle</a> scripts to change the app configs (using <a href="http://tools.android.com/tech-docs/new-build-system/build-system-concepts" target="_blank">Build Flavours</a>), this is a great improvement on the old error-prone manual process and it&#8217;s a single step from committing a tag to Git to generating shippable binaries (<a href="http://www.joelonsoftware.com/articles/fog0000000043.html" target="_blank">see the Joel Test</a>). There&#8217;s still one clear area where we can improve; like lots of Android developers our code often isn&#8217;t easy to test.

<!--more-->

Relying too much on Singletons makes it difficult to unit test code, it essentially creates a global state: state changes made to the singleton when testing Feature A will still be present when testing Feature B. This is a violation of the <a href="https://en.wikipedia.org/wiki/Single_responsibility_principle" target="_blank">Single Responsibility Principle</a> which has led singletons to be labelled an anti-pattern (I disagree, but they are overused). At its simplest <a href="http://en.wikipedia.org/wiki/Dependency_injection" target="_blank">Dependency Injection</a> can just be a pattern to enforce that minimises hard dependencies and encourages smaller classes that are easier to test.

a simple class with a hard-coded dependency:

{% highlight java %}
public class MyClass {
	private ServiceHelper serviceHelper;

	MyClass(){
		serviceHelper = new ServiceHelper();
	}
}
{% endhighlight %}

and the same class with constructor injection:

{% highlight java %}
public class MyClass {
	private ServiceHelper serviceHelper;
	
	MyClass(ServiceHelper serviceHelper){
		this.serviceHelper = serviceHelper;
	}
}
{% endhighlight %}

For larger components we&#8217;ve been looking at using <a href="http://square.github.io/dagger/" target="_blank">Dagger</a> to help us easily use dummy providers for services and data: if a web service isn&#8217;t ready we can create a mock service class that runs locally on the device and returns hard-coded test data without needing a network request, this also means we can create automated tests without having to set up any state; we don&#8217;t need to first fetch a user token to enable a connection to a server to return some data to test how some UI behaves, the test will just use our dummy service. 

Talks on Dagger from the [developers of Dagger at Square][1]: 

  * <a href="https://www.parleys.com/play/529bde2ce4b0e619540cc3ae/chapter0/about" target="_blank">Architecting Android Applications with Dagger</a>
  * <a href="http://www.infoq.com/presentations/Dagger" target="_blank">Dagger: A Fast Dependency Injector for Android and Java</a>

The second presentation gives a clearer overview, the first has a lot of detail but is a little heavy. A key point made in the presentations is to not overuse Dagger, we&#8217;ll only be using it for dependencies that differ between environments, and for debug and test classes. This is also important because as mentioned in one of the talks: Dagger might be simple, but it&#8217;s not necessarily easy; dependency inversion requires a more abstract way of looking at your code. As I couldn&#8217;t find a simple example that showed Dagger in use (other examples were either incomplete, or far too complicated) I&#8217;ve uploaded an <a href="https://github.com/Degree53/AndroidDaggerExample" target="_blank">Android Studio project to Github</a>, it creates two builds of a simple app that uses a different implementation of an abstract class to return a string for a label.

In the example we make use of <a href="http://tools.android.com/tech-docs/new-build-system/user-guide#TOC-Build-Types" target="_blank">Android&#8217;s Gradle Build Types</a>, in the Debug build type there&#8217;s an extra `DebugModule` that has `overrides = true` added to the @Module annotation, the `provideFileContents()` method in this module overrides the default `DaggerExampleModule` in the main build type and returns our debug implementation of the `AbstractLabelService`, this way we can easily use custom classes for different build types (and build flavours). 

Download the project below, and follow Degree 53 for future updates:

<a class="github-button" href="https://github.com/Degree53/AndroidDaggerExample/archive/master.zip" data-icon="octicon-cloud-download" data-style="mega">Download</a>&nbsp;&nbsp;<a class="github-button" href="https://github.com/Degree53" data-style="mega">Follow @Degree53</a>

 [1]: http://square.github.io/