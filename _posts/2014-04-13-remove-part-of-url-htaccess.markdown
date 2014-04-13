---
layout: post
title:  "Removing part of the URL with .htaccess"
date:   2014-04-13 14:56:43
---

Recently we changed URLs on a website from /p/*category*/*product* to just /*category*/*product. This meant that we had to 301 redirect the old URLs to prevent Google results from returning a 404 error and to also let Google know that the page has permanently changed URL as to update their search indexes.

By adding the following lines to the .htaccess file in the web root it achieved this.

{% prism http %}
RewriteEngine On
RewriteRule ^p/(.+)$ /$1 [L,R=301,NC,NE]
{% endprism %}