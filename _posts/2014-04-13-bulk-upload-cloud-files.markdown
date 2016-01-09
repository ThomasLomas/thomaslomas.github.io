---
layout: post
title:  "Bulk uploading files to Rackspace Cloud Files"
date:   2014-04-13 22:20:11 +0000
categories: rackspace
---

Recently I needed to upload around 28,000 images onto a cloud files container. This could be achieved by using CyberDuck, but that takes way too long to mass upload. What I ended up using was [Turbolift][turbolift].

Turbolift is built for speed and masses of files. It can scan a local directory for all files and upload them all into a container.

Installation (at least on a Mac) was very quick and painless. I simply followed their [instructions][turbolift-instructions] and did the following in a terminal window:

{% highlight bash %}
git clone git://github.com/cloudnull/turbolift.git
cd turbolift
python setup.py install
{% endhighlight %}

One this had installed I changed directory to where the images are stored and did the following:

{% highlight bash %}
turbolift -u [Rackspace username] -a [Rackspace API Key] --os-rax-auth [Region] upload -s [Path to local files] -c [Container to use]
{% endhighlight %}


- The Rackspace Username is simply what you use to login to [Rackspace's My Cloud Control Panel][rackspace]
- The API Key you can get by looging into the control panel and clicking Account Settings and then Show next to the API Key
- The region for me was _lon_ as we are uploading the the London Data Centre
- The path to local files is the absolute path on your machine to where the files are located. On a Mac you can drag the folder into the terminal window to give you this path.
- The container is what container the files should be uploaded to. I had already created the container to use and selected that it uses the CDN.

Once you run the command it will tell you when it is complete. You can then login to the control panel and get the URL for the container if it is CDN enabled. From this you can append the file name to it and get a publically accessible URL for each file.

[turbolift]: https://github.com/cloudnull/turbolift
[turbolift-instructions]: https://github.com/cloudnull/turbolift#turbolift-the-cloud-files-uploader
[rackspace]: http://mycloud.rackspace.co.uk