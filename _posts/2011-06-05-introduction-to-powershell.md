---
layout: post
title: Introduction to PowerShell
created: 1307248115
author: igorz
permalink: /net/introduction-powershell
tags:
- .NET
- .Net Open Source
---
<p>In this session we will meet Windows PowerShell.</p>
<p>&nbsp;</p>
<p>Taked from Wikipedia:</p>
<p>&nbsp;</p>
<p><b>&quot;Windows PowerShell</b> is <a href="http://en.wikipedia.org/wiki/Microsoft" title="Microsoft">Microsoft</a>'s task automation framework, consisting of a <a href="http://en.wikipedia.org/wiki/Command-line_interface" title="Command-line interface">command-line</a> <a href="http://en.wikipedia.org/wiki/Shell_%28computing%29" title="Shell (computing)">shell</a> and associated <a href="http://en.wikipedia.org/wiki/Scripting_language" title="Scripting language">scripting language</a> built on top of, and integrated with the <a href="http://en.wikipedia.org/wiki/.NET_Framework" title=".NET Framework">.NET Framework</a>. PowerShell provides full access to <a href="http://en.wikipedia.org/wiki/Component_Object_Model" title="Component Object Model">COM</a> and <a href="http://en.wikipedia.org/wiki/Windows_Management_Instrumentation" title="Windows Management Instrumentation">WMI</a>, enabling administrators to perform administrative tasks on both local and remote Windows systems.</p>
<p>In PowerShell, administrative tasks are generally performed by <i>cmdlets</i> (pronounced <i>command-lets</i>), specialized .NET <a href="http://en.wikipedia.org/wiki/Class_%28computer_science%29" title="Class (computer science)" class="mw-redirect">classes</a> implementing a particular operation. Sets of cmdlets may be combined together in <i>scripts</i>, <i>executables</i> (which are standalone applications), or by instantiating regular .NET classes (or WMI/COM Objects).<sup id="cite_ref-how_2-0" class="reference"><a href="http://en.wikipedia.org/wiki/Windows_PowerShell#cite_note-how-2"><span>[</span>3<span>]</span></a></sup><sup id="cite_ref-MSDN_3-0" class="reference"><a href="http://en.wikipedia.org/wiki/Windows_PowerShell#cite_note-MSDN-3"><span>[</span>4<span>]</span></a></sup> These work by accessing data in different data stores, like the <a href="http://en.wikipedia.org/wiki/Filesystem" title="Filesystem" class="mw-redirect">filesystem</a> or <a href="http://en.wikipedia.org/wiki/Windows_Registry" title="Windows Registry">registry</a>, which are made available to the PowerShell runtime via Windows PowerShell <i>providers</i>.</p>
<p>Windows PowerShell also provides a hosting <a href="http://en.wikipedia.org/wiki/API" title="API" class="mw-redirect">mechanism</a>  with which the Windows PowerShell runtime can be embedded inside other  applications. These applications then leverage Windows PowerShell  functionality to implement certain operations, including those exposed  via the <a href="http://en.wikipedia.org/wiki/Graphical_user_interface" title="Graphical user interface">graphical interface</a>. This capability has been utilized by <a href="http://en.wikipedia.org/wiki/Microsoft_Exchange_Server" title="Microsoft Exchange Server">Microsoft Exchange Server</a> 2007<sup id="cite_ref-how_2-1" class="reference"><a href="http://en.wikipedia.org/wiki/Windows_PowerShell#cite_note-how-2"><span>[</span>3<span>]</span></a></sup><sup id="cite_ref-4" class="reference"><a href="http://en.wikipedia.org/wiki/Windows_PowerShell#cite_note-4"><span>[</span>5<span>]</span></a></sup> to expose its management functionality as PowerShell cmdlets and providers and implement the <a href="http://en.wikipedia.org/wiki/Graphical_User_Interface" title="Graphical User Interface" class="mw-redirect">graphical</a> management tools as PowerShell hosts which invoke the necessary cmdlets. Other <a href="http://en.wikipedia.org/wiki/Microsoft" title="Microsoft">Microsoft</a> applications including <a href="http://en.wikipedia.org/wiki/Microsoft_SQL_Server_2008" title="Microsoft SQL Server 2008" class="mw-redirect">Microsoft SQL Server 2008</a><sup id="cite_ref-5" class="reference"><a href="http://en.wikipedia.org/wiki/Windows_PowerShell#cite_note-5"><span>[</span>6<span>]</span></a></sup>  also expose their management interface via PowerShell cmdlets. With  PowerShell, graphical interface-based management applications on Windows  are layered on top of Windows PowerShell. A PowerShell scripting  interface for Windows products is mandated by the Common Engineering  Criteria.<sup id="cite_ref-6" class="reference"><a href="http://en.wikipedia.org/wiki/Windows_PowerShell#cite_note-6"><span>[</span>7<span>]</span></a></sup></p>
<p>Windows PowerShell includes its own extensive, console-based help, similar to <a href="http://en.wikipedia.org/wiki/Manual_page_%28Unix%29" title="Manual page (Unix)" class="mw-redirect">man pages</a> in <a href="http://en.wikipedia.org/wiki/Unix_shell" title="Unix shell">Unix shells</a> via the <code>Get-Help</code> cmdlet.&quot;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>