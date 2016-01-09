---
layout: post
title:  "Ignore New Relic Page Transaction"
date:   2014-04-13 22:20:11 +0000
categories: newrelic
---

NewRelic will, by default, log every page request as a transaction. This can lead to skewed results on pages that have long running requests, such as crons.

To stop New Relic logging that transaction, simply place the following code on the action / top of the PHP file:

{% highlight php %}
<?php
if (extension_loaded('newrelic')) {
    newrelic_ignore_transaction();
}
?>
{% endhighlight %}
