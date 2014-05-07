---
layout: post
title: WCF Abstraction
created: 1366875041
author: menny
permalink: wcf-abstraction
tags:
- .NET
- WCF
- Service Oriented
---
<p>&nbsp;</p>
<p style="border: 0px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 15px; margin: 0px 0px 1.625em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(55, 55, 55); line-height: 24px;">Following my true belief of open source software, here is the&nbsp;<a href="http://sdrv.ms/14eHI1u" style="border: 0px; font-family: inherit; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(25, 130, 209); text-decoration: none;">presentation file</a>&nbsp;and code (<a href="https://github.com/onemenny/WcfAbstraction" style="border: 0px; font-family: inherit; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(25, 130, 209); text-decoration: none;">GitHub source&nbsp;</a>) for the presentation I gave @ Jajah&rsquo;s office.</p>
<p style="border: 0px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 15px; margin: 0px 0px 1.625em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(55, 55, 55); line-height: 24px;">You can read all about the code at the&nbsp;<a href="https://github.com/onemenny/WcfAbstraction" style="border: 0px; font-family: inherit; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(25, 130, 209); text-decoration: none;">GitHub source&nbsp;</a>and if you have any questions you can email me or post a comment here.</p>
<p style="border: 0px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 15px; margin: 0px 0px 1.625em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(55, 55, 55); line-height: 24px;">For the convenience, here is the abstract from GitHub:</p>
<h1 style="border: 0px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 15px; margin: 0px 0px 0.8125em; outline: 0px; padding: 0px; vertical-align: baseline; clear: both; color: rgb(0, 0, 0); line-height: 24px;">
	Wcf Abstraction</h1>
<h4 style="border: 0px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 15px; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; clear: both; color: rgb(55, 55, 55); line-height: 24px;">
	<a name="this-is-working-application-for-a-client" style="border: 0px; font-family: inherit; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(25, 130, 209);"></a>This is working application for a client-server architecture using WCF abstraction. It can be used to start up your own client server app and to give you a great kick start for common uses like behaviors, serialization, DI and IOC, caching and best practice.</h4>
<p style="border: 0px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 15px; margin: 0px 0px 1.625em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(55, 55, 55); line-height: 24px;">The project is built with 3 sections:</p>
<ol style="border: 0px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 15px; margin: 0px 0px 1.625em 2.5em; outline: 0px; padding-right: 0px; padding-left: 0px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; color: rgb(55, 55, 55); line-height: 24px;">
	<li style="border: 0px; font-family: inherit; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">
		The client, currently implemented as a WPF application, but can be any other application</li>
	<li style="border: 0px; font-family: inherit; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">
		The server. Implemented as a Windows service, but can also be implemented as self hosted or IIS hosted application. The server also includes:<br />
		a.the contracts to communicate with the clients (e.g. entities, service interfaces) reside both in client and server side.<br />
		b. the server itself &ndash; service interfaces implementation<br />
		c. the windows service &ndash; the host of the application</li>
	<li style="border: 0px; font-family: inherit; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">
		common &ndash; common helpers for use (reside both in client and server side)</li>
</ol>
<h4 style="border: 0px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 15px; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; clear: both; color: rgb(55, 55, 55); line-height: 24px;">
	<a name="starting-the-project" style="border: 0px; font-family: inherit; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(25, 130, 209);"></a>Starting the Project</h4>
<p style="border: 0px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 15px; margin: 0px 0px 1.625em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(55, 55, 55); line-height: 24px;">When running the project, you need to setup multiple start up project for the WcfAbstraction.Client .Windows &amp; WcfAbstraction.Server.Windows. Before starting the solution make sure you build it. Once the solution is running please confirm the Windows Firewall setting for private network access only.</p>
<p style="border: 0px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 15px; margin: 0px 0px 1.625em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(55, 55, 55); line-height: 24px;">You will need to wait till the server is loaded (the server console app will state so) and only then try the client communication.</p>
<h4 style="border: 0px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 15px; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; clear: both; color: rgb(55, 55, 55); line-height: 24px;">
	<a name="third-party-helper" style="border: 0px; font-family: inherit; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(25, 130, 209);"></a>Third Party Helper</h4>
<p style="border: 0px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 15px; margin: 0px 0px 1.625em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(55, 55, 55); line-height: 24px;">I have used&nbsp;<a href="http://www.idesign.net/" style="border: 0px; font-family: inherit; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(25, 130, 209); text-decoration: none;">www.idesign.net/</a>&nbsp;(Juval Lowy) code for the generic implementation of ServiceHost (ServiceHost).</p>
<p style="border: 0px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 15px; margin: 0px 0px 1.625em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(55, 55, 55); line-height: 24px;">I have used Unity from the Enterprise Library for the DI and IOC container</p>
<p style="border: 0px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 15px; margin: 0px 0px 1.625em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(55, 55, 55); line-height: 24px;">I have used Moq for the unit testing (used in conjunction with Unity to setup different app.config for unit testing instead of opening real services)</p>
<h4 style="border: 0px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 15px; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; clear: both; color: rgb(55, 55, 55); line-height: 24px;">
	<a name="appconfig" style="border: 0px; font-family: inherit; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(25, 130, 209);"></a>app.config</h4>
<p style="border: 0px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 15px; margin: 0px 0px 1.625em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(55, 55, 55); line-height: 24px;">Please notice the various (WCF) settings in the app.config files of both client and server. The enterprise Library Unity is used differently in the client and server. On the client side, it is used to insatiate the services for the client:&nbsp;<code style="border: 0px; font-family: Monaco, Consolas, 'Andale Mono', 'DejaVu Sans Mono', monospace; font-size: 13px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: normal;">UnityRegistry.GetService&lt;ITestService&gt;().AssertArgumentNotNull_GenericFault(null);</code>&nbsp;And on the server they are used to get a service reference within other service, and not for the WCF host instantiation, which is done by the regular configuration section in the config file.</p>
<h4 style="border: 0px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 15px; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; clear: both; color: rgb(55, 55, 55); line-height: 24px;">
	<a name="the-heart-of-it-all" style="border: 0px; font-family: inherit; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(25, 130, 209);"></a>The Heart of it all</h4>
<p style="border: 0px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 15px; margin: 0px 0px 1.625em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(55, 55, 55); line-height: 24px;">The heart of the system is the proxy implementation. This is the abstraction of the WCF layer. Since WCF implementation itself implements the proxy client and server from the System.Runtime.Remoting DLL. This gives you as a developer full control on the communication process. Since you get to intercept it before the invocation of the remoting method, you can view the arguments and validate them, you can handlecommunication exception and much much more.</p>
<p style="border: 0px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 15px; margin: 0px 0px 1.625em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(55, 55, 55); line-height: 24px;"><strong style="border: 0px; font-family: inherit; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">So give it a try before you go to the regular MS implementation with all the wizards and the auto generated code that you don&rsquo;t have a clue about</strong></p>