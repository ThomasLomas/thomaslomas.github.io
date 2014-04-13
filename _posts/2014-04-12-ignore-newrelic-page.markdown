---
layout: post
title:  "Ignore New Relic Page Transaction"
date:   2014-04-13 14:31:43
---

NewRelic will, by default, log every page request as a transaction. This can lead to skewed results on pages that have long running requests, such as crons.

To stop New Relic logging that transaction, simply place the following code on the action / top of the PHP file:

{% prism php %}
if (extension_loaded('newrelic')) {
    newrelic_ignore_transaction();
}
{% endprism %}