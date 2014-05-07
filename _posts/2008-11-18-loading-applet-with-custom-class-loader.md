---
layout: post
title: Loading applet with custom class loader
created: 1226989933
author: keren
permalink: java/loading-applet-custom-class-loader
tags:
- JAVA
- aspectj
- classloader
- applet
- java plug-in
---
<p>Hey,</p><p>My problem is a little complicated. I'll try to explain in details - but pls do not hesitate and ask for clarifications...</p><p>I have a product - applet based. I want to manipulate the code on run-time using aspectj. Since the applet is running on the client jvm I can't load it with '-Djava.system.class.loader=org.aspectj.weaver.loadtime.WeavingURLClassLoader' as with applications.</p><p>My current solution is to 'replace' the applet tag in the jsp - to call a wrapper applet. The wrapper applet is initiate the product with the aspectj classloader:</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; URL source = new URL(&quot;jar:&quot;+getCodeBase()+&quot;aProduct.jar!/&quot;);</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; URL aspect = new URL(&quot;jar:&quot;+getCodeBase()+&quot;myAspects.jar!/&quot;);</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; URL[] urlList = {source, aspect };</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; URL[] aspectsList = {aspect };</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WeavingURLClassLoader weavingClassLoader = new WeavingURLClassLoader(urlList, aspectsList,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thread.currentThread().getContextClassLoader());</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thread.currentThread().setContextClassLoader(weavingClassLoader);</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Class mainApplet = weavingClassLoader.loadClass(&quot;com.company.product.ProductApplet&quot;);</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Object applet = mainApplet.newInstance();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (mainApplet != null) {&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Class[] stubArgs = {AppletStub.class};</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Method setStub = mainApplet.getMethod(&quot;setStub&quot;, stubArgs);</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Object[] stubObjects = {new MyAppletStub(this)};</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; setStub.invoke(applet, stubObjects);</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Class[] args = null;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Method init = mainApplet.getMethod(&quot;init&quot;, args);</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; init.invoke(applet, (Object[])null);</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; this.add((Component)applet);</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p><p>The product applet is trying to get info from the browser and to interact with java script - but it lost its 'connection' to the browser when I loaded it and add it to the wrapper applet. This is why I'm setting the applet stub - so whenever someone is calling 'getParameter', getJSObject or getAppletContext - it's getting my wrapper 'getParameter', getJSObject or getAppletContext. - this is working great!</p><p>the current status is that the product is having some controllers for the GUI that have one instance for each applet on the browser (there are cases that some applets are running on the same page). The product is using:</p><p>JOptionPane.getFrameForComponent(component)&nbsp;&nbsp; - (where the component is the applet)</p><p>in order to select between the controllers.</p><p>I'm running in debug mode and getting the same controller for the product applet - but in some cases (still for the same applet) I'm getting another controller (it trys to get the parent frame - that is my wrapper applet frame) - this is causing eventually to a null pointer.</p><p>Since we have a decision - not to touch the product code and to be generic to all products - I need to find a way to solve this out.</p><p>another option is trying the 'new java plugin' - 6. they added an option to load applet using jnlp (as in webstart). You can load the applet with jvm arguments. But I'm not sure that loading it with:</p><p>java.system.class.loader=org.aspectj.weaver.loadtime.WeavingURLClassLoader</p><p>will pass the security restrictions</p><p>Any thought/suggestion&nbsp; will be more then welcome</p>