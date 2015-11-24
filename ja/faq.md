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

    restBaseURL=https://graph.facebook.com/v2.0/

## ConfigurationBuilder で指定する場合
[ConfigurationBuilder](/javadoc/facebook4j/conf/ConfigurationBuilder.html) で以下のようにして指定してください。

    ConfigurationBuilder cb = new ConfigurationBuilder();
    cb.setDebugEnabled(true)
      :
      .setRestBaseURL("https://graph.facebook.com/v2.0/");  // <- set v2.0
    FacebookFactory ff = new FacebookFactory(cb.build());
    Facebook facebook = ff.getInstance();

## システムプロパティ で指定する場合
システムプロパティから設定する場合はプロパティ名の先頭に “facebook4j.” をつける必要があることに注意してください。

    $ java -Dfacebook4j.debug=true
        :
        -Dfacebook4j.restBaseURL=https://graph.facebook.com/v2.0/
        :

# 2. アクセストークンの有効期限を延長するにはどうすればよいですか？ {#extendtoken}

Facebook のドキュメント: [Expiration and Extension of Access Tokens](https://developers.facebook.com/docs/facebook-login/access-tokens/expiration-and-extension)

以下のようにして、短命のアクセストークンの有効期限を延長することができます:

    AccessToken extendedToken = facebook.extendTokenExpiration(shortLivedToken);

# 3. 再認証するには？ {reauthentication}

Facebook のドキュメント: [Re-Authentication](https://developers.facebook.com/docs/facebook-login/reauthentication)

以下のようにして、再認証のための URL を取得できます:

    String reAuthUrl = facebook.getOAuthReAuthenticationURL(callbackURL, "random_nonce");

2nd argument is 'auth_nonce' parameter that is a completely arbitrary alphanumeric code that your app generates.
It can be used to provide [replay protection](http://en.wikipedia.org/wiki/Replay_attack).
You should check this nonce hasn't been used before.

# 4. パーミッションの認可を問い合わせるには？ {#reask}

Facebook のドキュメント: [Re-asking for Declined Permissions](https://developers.facebook.com/docs/facebook-login/web#re-asking-declined-permissions)

Facebook ログインのベストプラクティスとしては、同時に読み取り権限および公開の権限を要求しないことです。ログインした後でも必要な権限は都度求めることができます。

    AuthOption authOption = new DialogAuthOption().authType(AuthType.REREQUEST);
    String url = facebook.getOAuthAuthorizationURL(callbackURL, authOption);
