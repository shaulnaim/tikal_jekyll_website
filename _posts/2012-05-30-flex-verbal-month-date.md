---
layout: post
title: Flex "Verbal Month" date
created: 1338394544
author: avit
permalink: /flex-verbal-month-date
tags:
- RoR
- web
- ruby
---
<p>Hi All,</p>

<p>If you are working with Adobe <a href='http://www.kensodev.com/category/flex/' title='flex'>flex</a>, you probably know that the framework does not have a function such as DateTime.Now().ToString().</p>

<p>Because of that, displaying a friendly date to the user is impossible unless you write a small extension to the getDate() function in flex.</p>

<p>This is The way to go <div style='border: 1px solid gray; padding: 4px; font-size: 8pt; margin: 20px 0px 10px; overflow: auto; width: 97.5%; cursor: text; max-height: 200px; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: #f4f4f4;'>
<div style='padding: 0px; font-size: 8pt; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: #f4f4f4;'>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: white;'><span style='color: #606060;'>   1:</span> var todayDate:String = <span style='color: #006080;'>""</span>;</pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: #f4f4f4;'><span style='color: #606060;'>   2:</span></pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: white;'><span style='color: #606060;'>   3:</span> <span style='color: #0000ff;'>private</span> function INIT():<span style='color: #0000ff;'>void</span>{</pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: #f4f4f4;'><span style='color: #606060;'>   4:</span>     getCurrentDate();</pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: white;'><span style='color: #606060;'>   5:</span> }</pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: #f4f4f4;'><span style='color: #606060;'>   6:</span></pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: white;'><span style='color: #606060;'>   7:</span> <span style='color: #0000ff;'>private</span> var monthLabels:Array = <span style='color: #0000ff;'>new</span> Array(<span style='color: #006080;'>"Jan"</span>,</pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: #f4f4f4;'><span style='color: #606060;'>   8:</span>                                           <span style='color: #006080;'>"Feb"</span>,</pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: white;'><span style='color: #606060;'>   9:</span>                                           <span style='color: #006080;'>"Mar"</span>,</pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: #f4f4f4;'><span style='color: #606060;'>  10:</span>                                           <span style='color: #006080;'>"Apr"</span>,</pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: white;'><span style='color: #606060;'>  11:</span>                                           <span style='color: #006080;'>"May"</span>,</pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: #f4f4f4;'><span style='color: #606060;'>  12:</span>                                           <span style='color: #006080;'>"Jun"</span>,</pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: white;'><span style='color: #606060;'>  13:</span>                                           <span style='color: #006080;'>"Jul"</span>,</pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: #f4f4f4;'><span style='color: #606060;'>  14:</span>                                           <span style='color: #006080;'>"Aug"</span>,</pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: white;'><span style='color: #606060;'>  15:</span>                                           <span style='color: #006080;'>"Sep"</span>,</pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: #f4f4f4;'><span style='color: #606060;'>  16:</span>                                           <span style='color: #006080;'>"Oct"</span>,</pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: white;'><span style='color: #606060;'>  17:</span>                                           <span style='color: #006080;'>"Nov"</span>,</pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: #f4f4f4;'><span style='color: #606060;'>  18:</span>                                           <span style='color: #006080;'>"Dec"</span>);</pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: white;'><span style='color: #606060;'>  19:</span></pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: #f4f4f4;'><span style='color: #606060;'>  20:</span> <span style='color: #0000ff;'>private</span> function getCurrentDate():<span style='color: #0000ff;'>void</span>{</pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: white;'><span style='color: #606060;'>  21:</span>     var date:Date = <span style='color: #0000ff;'>new</span> Date();</pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: #f4f4f4;'><span style='color: #606060;'>  22:</span>     todayDate = date.getDate().toString() + <span style='color: #006080;'>" "</span> + monthLabels[date.getMonth()].toString() + <span style='color: #006080;'>" "</span> + date.getFullYear().toString();</pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: white;'><span style='color: #606060;'>  23:</span>     datePickerButton.label=todayDate;</pre>
<pre style='padding: 0px; font-size: 8pt; margin: 0em; overflow: visible; width: 100%; color: black; border-style: none; line-height: 12pt; font-family: consolas,&apos;Courier New&apos;,courier,monospace; background-color: #f4f4f4;'><span style='color: #606060;'>  24:</span> }</pre>
</div>
</div> That’s it, its that easy to get a date from flex.</p>

<p>You can of curse extend it some more in order to get the day.</p>
      
    <img src="http://feeds.feedburner.com/~r/KensoDev-en/~4/FsVeZhSQAvw" height="1" width="1"/>
