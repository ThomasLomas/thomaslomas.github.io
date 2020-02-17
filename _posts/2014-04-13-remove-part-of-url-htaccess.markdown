---
layout: post
title:  "Removing part of the URL with .htaccess"
date:   2014-04-13 22:20:11 +0000
categories: htaccess
excerpt_separator: <!--more-->
---

Recently we changed URLs on a website from _/p/category/product_ to just _/category/product_. This meant that we had to 301 redirect the old URLs to prevent Google results from returning a 404 error and to also let Google know that the page has permanently changed URL as to update their search indexes.

<!--more-->

By adding the following lines to the .htaccess file in the web root it achieved this.

{% highlight http %}
RewriteEngine On
RewriteRule ^p/(.+)$ /$1 [L,R=301,NC,NE]
{% endhighlight %}
