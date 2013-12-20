---
layout: default
title: Facebook4J - A most easily usable Facebook API wrapper in Java
description: Facebook4J is an open-sourced, mavenized Java library. With Facebook4J, you can easily integrate your application with the Facebook API. Facebook4J is an unofficial library.
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
      <version>[2.0,)</version>
    </dependency>

## ダウンロード

* 最新安定バージョン  
[facebook4j-core-2.0.4.jar](/download/facebook4j-core-2.0.4.jar)

# 使い方 {#how_to_use}
facebook4j-core-2.0.4.jar をクラスパスに通して、好きなメソッドを呼び出してください。  
Java が分かっていれば [JavaDoc](/javadoc/index.html "JavaDoc") を見るのが早いです。  
[facebook4j.Facebook](/javadoc/facebook4j/Facebook.html "facebook4j.Facebook") が最初に見るべきインターフェイスです。  
コード例は [コードサンプル | Facebook4J - A Java library for the Facebook Graph API](/ja/code-examples.html) をご覧ください。

# ソースコード {#source_code}

プロジェクトのリポジトリは `https://github.com/roundrop/facebook4j` です。

<div class="github-card" data-user="roundrop" data-repo="facebook4j" data-width="400" data-height="153"></div>
<script src="http://lab.lepture.com/github-cards/widget.js"></script>

# ライセンス {#license}
Facebook4J は Apache License 2.0 に基づいてリリースされています。

    Copyright 2012 Ryuji Yamashita
    
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
    
          http://www.apache.org/licenses/LICENSE-2.0
    
    Unless required by applicable law or agreed to in writing, software
    Distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

Facebook4J は HTTP通信処理をはじめとするかなりの内部ロジックについて Twitter4J を内包して使用しています。 Twitter4J のソフトウェアのライセンスについては [http://twitter4j.org/ja/index.html#license](http://twitter4j.org/ja/index.html#license) をご覧ください。

# Contributors {#contributors}
<img hspace="8" border="1" align="absmiddle" src="http://www.gravatar.com/avatar/3e40bc0f7067d4b83e2b1d6316338bfb?s=80" alt="Ryuji Yamashita" />
**Ryuji Yamashita** &lt;roundrop at gmail.com&gt; @roundrop

# 寄付 {#donation}
Facebook4J はどなたでも商用、非商用にかかわらず無償でご利用いただけます。  
もし Facebook4J があなたの生活を豊かにしてくれると感じたならば、寄付もご検討ください。  
  
<a href='http://www.pledgie.com/campaigns/22235'><img alt='Click here to lend your support to: Facebook4J and make a donation at www.pledgie.com !' src='http://www.pledgie.com/campaigns/22235.png?skin_name=chrome' border='0' /></a>
