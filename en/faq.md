---
layout: default
title: FAQ | Facebook4J - A most easily usable Facebook API wrapper in Java
description: Facebook4J - FAQ
keywords: FAQ,facebook4j
---
# 1. How do I specify API version of Facebook? {#apiversion}

You can specify in the configuration.

## via facebook4j.properties
Please add the following to the facebook4j.properties of your application.

    restBaseURL=https://graph.facebook.com/v1.0/

## via ConfigurationBuilder
Please set the API version to [ConfigurationBuilder](/javadoc/facebook4j/conf/ConfigurationBuilder.html) .

    ConfigurationBuilder cb = new ConfigurationBuilder();
    cb.setDebugEnabled(true)
      :
      .setRestBaseURL("https://graph.facebook.com/v1.0/");  // <- set v1.0
    FacebookFactory ff = new FacebookFactory(cb.build());
    Facebook facebook = ff.getInstance();

## via System Properties
Note that you need “facebook4j.” prefix.

    $ java -Dfacebook4j.debug=true
        :
        -Dfacebook4j.restBaseURL=https://graph.facebook.com/v1.0/
        :
