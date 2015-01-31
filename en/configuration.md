---
layout: default
title: Configuration | Facebook4J - A most easily usable Facebook API wrapper in Java
description: Configuration for Facebook4J
keywords: configuration,facebook4j
---
<div class="hero-unit">
  How to specify the API version of Facebook, please see <a href="/en/faq.html#apiversion">here</a>.
</div>

# Generic properties {#generic_properties}
There are a number of properties available for configuring Facebook4J. You can specify properties via facebook4j.properties file, ConfigurationBuilder class or System Property as follows :

## via facebook4j.properties
Save a standard properties file named "facebook4j.properties". Place it to either the current directory, root of the classpath directory.

    debug=true
    oauth.appId=****************
    oauth.appSecret=********************************
    oauth.accessToken=********************************
    oauth.permissions=email,publish_stream,...

- - -

## via ConfigurationBuilder
You can use [ConfigurationBuilder](/javadoc/facebook4j/conf/ConfigurationBuilder.html) class to configure Facebook4J programatically as follows: 

    ConfigurationBuilder cb = new ConfigurationBuilder();
    cb.setDebugEnabled(true)
      .setOAuthAppId("*********************")
      .setOAuthAppSecret("******************************************")
      .setOAuthAccessToken("**************************************************")
      .setOAuthPermissions("email,publish_stream,...");
    FacebookFactory ff = new FacebookFactory(cb.build());
    Facebook facebook = ff.getInstance();

- - -

## via System Properties
You can configure Facebook4J via System properties as well. Note that you need "facebook4j." prefix.

    $ java -Dfacebook4j.debug=true
        -Dfacebook4j.oauth.appId=*********************
        -Dfacebook4j.oauth.appSecret=******************************************
        -Dfacebook4j.oauth.accessToken=**************************************************
        -Dfacebook4j.oauth.permissions=email,publish_stream,...
        -cp facebook4j-core-2.2.2.jar:yourApp.jar yourpackage.Main

- - -

## via environment variables
You can configure Facebook4J via environment variables as well. Note that you need "facebook4j." prefix. This makes it easier to test, stage and deploy apps running on Heroku.

    $ export facebook4j.debug=true
    $ export facebook4j.oauth.appId=*********************
    $ export facebook4j.oauth.appSecret=******************************************
    $ export facebook4j.oauth.accessToken=**************************************************
    $ export facebook4j.oauth.permissions=email,publish_stream,...
    $ java -cp facebook4j-core-2.2.2.jar:yourApp.jar yourpackage.Main

On Heroku:

    $ heroku config:add facebook4j.oauth.appId=*********************
    $ heroku config:add facebook4j.oauth.appSecret=******************************************
    $ heroku config:add facebook4j.oauth.accessToken=**************************************************
    $ heroku config:add facebook4j.oauth.permissions=email,publish_stream,...
    $ git push heroku master

- - -

# Available Configuration Properties {#configuration_properties}

## Misc.
<table class="bordered-table zebra-striped" style="width: auto;">
<thead><tr><th style="width: 150px;">Property name</th><th>Description</th><th style="width: 70px;">Default<br />value</th></tr></thead>
<tbody>
<tr><td>debug</td><td>Enables deubg output. Effective only with the embedded logger.</td><td>false</td></tr>
<tr><td>jsonStoreEnabled</td><td>If set to true, raw JSON forms will be stored in DataObjectFactory.</td><td>false</td></tr>
<tr><td>mbeanEnabled</td><td>If set to true, mbean will be registerd.</td><td>false</td></tr>
<tr><td>loggerFactory</td><td>Logger implimentation<br />
Supported implimentations:<br />
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
<thead><tr><th style="width: 150px;">Property name</th><th>Description</th><th style="width: 70px;">Default<br />value</th></tr></thead>
<tbody>
<tr><td>oauth.appId</td><td>Default OAuth App ID</td><td>null</td></tr>
<tr><td>oauth.appSecret</td><td>Default OAuth App Secret</td><td>null</td></tr>
<tr><td>oauth.accessToken</td><td>Default OAuth access token</td><td>null</td></tr>
<tr><td>oauth.permissions</td><td>Default OAuth permissions<br />
Comma separeted permission names<br />
See <a href="https://developers.facebook.com/docs/reference/login/#permissions">https://developers.facebook.com/docs/reference/login/#permissions</a>
for the detail.</td><td>null</td></tr>
<tr><td>oauth.callbackURL</td><td>Default OAuth callback URL</td><td>null</td></tr>
</tbody>
</table>

## Security
<table class="bordered-table zebra-striped" style="width: auto;">
<thead><tr><th style="width: 150px;">Property name</th><th>Description</th><th style="width: 70px;">Default<br />value</th></tr></thead>
<tbody>
<tr><td>security.appSecretProofEnabled</td><td>If set to true, 'appsecret_proof' parameter will be added to every API call automatically.</td><td>false</td></tr>
<tr><td>security.appSecretProofCacheSize</td><td>Cache size for computed appsecret_proof.</td><td>10</td></tr>
</tbody>
</table>

## HTTP connection
<table class="bordered-table zebra-striped" style="width: auto;">
<thead><tr><th style="width: 150px;">Property name</th><th>Description</th><th style="width: 70px;">Default<br />value</th></tr></thead>
<tbody>
<tr><td>http.connectionTimeout</td><td>Http connection timeout in milliseconds</td><td>20000</td></tr>
<tr><td>http.readTimeout</td><td>Http read timeout in milliseconds</td><td>120000</td></tr>
<tr><td>http.retryCount</td><td>Number of HTTP retries</td><td>0</td></tr>
<tr><td>http.retryIntervalSecs</td><td>HTTP retry interval in seconds</td><td>5</td></tr>
<tr><td>http.prettyDebug</td><td>prettify JSON debug output if set to true.</td><td>false</td></tr>
</tbody>
</table>

## HTTP proxy server
<table class="bordered-table zebra-striped" style="width: auto;">
<thead><tr><th style="width: 150px;">Property name</th><th>Description</th><th style="width: 70px;">Default<br />value</th></tr></thead>
<tbody>
<tr><td>http.proxyHost</td><td>HTTP proxy server host name</td><td>null</td></tr>
<tr><td>http.proxyPort</td><td>HTTP proxy server port</td><td>null</td></tr>
<tr><td>http.proxyUser</td><td>HTTP proxy server user name</td><td>null</td></tr>
<tr><td>http.proxyPassword</td><td>HTTP proxy server password</td><td>null</td></tr>
</tbody>
</table>

## Base URLs
<table class="bordered-table zebra-striped" style="width: auto;">
<thead><tr><th style="width: 150px;">Property name</th><th>Description</th><th style="width: 70px;">Default<br />value</th></tr></thead>
<tbody>
<tr><td>restBaseURL</td><td>API base URL</td><td>https://graph.facebook.com/</td></tr>
<tr><td>videoBaseURL</td><td>Video API base URL</td><td>https://graph-video.facebook.com/</td></tr>
<tr><td>oauth.authorizationURL</td><td>OAuth authorization URL</td><td>https://www.facebook.com/dialog/oauth</td></tr>
<tr><td>oauth.accessTokenURL</td><td>OAuth access token URL</td><td>https://graph.facebook.com/oauth/access_token</td></tr>
</tbody>
</table>

- - -

# Logger Configuration {#logger_configuration}
By default, Facebook4J prints log messages to standard output. If any of SLF4J, Commons-Logging, Log4J is in the classpath, log messages will be printed via the available logging library. You can disable logging by specifying -Dfacebook4j.loggerFactory=facebook4j.internal.logging.NullLoggerFactory to the system properties.
