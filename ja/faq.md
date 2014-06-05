---
layout: default
title: よくある質問 | Facebook4J - A most easily usable Facebook API wrapper in Java
description: Facebook4J - よくある質問
keywords: よくある質問,facebook4j
---
# 1. Facebook の API バージョンを明示的に指定するにはどうすればよいですか？ {#apiversion}

設定で明示的に指定できます。

## facebook4j.properties で指定する場合
facebook4j.properties に以下を追加してください。

    restBaseURL=https://graph.facebook.com/v1.0/

## ConfigurationBuilder で指定する場合
[ConfigurationBuilder](/javadoc/facebook4j/conf/ConfigurationBuilder.html) で以下のようにして指定してください。

    ConfigurationBuilder cb = new ConfigurationBuilder();
    cb.setDebugEnabled(true)
      :
      .setRestBaseURL("https://graph.facebook.com/v1.0/");  // <- set v1.0
    FacebookFactory ff = new FacebookFactory(cb.build());
    Facebook facebook = ff.getInstance();

## システムプロパティ で指定する場合
システムプロパティから設定する場合はプロパティ名の先頭に “facebook4j.” をつける必要があることに注意してください。

    $ java -Dfacebook4j.debug=true
        :
        -Dfacebook4j.restBaseURL=https://graph.facebook.com/v1.0/
        :
