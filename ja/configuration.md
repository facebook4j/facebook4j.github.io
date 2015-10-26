---
layout: default
title: 設定 | Facebook4J - A most easily usable Facebook API wrapper in Java
description: Facebook4Jの設定
keywords: 設定,facebook4j
---
<div class="hero-unit">
  Facebook の API バージョンの指定方法は <a href="/ja/faq.html#apiversion">こちら</a>
</div>

# 一般設定 {#generic_properties}
Facebook4J はいくつもの設定可能なプロパティが存在します。プロパティは facebook4j.properties ファイルから、ConfigurationBuilderクラスから、またはシステムプロパティから設定できます。

## facebook4j.properties から
標準的なプロパティファイルを "facebook4j.properties" という名前で保存します。 "facebook4j.properties" はカレントディレクトリ、またはクラスパスのルート(WEB-INF/classes等)に配置してください。 

    debug=true
    oauth.appId=****************
    oauth.appSecret=********************************
    oauth.accessToken=********************************
    oauth.permissions=email,publish_stream,...

- - -

## ConfigurationBuilder から
[ConfigurationBuilder](/javadoc/facebook4j/conf/ConfigurationBuilder.html) クラスを使うと以下のようにプログラムから設定をすることができます。

    ConfigurationBuilder cb = new ConfigurationBuilder();
    cb.setDebugEnabled(true)
      .setOAuthAppId("*********************")
      .setOAuthAppSecret("******************************************")
      .setOAuthAccessToken("**************************************************")
      .setOAuthPermissions("email,publish_stream,...");
    FacebookFactory ff = new FacebookFactory(cb.build());
    Facebook facebook = ff.getInstance();

- - -

## システムプロパティ から
システムプロパティから設定をすることもできます。システムプロパティから設定する場合はプロパティ名の先頭に "facebook4j." をつける必要があることに注意してください。 

    $ java -Dfacebook4j.debug=true
        -Dfacebook4j.oauth.appId=*********************
        -Dfacebook4j.oauth.appSecret=******************************************
        -Dfacebook4j.oauth.accessToken=**************************************************
        -Dfacebook4j.oauth.permissions=email,publish_stream,...
        -cp facebook4j-core-1.1.0.jar:yourApp.jar yourpackage.Main

- - -

## 環境変数から
OSの環境変数から設定をすることもできます。環境変数から設定する場合はプロパティ名の先頭に "facebook4j." をつける必要があることに注意してください。

    $ export facebook4j.debug=true
    $ export facebook4j.oauth.appId=*********************
    $ export facebook4j.oauth.appSecret=******************************************
    $ export facebook4j.oauth.accessToken=**************************************************
    $ export facebook4j.oauth.permissions=email,publish_stream,...
    $ java -cp facebook4j-core-2.3.1.jar:yourApp.jar yourpackage.Main

On Heroku:

    $ heroku config:add facebook4j.oauth.appId=*********************
    $ heroku config:add facebook4j.oauth.appSecret=******************************************
    $ heroku config:add facebook4j.oauth.accessToken=**************************************************
    $ heroku config:add facebook4j.oauth.permissions=email,publish_stream,...
    $ git push heroku master

- - -

# プロパティ一覧 {#configuration_properties}

## 一般
<table class="bordered-table zebra-striped" style="width: auto;">
<thead><tr><th style="width: 150px;">プロパティ名</th><th>説明</th><th style="width: 70px;">デフォルト値</th></tr></thead>
<tbody>
<tr><td>debug</td><td>デバッグ有効化フラグ。内蔵 Logger 使用時のみ有効。</td><td>false</td></tr>
<tr><td>jsonStoreEnabled</td><td>DataObjectFactoryにJSONデータを保存するかどうかのフラグ。</td><td>false</td></tr>
<tr><td>mbeanEnabled</td><td>MBeanを有効化するかどうかのフラグ。</td><td>false</td></tr>
<tr><td>loggerFactory</td><td>ログ出力実装<br />
サポートされる実装:<br />
 facebook4j.internal.logging.SLF4JLoggerFactory<br />
 facebook4j.internal.logging.CommonsLoggingLoggerFactory<br />
 facebook4j.internal.logging.Log4JLoggerFactory<br />
 facebook4j.internal.logging.JULLoggerFactory<br />
 facebook4j.internal.logging.NullLoggerFactory<br />
 facebook4j.internal.logging.StdNullLoggerFactory</td><td>null</td></tr>
</tbody>
</table>

