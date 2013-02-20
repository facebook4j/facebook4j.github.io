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
[こちら](http://facebook4j.org/download/facebook4j-core-1.1.3.jar) からダウンロードしてください。 

# 使い方 {#how_to_use}
facebook4j-core-1.1.3.jar をクラスパスに通して、好きなメソッドを呼び出してください。  
Java が分かっていれば [JavaDoc](http://facebook4j.org/en/javadoc/index.html "JavaDoc") を見るのが早いです。  
[facebook4j.Facebook](http://facebook4j.org/en/javadoc/facebook4j/Facebook.html "facebook4j.Facebook") が最初に見るべきインターフェイスです。  
コード例は [コードサンプル | Facebook4J - A Java library for the Facebook Graph API](/ja/code-examples.html) をご覧ください。

# ライセンス {#license}
Facebook4J は Apache License 2.0 に基づいてリリースされています。

Facebook4J は HTTP通信処理をはじめとするかなりの内部ロジックについて Twitter4J を内包して使用しています。 Twitter4J のソフトウェアのライセンスについては [http://twitter4j.org/ja/index.html#license](http://twitter4j.org/ja/index.html#license) をご覧ください。

# Contributors {#contributors}
<img hspace="8" border="1" align="absmiddle" src="http://www.gravatar.com/avatar/3e40bc0f7067d4b83e2b1d6316338bfb?s=80" alt="Ryuji Yamashita" />
**Ryuji Yamashita** &lt;roundrop at gmail.com&gt; @roundrop
