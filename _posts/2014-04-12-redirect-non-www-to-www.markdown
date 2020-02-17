---
layout: post
title:  "Redirect non-WWW to WWW"
date:   2014-04-12 22:20:11 +0000
categories: htaccess
excerpt_separator: <!--more-->
---

To redirect WWW to non-WWW simply put the following in your .htaccess file:

<!--more-->

{% highlight http %}
RewriteEngine On
RewriteCond %{HTTPHOST} !^www.
RewriteRule ^(.*)$ http://www.%{HTTPHOST}/$1 [R=301,L]
{% endhighlight %}
