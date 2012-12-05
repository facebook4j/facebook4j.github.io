---
layout: default
title: Facebook4J - A Java library for the Facebook Graph API
description: Facebook4J is a Java library for the Facebook Graph API. This library provides the ease of use like Twitter4J. Facebook4J is an unofficial library.
keywords: facebook,java,facebook4j
---
# Introduction {#introduction}
Facebook4J is an unofficial Java library for the Facebook Graph API.  
Facebook4J is featuring:  

* 100% Pure Java - works on any Java Platform version 5 or later
* Zero dependency : No additional jars required
* Built-in OAuth support

# System Requirements {#system_requirements}
Java 5 or later

# How To Install {#how_to_install}

## Maven Integration

    <dependency>
      <groupId>org.facebook4j</groupId>
      <artifactId>facebook4j-core</artifactId>
      <version>[1.0,)</version>
    </dependency>

## Download
Download jar file from [here](http://facebook4j.org/download/facebook4j-core-1.1.0.jar).  

# How To Use {#how_to_use}
Just add facebook4j-core-1.1.0.jar to your application classpath.  
If you are familiar with Java language, looking into the [JavaDoc](http://facebook4j.org/en/javadoc/index.html "JavaDoc") should be the shortest way for you to get started.
[facebook4j.Facebook](http://facebook4j.org/en/javadoc/facebook4j/Facebook.html "facebook4j.Facebook") interface is the one you may want to look at first.  
Code examples: [Code Examples | Facebook4J - A Java library for the Facebook Graph API](/en/code-examples.html)

# Supported {#supported}
* [Server-Side Authentication](https://developers.facebook.com/docs/authentication/server-side/ "Server-Side Authentication")
* [User](https://developers.facebook.com/docs/reference/api/user/ "User")
* [Achievement(Instance)](https://developers.facebook.com/docs/reference/api/achievement/ "Achievement(Instance)")
* [Album](https://developers.facebook.com/docs/reference/api/album/ "Album")
* [Checkin](https://developers.facebook.com/docs/reference/api/checkin/ "Checkin")
* [Comment](https://developers.facebook.com/docs/reference/api/Comment/ "Comment")
* [Domain](https://developers.facebook.com/docs/reference/api/domain/ "Domain")
* [Event](https://developers.facebook.com/docs/reference/api/event/ "Event")
* [FriendList](https://developers.facebook.com/docs/reference/api/FriendList/ "FriendList")
* [Group](https://developers.facebook.com/docs/reference/api/group/ "Group")
* [Insights](https://developers.facebook.com/docs/reference/api/insights/ "Insights")
* [Link](https://developers.facebook.com/docs/reference/api/link/ "Link")
* [Message](https://developers.facebook.com/docs/reference/api/message/ "Message")
* [Note](https://developers.facebook.com/docs/reference/api/note/ "Note")
* [Photo](https://developers.facebook.com/docs/reference/api/photo/ "Photo")
* [Post](https://developers.facebook.com/docs/reference/api/post/ "Post")
* [Question](https://developers.facebook.com/docs/reference/api/question/ "Question")
* [Status message](https://developers.facebook.com/docs/reference/api/status/ "Status message")
* [Video](https://developers.facebook.com/docs/reference/api/video/ "Video")
* [Search](https://developers.facebook.com/docs/reference/api/#searching)
* [FQL](https://developers.facebook.com/docs/reference/fql/)

# NOT Supported yet {#not_supported_yet}
* [Application](https://developers.facebook.com/docs/reference/api/application/ "Application")
* [Page](https://developers.facebook.com/docs/reference/api/page/ "Page")
* [Offer](https://developers.facebook.com/docs/reference/api/offer/ "Offer")
* [Order ](https://developers.facebook.com/docs/reference/api/order/ "Order ")
* [Review](https://developers.facebook.com/docs/reference/api/Review/ "Review")
* [Thread](https://developers.facebook.com/docs/reference/api/thread/ "Thread")
* [Batch Requests](https://developers.facebook.com/docs/reference/api/batch/ "Batch Requests")
* [Real-time Updates](https://developers.facebook.com/docs/reference/api/realtime/ "Real-time Updates")

# License {#license}
Facebook4J is released under Apache License 2.0.

Facebook4J includes software from Twitter4J to handle HTTP request/response and greatly internal logic. You can see the license term at [http://twitter4j.org/en/index.html#license](http://twitter4j.org/en/index.html#license)

\--------  
Twitter4J's readme.txt

>  Twitter4J is a Twitter API binding library for the Java language licensed under Apache License 2.0.  
>  Twitter4J includes software from JSON.org to parse JSON response from the Twitter API. You can see the license term at http://www.JSON.org/license.html  
> LICENSE.txt - the terms of license of this software  
> pom.xml - maven parent pom  
> powered-by-badge - badge  
> readme.txt - this file  
> twitter4j-core - core component : support REST and Search API  
> twitter4j-apache-httpclient-support - optional component adds Apache HttpClient support  
> twitter4j-examples - examples  
> twitter4j-media-support - media API support  
> twitter4j-async - Async API support : depending on twitter4j-core  
> twitter4j-stream - Streaming API support : depending on twitter4j-core and twitter4j-async  
> 
> Contributors  
> \------------  
> Adam Samet &lt;asamet at twitter.com&gt; @damnitsamet  
> Adrian Petrescu &lt;apetresc at gmail.com&gt; @apetresc  
> Alan Gutierrez &lt;alan at blogometer.com&gt;  
> Alessandro Bahgat &lt;ale.bahgat at gmail.com&gt; @abahgat  
> Anton Evane &lt;antonevane at gmail.com&gt; @anton_evane  
> Blake Barnes &lt;blake.barnes at gmail.com&gt;  
> Bruno Torres Goyanna &lt;bgoyanna at gmail.com&gt; @bgoyanna  
> Ciaran Jessup &lt;ciaranj at gmail.com&gt; @ciaran_j  
> Cole Wen &lt;wennnnke at gmail.com&gt; @Pigwen  
> Dan Checkoway &lt;dcheckoway at gmail.com&gt;  
> Dong Wang &lt;dong at twitter.com&gt; @dongwang218  
> Eric Jensen &lt;ej at twitter.com&gt; @ej  
> Fiaz Hossain &lt;fiaz at twitter.com&gt; @fiazhossain  
> Hitoshi Kunimatsu &lt;hkhumanoid at gmail.com&gt;  
> Jacob S. Hoffman-Andrews &lt;jsha at twitter.com&gt; @j4cob  
> Jenny Loomis &lt;jenny at rockmelt.com&gt;  
> John Corwin &lt;jcorwin at twitter.com&gt; @johnxorz  
> John Sirois &lt;jsirois at twitter.com&gt; @johnsirois  
> Julien Letrouit &lt;julien.letrouit at gmail.com&gt; @jletroui  
> Ludovico Fischer @ludovicofischer  
> marr-masaaki &lt;marr fiveflavors at gmail.com&gt; @marr  
> Mocel &lt;docel77 at gmail.com&gt; @Mocel  
> Nobutoshi Ogata &lt;n-ogata at cnt.biglobe.co.jp&gt; @nobu666  
> Nicholas Dellamaggiore &lt;nick.dellamaggiore at gmail.com&gt; @nickdella  
> Perry Sakkaris &lt;psakkaris at gmail.com&gt;  
> Roberto Estrada &lt;robestradac at gmail.com&gt;  
> Roy Reshef &lt;royreshef at gmail.com&gt; @tsipo  
> Rui Silva  
> Sam Pullara &lt;sam at sampullara.com&gt; @sampullara  
> Steve Lhomme &lt;slhomme at matroska.org&gt; @robux4  
> Rémy Rakic &lt;remy.rakic at gmail.com&gt; @lqd  
> Takao Nakaguchi &lt;takao.nakaguchi at gmail.com&gt; @takawitter  
> Tomohisa Igarashi &lt;tm.igarashi at gmail.com&gt;  
> Will Glozer &lt;will at glozer.net&gt; @ar3te  
> William Morgan &lt;william at twitter.com&gt; @wm  
> withgod &lt;noname at withgod.jp&gt; @withgod  
> Yusuke Yamamoto &lt;yusuke at mac.com&gt; @yusuke
