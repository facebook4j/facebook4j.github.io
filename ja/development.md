---
layout: default
title: 開発 | Facebook4J - A most easily usable Facebook API wrapper in Java
description: Facebook4J - 開発
keywords: 開発,facebook4j
---
# 開発に参加する {#join-development}

コードのコントリビュートを行う場合は以下の手順に従ってください。

1. メーリングリストに報告する
バグや機能追加要求について [メーリングリスト](http://groups.google.com/group/facebook4j-j) に報告します。もし報告する現象が既知の問題でなく、確実にバグと考えられる場合このステップは省略しても構いません。

2. 課題を登録
課題を [JIRA](https://roundrop.atlassian.net/browse/FFJ) に登録します。

3. ソースコードを修正する
必要なソースファイルを FFJ-XXX という名前のブランチで修正します。以下の点を気をつけてください:
* コードが [コーディング規約](#coding-convention) に準拠していること
* JUnit テストケースが変更に含まれていること
* コミットログに issue# (FFJ-***) が含まれていること
* 新規に作成されたファイルは@authorタグと [ライセンス条文](/ja/index.html#license) が含まれていること

4. pull request を送る
pull request を [roundrop](http://github.com/roundrop) に送ります。

5. マージとクローズ
マージが完了し、テストケースが通ると issue はクローズされます。

# コーディング規約 {#coding-convention}
ソースコードは可能な限り [Code Conventions for the Java(TM) Programming Language](http://www.oracle.com/technetwork/java/codeconvtoc-136057.html) を尊重してください。ただしインデントはスペース4つです。  
また、Facebook4J は Java 5 と互換性を持つように設計されているため Java 6 以降で導入されたAPIは利用しません。

# 課題管理 {#issue-management}
Facebook4J はアトラシアン社の提供する課題管理ツール、[JIRA](https://roundrop.atlassian.net/browse/FFJ) を使ってバグ管理を行っています。  
[![JIRA](/images/jira.png)](https://roundrop.atlassian.net/browse/FFJ)  
[アトラシアン オンデマンド](https://www.atlassian.com/ja/software/ondemand/overview) 上で運用しています。  
Atlassian は Facebook4J.org に Atlassian OnDemand の Open Source Project License を提供しています。

# 継続ビルド {#ci}
Facebook4Jは継続ビルドに [Jenkins](https://roundrop.ci.cloudbees.com/job/F4J/) を使っています。  
[![Jenkins](/images/jenkins_logo.png)](https://roundrop.ci.cloudbees.com/job/F4J/)  
[CloudBees](http://www.cloudbees.com) 上で運用しています。

# IDE {#ide}
Facecbook4J は Maven ベースのプロジェクトなので好きな IDE を利用することができます。JetBrains は Facebook4J.org に IntelliJ IDEA の Open Source Project License を提供しています。パッチを書いたことのある方はこの IntelliJ IDEA のライセンスファイルを使うことができます。詳しくは roundrop@gmail.com までお問い合わせください。
