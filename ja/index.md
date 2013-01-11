---
layout: default
title: Facebook4J - A Java library for the Facebook Graph API
description: Facebook4J is a Java library for the Facebook Graph API. This library provides the ease of use like Twitter4J. Facebook4J is an unofficial library.
keywords: facebook,java,facebook4j
---
# Facebook4Jとは？ {#introduction}
Facebook4J はFacebook Graph APIのJavaラッパーです。  
Facebook非公式のライブラリです。  

* 100% Pure Java - バージョン5以降のJavaプラットフォームで動作します
* 依存なし : 追加の jar ファイルなどは必要ありません
* OAuth に対応

# システム要件 {#system_requirements}
Java 5 またはそれ以降

# 導入方法 {#how_to_install}

## Maven統合
pom.xml に以下のように記述してください。

    <dependency>
      <groupId>org.facebook4j</groupId>
      <artifactId>facebook4j-core</artifactId>
      <version>[1.0,)</version>
    </dependency>

## ダウンロード
[こちら](http://facebook4j.org/download/facebook4j-core-1.1.2.jar) からダウンロードしてください。 

# 使い方 {#how_to_use}
facebook4j-core-1.1.2.jar をクラスパスに通して、好きなメソッドを呼び出してください。  
Java が分かっていれば [JavaDoc](http://facebook4j.org/en/javadoc/index.html "JavaDoc") を見るのが早いです。  
[facebook4j.Facebook](http://facebook4j.org/en/javadoc/facebook4j/Facebook.html "facebook4j.Facebook") が最初に見るべきインターフェイスです。  
コード例は [コードサンプル | Facebook4J - A Java library for the Facebook Graph API](/ja/code-examples.html) をご覧ください。

# ライセンス {#license}
Facebook4J は Apache License 2.0 に基づいてリリースされています。

Facebook4J は HTTP通信処理をはじめとするかなりの内部ロジックについて Twitter4J を内包して使用しています。 Twitter4J のソフトウェアのライセンスについては [http://twitter4j.org/ja/index.html#license](http://twitter4j.org/ja/index.html#license) をご覧ください。

\--------  
Twitter4J の readme.txt です。

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
