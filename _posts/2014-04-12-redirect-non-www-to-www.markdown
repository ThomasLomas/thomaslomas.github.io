---
layout: post
title:  "Redirect non-WWW to WWW"
date:   2014-04-12 22:43:43
---

To redirect WWW to non-WWW simply put the following in your .htaccess file:

{% prism http %}
RewriteEngine On
RewriteCond %{HTTP_HOST} !^www\.
RewriteRule ^(.*)$ http://www.%{HTTP_HOST}/$1 [R=301,L]
{% endprism %}