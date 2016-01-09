---
layout: post
title:  "Redirect non-WWW to WWW"
date:   2014-04-12 22:20:11 +0000
categories: htaccess
---

To redirect WWW to non-WWW simply put the following in your .htaccess file:

{% highlight http %}
RewriteEngine On
RewriteCond %{HTTP<em>HOST} !^www.
RewriteRule ^(.*)$ http://www.%{HTTP</em>HOST}/$1 [R=301,L]
{% endhighlight %}
