---
layout: post
title: 'EAC4J: Apache Commons Configuration via JNDI'
created: 1220806973
author: zvika
permalink: /java/eac4j-apache-commons-configuration-jndi
tags:
- JAVA
- commons-configuration
- apache
- jndi
- configuration
---
<p>OK, here's a problem we all know:</p><p>The JEE spec' dictates that no resources should be accessed from a JEE application other than via a JCA comatible datasources, for example, JDBC or JNDI stores... As in other cases, the spec' writer live in an ideal world: In practice, many applications have a filesystem dependency on some <em>product.home</em> directory whee they read configuration from.</p><p>Meet EAC4J:<em><br type="_moz" /></em></p><p><em>&quot;With EAC4J (External Application Configuration For Java) you can externalize your application&rsquo;s configuration with Apache Commons Configuration and get a Configuration Object via simple JNDI lookup. The isolated classloader decouples all needed classes and dependencies from your application except by one interface.&quot;</em></p><p>In simple words, you get a good decouling between the application and the configuration, your application is more standard and you can reload the configuration without restarting the application.While at it, you get support for all configuration stores supported by commons-configuration... Pretty good, I think.</p><p><a href="http://www.ibstaff.net/fmartinez/?p=52">Full Article</a></p><p><a href="http://www.ibstaff.net/fmartinez/wp-content/uploads/2008/08/eac4j.zip">Download Zip</a></p>
