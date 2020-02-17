---
layout: post
title:  "Truncate String (Character Limiter)"
date:   2014-04-13 22:20:11 +0000
categories: php
excerpt_separator: <!--more-->
---

When displaying long pieces of user-definable text, it is sometimes useful to truncate it down into a smaller chunk for displaying in a fixed sized area.

<!--more-->

This can be achieved with the following function:

{% highlight php %}
<?php
function truncate($text, $length) {
    if(strlen($text) <= $length) return $text;
    return substr($text, 0, $length) . '...';
}
?>
{% endhighlight %}

## Example Usage

### Code

{% highlight php %}
<?php
echo truncate('This is a very long piece of text', 9);
?>
{% endhighlight %}

### Returns

_This is a..._