---
layout: post
title: Bugzilla on Ubuntu 8.04 - Installation problem
created: 1255171740
author: liorb
permalink: /bugzilla-ubuntu-804-installation-problem
tags:
- Flex Java
---
<a onblur="try {parent.deselectBloggerImageGracefully();} catch(e) {}" href="http://3.bp.blogspot.com/_tECzk8Tdl88/StBp_pzKzlI/AAAAAAAAAFg/PCBM64JbxgI/s1600-h/buggie.png"><img style="margin: 0pt 10px 10px 0pt; float: left; cursor: pointer; width: 81px; height: 107px;" src="http://3.bp.blogspot.com/_tECzk8Tdl88/StBp_pzKzlI/AAAAAAAAAFg/PCBM64JbxgI/s400/buggie.png" alt="" id="BLOGGER_PHOTO_ID_5390925296235630162" border="0" /></a><br />Bugzilla seems to be one of these products people are stying loyal to no matter what. I honestly love the simplicity of the tool, I've used many other bug tracking systems but Bugzilla will always remain my#1 favorite. I've recently decided to install Bugzilla on my Ubuntu 8.04 machine. I was happy to find out that this can be done using apt-get, as Bugzilla installations always seem to be bugy. Used the following line for the installation:<br /><pre style="border: 1px dashed rgb(153, 153, 153); padding: 5px; overflow: auto; font-family: Andale Mono,Lucida Console,Monaco,fixed,monospace; color: rgb(0, 0, 0); background-color: rgb(238, 238, 238); font-size: 12px; line-height: 14px; width: 90%;"><code>sudo apt-get install bugzilla<br /></code></pre>That seemed to have worked I thought, but when I was done I tried to browse to the new Bugzilla site and got an Internal Server Error message.<br /><br />In order to fix the problem and get your Bugzilla up and running here's what you need to do: access your mysql admin using both command line or MySQL Adminstrator app , Assign all privileges to the user<span style="font-weight: bold;"> debian-sys-maint @ localhost</span> on the bugzilla Schema.<br /><br /><br /><a onblur="try {parent.deselectBloggerImageGracefully();} catch(e) {}" href="http://3.bp.blogspot.com/_tECzk8Tdl88/StBvlDg0snI/AAAAAAAAAFw/FJ2Pko9Nsq8/s1600-h/mysql-bugzilla.png"><img style="margin: 0px auto 10px; display: block; text-align: center; cursor: pointer; width: 400px; height: 277px;" src="http://3.bp.blogspot.com/_tECzk8Tdl88/StBvlDg0snI/AAAAAAAAAFw/FJ2Pko9Nsq8/s400/mysql-bugzilla.png" alt="" id="BLOGGER_PHOTO_ID_5390931436351304306" border="0" /></a><br />Once you are done go back to your local to the bugzilla web page on your localhost, you should now be able to see the Bugzilla web interface. This solution and some explanations may be found on this <a href="https://bugs.launchpad.net/ubuntu/+source/bugzilla/+bug/55747">thread.</a>