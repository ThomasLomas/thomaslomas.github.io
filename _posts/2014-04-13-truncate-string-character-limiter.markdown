---
layout: post
title:  "Truncate String (Character Limiter)"
date:   2014-04-13 14:49:43
---

When displaying long pieces of user-definable text, it is sometimes useful to truncate it down into a smaller chunk for displaying in a fixed sized area.

This can be achieved with the following function:

{% prism php %}
function truncate($text, $length) {
	if(strlen($text) <= $length) return $text;
	return substr($text, 0, $length) . '...';
}
{% endprism %}

## Example Usage

### Code

{% prism php %}
echo truncate("This is a very long piece of text", 9);
{% endprism %}

### Returns

This is a...