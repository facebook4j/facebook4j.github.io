---
layout: default
title: コードサンプル | Facebook4J - A most easily usable Facebook API wrapper in Java
description: Facebook4Jのコードサンプル
keywords: コードサンプル,facebook4j,使い方
---
# コード例

## Facebook インスタンスの取得 {#getting_facebook_instance}
Facebook4J を使うには、まず Facebook インスタンスを取得する必要があります。  
FacebookFactory.getInstance() で Facebook インスタンスを得ることができます。  

    Facebook facebook = new FacebookFactory().getInstance();

このとき、 facebook4j.properties に App ID/App Secret/アクセストークン/パーミッション が 記載されていれば、返される Facebook インスタンスにそれらは読み込まれています。  
facebook4j.properties の設定方法については [設定 | Facebook4J - A Java library for the Facebook Graph API](/ja/configuration.html) のページをご覧ください。  
記載がない場合でも、以下のようにすれば後から設定可能です。

    facebook.setOAuthAppId(appId, appSecret);
    facebook.setOAuthPermissions(commaSeparetedPermissions);
    facebook.setOAuthAccessToken(new AccessToken(accessToken, null));


- - -

## OAuth 認可 {#oauth}

### ユーザーアクセストークンの取得

Facebook のアカウントで Web アプリケーションの認証を行うことができます。  
実装例が [https://github.com/roundrop/facebook4j-oauth-example](https://github.com/roundrop/facebook4j-oauth-example) にあります。

### App アクセストークンの取得
Facebook.getOAuthAppAccessToken() メソッドで App アクセストークンを取得できます。

    facebook.getOAuthAppAccessToken();

### ページアクセストークンの取得
以下のようにしてページアクセストークンを取得できます。

    ResponseList<Account> accounts = facebook.getAccounts();
    Account yourPageAccount = accounts.get(0);  // インデックス0がFacebookページのアカウントの場合
    String pageAccessToken = yourPageAccount.getAccessToken();

- - -

## メッセージ投稿 {#post_message}
Facebook.postStatusMessage() メソッドでメッセージ投稿できます。

    facebook.postStatusMessage("Hello World from Facebook4J.");

- - -

## シェアする {#post_link}
Facebook.postFeed() メソッドにURLや説明などを指定することでシェアできます。

    PostUpdate post = new PostUpdate(new URL("http://facebook4j.org"))
                        .picture(new URL("http://facebook4j.org/images/hero.png"))
                        .name("Facebook4J - A Java library for the Facebook Graph API")
                        .caption("facebook4j.org")
                        .description("Facebook4J is a Java library for the Facebook Graph API.");
    facebook.postFeed(post);

Facebook.postLink() メソッドでURLのみやURLとメッセージだけでもシェアできます。

    facebook.postLink(new URL("http://facebook4j.org"));
    facebook.postLink(new URL("http://facebook4j.org"), "A Java library for the Facebook Graph API");

- - -

## ニュースフィードの取得 {#getting_newsfeed}
Facebook.getHome() メソッドでニュースフィードを取得できます。

    ResponseList<Post> feed = facebook.getHome();

- - -

## いいねする {#post_like}
Facebook.like\*\*\*\*() メソッドで投稿や写真などに対していいねできます。

    facebook.likePost(postId);

また、 Facebook.unlike\*\*\*\*() メソッドでいいねを取り消しできます。

    facebook.unlikePost(postId);

- - -

## コメントする {#post_comment}
Facebook.comment\*\*\*\*() メソッドで投稿や写真などに対してコメントを投稿できます。

    facebook.commentPhoto(photoId, "It's a nice photo!");

- - -

## 検索する {#search}
Facebook.search\*\*\*\*() メソッドで投稿やユーザーなどを検索できます。

### 公開されている投稿を検索

    ResponseList<Post> results = facebook.searchPosts("watermelon");

### ユーザーを検索

    ResponseList<User> results = facebook.searchUsers("mark");

### イベントを検索

    ResponseList<Event> results = facebook.searchEvents("conference");

### グループを検索

    ResponseList<Group> results = facebook.searchGroups("programming");

### 場所を検索

    // 名前で検索
    ResponseList<Place> results = facebook.searchPlaces("coffee");
    
    // 特定の位置からの距離で検索
    GeoLocation center = new GeoLocation(37.76, -122.427);
    int distance = 1000;
    ResponseList<Place> searchPlaces("coffee", center, distance);

### チェックインを検索

    // 自分と友達の最近のチェックインを検索
    ResponseList<Checkin> results = facebook.searchCheckins();
    

### 位置情報を検索

    // 特定の位置からの距離で検索
    GeoLocation center = new GeoLocation(37.76, -122.427);
    int distance = 1000;
    ResponseList<Location> searchLocations(center, distance);
    
    // 特定の場所での情報を検索
    String placeId = "166793820034304";
    ResponseList<Location> locations = facebookBestFriend1.searchLocations(placeId);


- - -

## FQL の実行 {#execute_fql}
Facebook.executeFQL() で FQL を実行できます。  
Facebook.executeMultiFQL() で 1回のコールで複数FQL を実行できます。

    // Single FQL
    String query = "SELECT uid2 FROM friend WHERE uid1=me()";
    JSONArray jsonArray = facebook.executeFQL(query);
    for (int i = 0; i < jsonArray.length(); i++) {
        JSONObject jsonObject = jsonArray.getJSONObject(i);
        System.out.println(jsonObject.get("uid2"));
    }

    // Multiple FQL
    Map<String, String> queries = new HashMap<String, String>();
    queries.put("all friends", "SELECT uid2 FROM friend WHERE uid1=me()");
    queries.put("my name", "SELECT name FROM user WHERE uid=me()");
    Map<String, JSONArray> result = facebook.executeMultiFQL(queries);
    JSONArray allFriendsJSONArray = result.get("all friends");
    for (int i = 0; i < allFriendsJSONArray.length(); i++) {
        JSONObject jsonObject = allFriendsJSONArray.getJSONObject(i);
        System.out.println(jsonObject.get("uid2"));
    }
    JSONArray myNameJSONArray = result.get("my name");
    System.out.println(myNameJSONArray.getJSONObject(0).get("name"));


- - -

## 取得オプション {#reading}
引数に Reading クラスのあるメソッドについては、様々な読み込みオプションを指定できます。

### 特定の項目のみ取得する
Reading.fields("項目名1,項目名2,...") で特定の項目のみ取得する指定ができます。

    // ユーザーのメールアドレスのみ取得
    User user = facebook1.getUser(id1.getId(), new Reading().fields("email"));

### limit/offset

    // 公開フィードの10件を取得
    ResponseList<Post> results = facebook.searchPosts("watermelon", new Reading().limit(10));
    
    // 11件目～20件目を取得
    ResponseList<Post> results = facebook.searchPosts("watermelon", new Reading().limit(10).offset(10));

### until/since
until/since には [PHPのstrtotime](http://php.net/manual/en/function.strtotime.php) の形式が指定できます。

    ResponseList<Post> results = facebook.searchPosts("watermelon", new Reading().until("yesterday"));


- - -

## ページング {#paging}
情報取得後の Paging オブジェクトを用いて、 Facebook.fetchNext() / Facebook.fetchPrevious() を呼び出すことで次ページ/前ページを取得できます。

    ResponseList<Option> page1 = facebook.getQuestionOptions(questionId);
    
    // 次ページを取得
    Paging<Option> paging1 = page1.getPaging();
    ResponseList<Option> page2 = facebook.fetchNext(paging1);
    
    // 前ページを取得
    Paging<Option> paging2 = page2.getPaging();
    page1 = facebook.fetchPrevious(paging2);
