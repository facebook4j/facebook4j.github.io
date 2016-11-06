---
layout: default
title: 代码示例 | Facebook4J - 使用Java编写的非常简洁易用的Facebook图谱API工具包
description: Facebook4J代码示例
keywords: 代码示例,facebook4j
---
# 代码示例

## 获取Facebook实例 {#getting_facebook_instance}
要使用Facebook4J首先需要获取Facebook实例，可以使用FacebookFactory.getInstance()获取.

    Facebook facebook = new FacebookFactory().getInstance();

如果在facebook4j.properties里面配置了App Id, App Secret, Access Token, Access Permission，创建Facebook 对象的时候会自动设置这些属性，详细配置参照：[Configuration | Facebook4J - A Java library for the Facebook Graph API](/en/configuration.html)。
如果没有配置，可以在实例化以后再按照如下方式设置:

    facebook.setOAuthAppId(appId, appSecret);
    facebook.setOAuthPermissions(commaSeparetedPermissions);
    facebook.setOAuthAccessToken(new AccessToken(accessToken, null));

- - -

## OAuth授权 {#oauth}

### 获取用户令牌

通过Web应用程序获取用户的令牌，详情可以参照：[https://github.com/roundrop/facebook4j-oauth-example](https://github.com/roundrop/facebook4j-oauth-example)。

### 获取应用令牌
通过Facebook.getOAuthAppAccessToken()获取：

    facebook.getOAuthAppAccessToken();

### 获取主页令牌
通过如下方法获取：

    ResponseList<Account> accounts = facebook.getAccounts();
    Account yourPageAccount = accounts.get(0);  // if index 0 is your page account.
    String pageAccessToken = yourPageAccount.getAccessToken();

### 获取设备令牌
通过Facebook提供的登录方式在你的设备上面简单并且安全的获取令牌，详细参照：
([Facebook Login for Devices](https://developers.facebook.com/docs/facebook-login/for-devices))  
一个可用的示例[https://github.com/roundrop/facebook4j-oauth-example](https://github.com/roundrop/facebook4j-oauth-example) .

### 延长令牌的过期时间
(详情参照: [Expiration and Extension of Access Tokens](https://developers.facebook.com/docs/facebook-login/access-tokens/expiration-and-extension) )  
你可以按照下面的方法延长令牌的过期时间:

    String shortLivedToken = "your-short-lived-token";
    AccessToken extendedToken = facebook.extendTokenExpiration(shortLivedToken);

- - -

## 发布消息 {#post_message}
通过Facebook.postStatusMessage()方法发布一个消息

    facebook.postStatusMessage("Hello World from Facebook4J.");

- - -

## 发布链接 {#share_link}
通过Facebook.postFeed()方法发布链接

    PostUpdate post = new PostUpdate(new URL("http://facebook4j.org"))
                        .picture(new URL("http://facebook4j.org/images/hero.png"))
                        .name("Facebook4J - A Java library for the Facebook Graph API")
                        .caption("facebook4j.org")
                        .description("Facebook4J is a Java library for the Facebook Graph API.");
    facebook.postFeed(post);

也可以用Facebook.postLink()方法直接发布链接。

    facebook.postLink(new URL("http://facebook4j.org"));
    facebook.postLink(new URL("http://facebook4j.org"), "A Java library for the Facebook Graph API");

- - -

## 获取动态消息 {#getting_newsfeed}
Facebook.getHome()方法返回用户最新的动态消息列表。

    ResponseList<Post> feed = facebook.getHome();

- - -

## 赞 {#post_like}
可以通过Facebook.like\*\*\*\*()方法赞照片，发布的信息等等。

    facebook.likePost(postId);

同样也可以使用Facebook.unlike\*\*\*\*()方法取消对各种资源的赞。

    facebook.unlikePost(postId);

- - -

## 发布评论 {#post_comment}
可以通过Facebook.comment\*\*\*\*()方法发布一个对照片，各种发布信息的评论。

    facebook.commentPhoto(photoId, "It's a nice photo!");

- - -

## 搜索 {#search}
可以通过Facebook.search\*\*\*\*()方法搜索用户发布的信息，图片等。

### 搜索公开的内容

    ResponseList<Post> results = facebook.searchPosts("watermelon");

### 搜索用户

    ResponseList<User> results = facebook.searchUsers("mark");

### 搜索活动

    ResponseList<Event> results = facebook.searchEvents("conference");

### 搜索小组

    ResponseList<Group> results = facebook.searchGroups("programming");

### 搜索地点

    // 通过名字搜索
    ResponseList<Place> results = facebook.searchPlaces("coffee");
    
    // 通过给定的经纬度和距离搜索
    GeoLocation center = new GeoLocation(37.76, -122.427);
    int distance = 1000;
    ResponseList<Place> searchPlaces("coffee", center, distance);

### 搜索签到

    // 搜索自己或者朋友的最新签到记录，或者是签到标记
    ResponseList<Checkin> results = facebook.searchCheckins();
    

### 搜索位置

    // 基于地理坐标搜索
    GeoLocation center = new GeoLocation(37.76, -122.427);
    int distance = 1000;
    ResponseList<Location> searchLocations(center, distance);
    
    // 基于特定的地点搜索
    String placeId = "166793820034304";
    ResponseList<Location> locations = facebookBestFriend1.searchLocations(placeId);


- - -

## 执行 FQL {#execute_fql}
可以通过Facebook.executeFQL()方法执行FQL语句，同时可以通过Facebook.executeMultiFQL()方法批量的执行FQL语句

    // 一条FQL
    String query = "SELECT uid2 FROM friend WHERE uid1=me()";
    JSONArray jsonArray = facebook.executeFQL(query);
    for (int i = 0; i < jsonArray.length(); i++) {
        JSONObject jsonObject = jsonArray.getJSONObject(i);
        System.out.println(jsonObject.get("uid2"));
    }

    // 多条FQL
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

## 执行批量请求 {#execute_batch}
可以通过Facebook.executeBatch()方法执行批量请求 

    // 同时访问 "me" 和 "me/friends?limit=50" 两个接口
    BatchRequests<BatchRequest> batch = new BatchRequests<BatchRequest>();
    batch.add(new BatchRequest(RequestMethod.GET, "me"));
    batch.add(new BatchRequest(RequestMethod.GET, "me/friends?limit=50"));
    List<BatchResponse> results = facebook.executeBatch(batch);

    BatchResponse result1 = results.get(0);
    BatchResponse result2 = results.get(1);

    // 可以获取Status和Header
    int statusCode1 = result1.getStatusCode();
    String contentType = result1.getResponseHeader("Content-Type");

    // 可以通过as****()方法获取Body
    String jsonString = result1.asString();
    JSONObject jsonObject = result1.asJSONObject();
    ResponseList<JSONObject> responseList = result2.asResponseList();

    // 可以通过DataObjectFactory#create****()方法把返回的JSON转换为Java对象
    User user = DataObjectFactory.createUser(jsonString);
    Friend friend1 = DataObjectFactory.createFriend(responseList.get(0).toString());
    Friend friend2 = DataObjectFactory.createFriend(responseList.get(1).toString());
    :

在请求过程中，也可以通过attachedFile方法添加一个二进制文件

    BatchRequests<BatchRequest> batch = new BatchRequests<BatchRequest>();
    Media file = new Media(new File("...image.png"));
    BatchAttachment attachment = new BatchAttachment("file", file);
    batch.add(new BatchRequest(RequestMethod.POST, "me/photos")
                  .body("message=My photo")
                  .attachedFile(attachment));


- - -

## 执行API请求 (可以自定义API地址) {#execute_raw}
可以通过Facebook.call****()方法请求自定义的API地址

    // GET
    RawAPIResponse res = facebook.callGetAPI("me");
    JSONObject jsonObject = actual.asJSONObject();
    String id = jsonObject.getString("id");
    
    // POST
    Map<String, String> params = new HashMap<String, String>();
    params.put("message", "hello");
    RawAPIResponse res = facebook.callPostAPI("me/feed", params);

    // DELETE
    RawAPIResponse res = facebook.callDeleteAPI("123456/likes");
    if (res.isBoolean()) {
      System.out.println(res.asBoolean());
    }

可以通过Facebook.call****()方法调用Facebook4J还不支持的API

- - -

## 读取数据 {#reading}
可以在调用任何方法的时候传递Reading对象。

### 获取指定字段
可以通过Reading.fields("fieldName1,fieldName2,...")设置指定的字段

    // 仅获取email字段
    User user = facebook1.getUser(id1.getId(), new Reading().fields("email"));

### limit/offset

    // 获取1-10列表
    ResponseList<Post> results = facebook.searchPosts("watermelon", new Reading().limit(10));
    
    // 获取11-20列表
    ResponseList<Post> results = facebook.searchPosts("watermelon", new Reading().limit(10).offset(10));

### until/since
until/since可以是时间戳或者是任何的时间格式[PHP's strtotime](http://php.net/manual/en/function.strtotime.php).

    ResponseList<Post> results = facebook.searchPosts("watermelon", new Reading().until("yesterday"));

- - -

## 分页 {#paging}
可以通过Facebook.fetchNext()或Facebook.fetchPrevious()方法获取上一页或者下一页
You can get next/previous page with Paging object in results via Facebook.fetchNext() / Facebook.fetchPrevious()

    ResponseList<Option> page1 = facebook.getQuestionOptions(questionId);
    
    // 获取下一页
    Paging<Option> paging1 = page1.getPaging();
    ResponseList<Option> page2 = facebook.fetchNext(paging1);
    
    // 获取上一页
    Paging<Option> paging2 = page2.getPaging();
    page1 = facebook.fetchPrevious(paging2);
