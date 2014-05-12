---
layout: post
title: Reducing Flex SWF file size and using the Flash Player cache
created: 1229941989
permalink: reducing-flex-swf-file-size-and-using-the-flash-player-cache
tags:
- JS
- flex
---
<p class="MsoNormal"><b><font size="2" face="Arial"><span style="font-weight: bold; font-size: 10pt; font-family: Arial;">Reducing RSL file size</span></font></b></p><p class="MsoNormal"><font size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial;">In case you are using third-party libraries you&rsquo;ll never know if they heard about eclipse's build-release or -debug=false (The compiler excludes the debugging information</span></font>) <font size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial;">but what you can do is extract the SWC file and run the Optimizer on the SWF file. That will reduce those libraries size.</span></font><b><font size="2" face="Arial"><span style="font-weight: bold; font-size: 10pt; font-family: Arial;"><br type="_moz" /></span></font></b></p> <p class="MsoNormal"><b><font size="2" face="Arial"><span style="font-weight: bold; font-size: 10pt; font-family: Arial;">Improving Flex application performance using the Flash Player cache</span></font></b></p> <p class="MsoNormal"><font size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial;">Using RSL (Runtime Shared Libraries) can reduce your application size significantly. Using <b><span style="font-weight: bold;">Signed</span></b> RSL is much better since RSL will be cached in the flash player &ndash; that&rsquo;s mean faster loading and light application file size.</span></font></p><p class="MsoNormal">&nbsp;</p><p class="MsoNormal"><b><font size="2" face="Arial"><span style="font-weight: bold; font-size: 10pt; font-family: Arial;">Resources:</span></font></b></p> <p class="MsoNormal"><font size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial;">RSL introduction</span></font> - <font size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial;"><a title="http://labs.adobe.com/wiki/index.php/Flex_3:Feature_Introductions:Flex_3_RSLs" href="http://labs.adobe.com/wiki/index.php/Flex_3:Feature_Introductions:Flex_3_RSLs">http://labs.adobe.com/wiki/index.php/Flex_3:Feature_Introductions:Flex_3_RSLs</a></span></font></p><p class="MsoNormal"><font size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial;">Optimizer</span></font> - <font size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial;"><a title="http://livedocs.adobe.com/flex/3/html/help.html?content=rsl_07.html" href="http://livedocs.adobe.com/flex/3/html/help.html?content=rsl_07.html">http://livedocs.adobe.com/flex/3/html/help.html?content=rsl_07.html</a></span></font><font size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial;"><br type="_moz" /></span></font></p> <p class="MsoNormal"><font size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial;">About cross-domain RSLs</span></font> - <font size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial;"><a title="http://livedocs.adobe.com/flex/3/html/help.html?content=rsl_06.html" href="http://livedocs.adobe.com/flex/3/html/help.html?content=rsl_06.html">http://livedocs.adobe.com/flex/3/html/help.html?content=rsl_06.html</a></span></font><font size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial;"><br type="_moz" /></span></font></p> <p class="MsoNormal"><font size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial;">Flex compiler options</span></font> - <font size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial;"><a title="http://livedocs.adobe.com/flex/3/html/help.html?content=compilers_13.html" href="http://livedocs.adobe.com/flex/3/html/help.html?content=compilers_13.html">http://livedocs.adobe.com/flex/3/html/help.html?content=compilers_13.html</a></span></font><font size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial;">&nbsp;</span></font></p> <p class="MsoNormal"><font size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial;">Example - </span></font><font size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial;"><a title="http://www.adobe.com/devnet/flex/articles/flash_player_cache_04.html" href="http://www.adobe.com/devnet/flex/articles/flash_player_cache_04.html">http://www.adobe.com/devnet/flex/articles/flash_player_cache_04.html</a></span></font></p> <p class="MsoNormal">&nbsp;</p>