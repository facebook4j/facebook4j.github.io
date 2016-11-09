---
layout: default
title: 问答 - 使用Java编写的非常简洁易用的Facebook图谱API工具包
description: Facebook4J是开源的, Maven仓库管理. 你可以轻松使用Facebook4j进行Facebook图谱API开发
keywords: FAQ,facebook4j
---
# 1. How do I specify API version of Facebook? {#apiversion}

You can specify in the configuration.

## via facebook4j.properties
Please add the following to the facebook4j.properties of your application.

    restBaseURL=https://graph.facebook.com/v2.0/

## via ConfigurationBuilder
Please set the API version to [ConfigurationBuilder](/javadoc/facebook4j/conf/ConfigurationBuilder.html) .

    ConfigurationBuilder cb = new ConfigurationBuilder();
    cb.setDebugEnabled(true)
      :
      .setRestBaseURL("https://graph.facebook.com/v2.0/");  // <- set v2.0
    FacebookFactory ff = new FacebookFactory(cb.build());
    Facebook facebook = ff.getInstance();

## via System Properties
Note that you need “facebook4j.” prefix.

    $ java -Dfacebook4j.debug=true
        :
        -Dfacebook4j.restBaseURL=https://graph.facebook.com/v2.0/
        :

# 2. How to extend expiration of my access token? {#extendtoken}

See Facebook's Documentation: [Expiration and Extension of Access Tokens](https://developers.facebook.com/docs/facebook-login/access-tokens/expiration-and-extension)

You can extend expiration of your short-lived access token as below:

    AccessToken extendedToken = facebook.extendTokenExpiration(shortLivedToken);

# 3. How to Re-Authentication my app? {reauthentication}

See Facebook's Documentation: [Re-Authentication](https://developers.facebook.com/docs/facebook-login/reauthentication)

You can build your force Re-Authentication URL as below:

    String reAuthUrl = facebook.getOAuthReAuthenticationURL(callbackURL, "random_nonce");

2nd argument is 'auth_nonce' parameter that is a completely arbitrary alphanumeric code that your app generates.
It can be used to provide [replay protection](http://en.wikipedia.org/wiki/Replay_attack).
You should check this nonce hasn't been used before.

# 4. How to re-ask for a declined permissions? {#reask}

See Facebook's Documentation: [Re-asking for Declined Permissions](https://developers.facebook.com/docs/facebook-login/web#re-asking-declined-permissions)

One of the best practices with Facebook Login is to not request read permissions and publishing permissions at the same time. To support this your app can ask for more permissions later, well after someone has logged in.

    AuthOption authOption = new DialogAuthOption().authType(AuthType.REREQUEST);
    String url = facebook.getOAuthAuthorizationURL(callbackURL, authOption);
