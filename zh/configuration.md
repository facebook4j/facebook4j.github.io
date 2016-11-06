---
layout: default
title: 配置 - 使用Java编写的非常简洁易用的Facebook图谱API工具包
description: Facebook4J是开源的, Maven仓库管理. 你可以轻松使用Facebook4j进行Facebook图谱API开发
---
<div class="hero-unit">
  定义Facebook的API版本，可以参考文档 <a href="/en/faq.html#apiversion">查看</a>.
</div>

# 通用配置 {#generic_properties}
可以使用facebook4j.properties，ConfigurationBuilder或者是System Property为Facebook4J配置一些参数。

## 通过facebook4j.properties配置
创建名字为facebook4j.properties的文件，放在环境变量目录。

    debug=true
    oauth.appId=****************
    oauth.appSecret=********************************
    oauth.accessToken=********************************
    oauth.permissions=email,publish_stream,...

- - -

## 通过ConfigurationBuilder配置
通过[ConfigurationBuilder](/javadoc/facebook4j/conf/ConfigurationBuilder.html)配置。

    ConfigurationBuilder cb = new ConfigurationBuilder();
    cb.setDebugEnabled(true)
      .setOAuthAppId("*********************")
      .setOAuthAppSecret("******************************************")
      .setOAuthAccessToken("**************************************************")
      .setOAuthPermissions("email,publish_stream,...");
    FacebookFactory ff = new FacebookFactory(cb.build());
    Facebook facebook = ff.getInstance();

- - -

## 通过系统的配置
通过系统的变量配置的时候需要每一个变量都以facebook4j.开头

    $ java -Dfacebook4j.debug=true
        -Dfacebook4j.oauth.appId=*********************
        -Dfacebook4j.oauth.appSecret=******************************************
        -Dfacebook4j.oauth.accessToken=**************************************************
        -Dfacebook4j.oauth.permissions=email,publish_stream,...
        -cp facebook4j-core-2.4.7.jar:yourApp.jar yourpackage.Main

- - -

## 通过环境变量配置
通过系统的环境变量配置，需要每一个变量都以facebook4j.开头

*NIX系统:
    $ export facebook4j.debug=true
    $ export facebook4j.oauth.appId=*********************
    $ export facebook4j.oauth.appSecret=******************************************
    $ export facebook4j.oauth.accessToken=**************************************************
    $ export facebook4j.oauth.permissions=email,publish_stream,...
    $ java -cp facebook4j-core-2.4.7.jar:yourApp.jar yourpackage.Main

在Heroku上面:

    $ heroku config:add facebook4j.oauth.appId=*********************
    $ heroku config:add facebook4j.oauth.appSecret=******************************************
    $ heroku config:add facebook4j.oauth.accessToken=**************************************************
    $ heroku config:add facebook4j.oauth.permissions=email,publish_stream,...
    $ git push heroku master

- - -

# 其他配置 {#configuration_properties}

## 一般.
<table class="bordered-table zebra-striped" style="width: auto;">
<thead><tr><th style="width: 150px;">配置名称</th><th>描述</th><th style="width: 70px;">默认值</th></tr></thead>
<tbody>
<tr><td>debug</td><td>是否输出日志，只有内置log工具时候生效</td><td>false</td></tr>
<tr><td>jsonStoreEnabled</td><td>如果设置为true，原始的JSON会存储到DataObjectFactory</td><td>false</td></tr>
<tr><td>mbeanEnabled</td><td>如果设置为true，Mbean会被注册</td><td>false</td></tr>
<tr><td>loggerFactory</td><td>Logger实现<br />
支持的实现:<br />
 facebook4j.internal.logging.SLF4JLoggerFactory<br />
 facebook4j.internal.logging.CommonsLoggingLoggerFactory<br />
 facebook4j.internal.logging.Log4JLoggerFactory<br />
 facebook4j.internal.logging.JULLoggerFactory<br />
 facebook4j.internal.logging.NullLoggerFactory<br />
 facebook4j.internal.logging.StdNullLoggerFactory</td><td>null</td></tr>
</tbody>
</table>