## OAuth
<table class="bordered-table zebra-striped" style="width: auto;">
<thead><tr><th style="width: 150px;">プロパティ名</th><th>説明</th><th style="width: 70px;">デフォルト値</th></tr></thead>
<tbody>
<tr><td>oauth.appId</td><td>デフォルトの App ID</td><td>null</td></tr>
<tr><td>oauth.appSecret</td><td>デフォルトの App Secret</td><td>null</td></tr>
<tr><td>oauth.accessToken</td><td>デフォルトの OAuth アクセストークン</td><td>null</td></tr>
<tr><td>oauth.permissions</td><td>デフォルトの OAuth パーミッション<br />
パーミッション名をカンマ区切りで指定<br />
パーミッション名は Facebook の Webサイトで確認してください。<br />
<a href="https://developers.facebook.com/docs/reference/login/#permissions">https://developers.facebook.com/docs/reference/login/#permissions</a></td><td>null</td></tr>
<tr><td>oauth.callbackURL</td><td>デフォルトの OAuth コールバック URL</td><td>null</td></tr>
</tbody>
</table>

## セキュリティ
<table class="bordered-table zebra-striped" style="width: auto;">
<thead><tr><th style="width: 150px;">Property name</th><th>Description</th><th style="width: 70px;">Default<br />value</th></tr></thead>
<tbody>
<tr><td>security.appSecretProofEnabled</td><td>API コール毎に自動的に 'appsecret_proof' パラメータを付加するかどうかのフラグ。</td><td>false</td></tr>
<tr><td>security.appSecretProofCacheSize</td><td>'appsecret_proof' のキャッシュサイズ。</td><td>10</td></tr>
</tbody>
</table>

## HTTP接続
<table class="bordered-table zebra-striped" style="width: auto;">
<thead><tr><th style="width: 150px;">プロパティ名</th><th>説明</th><th style="width: 70px;">デフォルト値</th></tr></thead>
<tbody>
<tr><td>http.connectionTimeout</td><td>HTTP接続タイムアウト(ミリ秒)</td><td>20000</td></tr>
<tr><td>http.readTimeout</td><td>HTTPリードタイムアウト(ミリ秒)</td><td>120000</td></tr>
<tr><td>http.retryCount</td><td>HTTPリトライ回数</td><td>0</td></tr>
<tr><td>http.retryIntervalSecs</td><td>HTTPリトライ間隔(秒)</td><td>5</td></tr>
<tr><td>http.prettyDebug</td><td>デバッグ出力を整形するかどうか</td><td>false</td></tr>
</tbody>
</table>

## HTTPプロキシサーバ
<table class="bordered-table zebra-striped" style="width: auto;">
<thead><tr><th style="width: 150px;">プロパティ名</th><th>説明</th><th style="width: 70px;">デフォルト値</th></tr></thead>
<tbody>
<tr><td>http.proxyHost</td><td>HTTPプロキシサーバホスト名</td><td>null</td></tr>
<tr><td>http.proxyPort</td><td>HTTPプロキシサーバポート番号</td><td>null</td></tr>
<tr><td>http.proxyUser</td><td>HTTPプロキシサーバユーザ名</td><td>null</td></tr>
<tr><td>http.proxyPassword</td><td>HTTPプロキシサーバパスワード</td><td>null</td></tr>
</tbody>
</table>

## ベースURL
<table class="bordered-table zebra-striped" style="width: auto;">
<thead><tr><th style="width: 150px;">プロパティ名</th><th>説明</th><th style="width: 70px;">デフォルト値</th></tr></thead>
<tbody>
<tr><td>restBaseURL</td><td>API のベース URL</td><td>https://graph.facebook.com/</td></tr>
<tr><td>videoBaseURL</td><td>Video API のベース URL</td><td>https://graph-video.facebook.com/</td></tr>
<tr><td>oauth.authorizationURL</td><td>OAuth 認可の URL</td><td>https://www.facebook.com/dialog/oauth</td></tr>
<tr><td>oauth.accessTokenURL</td><td>OAuth アクセストークン取得の URL</td><td>https://graph.facebook.com/oauth/access_token</td></tr>
</tbody>
</table>

- - -

# ログ設定 {#logger_configuration}
デフォルトで Facebook4J は標準出力にログを記録します。SLF4J, Commons-Logging, Log4J のいずれかがクラスパスに存在する場合はそのログライブラリを使ってメッセージが出力されます。-Dfacebook4j.loggerFactory=facebook4j.internal.logging.NullLoggerFactory をシステムプロパティに指定することでログ出力を止めることも出来ます。 