## 授权
<table class="bordered-table zebra-striped" style="width: auto;">
<thead><tr><th style="width: 150px;">配置名称</th><th>描述</th><th style="width: 70px;">默认值</th></tr></thead>
<tbody>
<tr><td>oauth.appId</td><td>配置OAuth App ID</td><td>null</td></tr>
<tr><td>oauth.appSecret</td><td>配置 OAuth App Secret</td><td>null</td></tr>
<tr><td>oauth.accessToken</td><td>配置 OAuth access token</td><td>null</td></tr>
<tr><td>oauth.permissions</td><td>配置 OAuth permissions<br />
可选的配置<br />
See <a href="https://developers.facebook.com/docs/reference/login/#permissions">https://developers.facebook.com/docs/reference/login/#permissions</a>
for the detail.</td><td>null</td></tr>
<tr><td>oauth.callbackURL</td><td>配置 OAuth callback URL</td><td>null</td></tr>
</tbody>
</table>

## 安全
<table class="bordered-table zebra-striped" style="width: auto;">
<thead><tr><th style="width: 150px;">配置名称</th><th>描述</th><th style="width: 70px;">默认值</th></tr></thead>
<tbody>
<tr><td>security.appSecretProofEnabled</td><td>如果设置为true，请求API的时候会添加appsecret_proof参数</td><td>false</td></tr>
<tr><td>security.appSecretProofCacheSize</td><td>appsecret_proof的缓存大小</td><td>10</td></tr>
</tbody>
</table>

## HTTP连接
<table class="bordered-table zebra-striped" style="width: auto;">
<thead><tr><th style="width: 150px;">配置名称</th><th>描述</th><th style="width: 70px;">默认值</th></tr></thead>
<tbody>
<tr><td>http.connectionTimeout</td><td>Http连接超时的毫秒数</td><td>20000</td></tr>
<tr><td>http.readTimeout</td><td>读取超时毫秒数</td><td>120000</td></tr>
<tr><td>http.retryCount</td><td>重试次数</td><td>0</td></tr>
<tr><td>http.retryIntervalSecs</td><td>重试时间间隔</td><td>5</td></tr>
<tr><td>http.prettyDebug</td><td>是否格式化输出</td><td>false</td></tr>
</tbody>
</table>

## HTTP代理
<table class="bordered-table zebra-striped" style="width: auto;">
<thead><tr><th style="width: 150px;">配置名称</th><th>描述</th><th style="width: 70px;">默认值</th></tr></thead>
<tbody>
<tr><td>http.proxyHost</td><td>代理地址</td><td>null</td></tr>
<tr><td>http.proxyPort</td><td>代理端口号</td><td>null</td></tr>
<tr><td>http.proxyUser</td><td>代理用户名</td><td>null</td></tr>
<tr><td>http.proxyPassword</td><td>代理密码</td><td>null</td></tr>
</tbody>
</table>

## 地址
<table class="bordered-table zebra-striped" style="width: auto;">
<thead><tr><th style="width: 150px;">配置名称</th><th>描述</th><th style="width: 70px;">默认值</th></tr></thead>
<tbody>
<tr><td>restBaseURL</td><td>API地址</td><td>https://graph.facebook.com/</td></tr>
<tr><td>videoBaseURL</td><td>视频API的地址</td><td>https://graph-video.facebook.com/</td></tr>
<tr><td>oauth.authorizationURL</td><td>授权API地址</td><td>https://www.facebook.com/dialog/oauth</td></tr>
<tr><td>oauth.accessTokenURL</td><td>获取令牌地址</td><td>https://graph.facebook.com/oauth/access_token</td></tr>
<tr><td>oauth.accessTokenInfoURL</td><td>获取令牌信息地址</td><td>https://graph.facebook.com/oauth/access_token_info</td></tr>
<tr><td>oauth.deviceTokenURL</td><td>获取设备令牌地址</td><td>http://graph.facebook.com/oauth/device</td></tr>
</tbody>
</table>

- - -

# 日志配置 {#logger_configuration}
Facebook4J默认是标准输出，如果SLF4J, Commons-Logging, Log4J 在环境变量里面，会选择其中的日志工具。可以通过Dfacebook4j.loggerFactory=facebook4j.internal.logging.NullLoggerFactory禁用默认的日志输出。
