---
layout: default
title: Code Examples | Facebook4J - A Java library for the Facebook Graph API
description: Code Examples of Facebook4J
keywords: examples,facebook4j
---
# Code Examples

## Getting Facebook Instance {#getting_facebook_instance}
At first it is necessary to acquire Facebook instance to use Facebook4J.  
You can get Facebook instance in FacebookFactory.getInstance().

    Facebook facebook = new FacebookFactory().getInstance();

If App ID / App Secret / access token / access permission are listed in facebook4j.properties then, they are set in Facebook instance given back.  
See [Configuration | Facebook4J - A Java library for the Facebook Graph API](/en/configuration.html) for the detail.  
When they are not listed, it is setable later as follows:

    facebook.setOAuthAppId(appId, appSecret);
    facebook.setOAuthPermissions(commaSeparetedPermissions);
    facebook.setOAuthAccessToken(new AccessToken(accessToken, null));


- - -

## OAuth support {#oauth}
It is possible to authenticate users using Facebook accounts with your web application.  
An example implementation is available at [https://github.com/roundrop/facebook4j-oauth-example](https://github.com/roundrop/facebook4j-oauth-example) .

- - -

## Publishing a message {#post_message}
You can publish a message via Facebook.postStatusMessage() method.

    facebook.postStatusMessage("Hello World from Facebook4J.");

- - -

## Publishing a link {#share_link}
You can publish a link via Facebook.postFeed() method.

    PostUpdate post = new PostUpdate(new URL("http://facebook4j.org"))
                        .picture(new URL("http://facebook4j.org/images/hero.png"))
                        .name("Facebook4J - A Java library for the Facebook Graph API")
                        .caption("facebook4j.org")
                        .description("Facebook4J is a Java library for the Facebook Graph API.");
    facebook.postFeed(post);

Facebook.postLink() method is simple way to post.

    facebook.postLink(new URL("http://facebook4j.org"));
    facebook.postLink(new URL("http://facebook4j.org"), "A Java library for the Facebook Graph API");

- - -

## Getting News Feed {#getting_newsfeed}
Facebook.getHome() returns a List of user's latest News Feed.

    ResponseList<Post> feed = facebook.getHome();

- - -

## Like {#post_like}
You can like a Post, Photo, ... via Facebook.like\*\*\*\*() methods.

    facebook.likePost(postId);

Also, You can unlike a Post, Photo, ... via Facebook.unlike\*\*\*\*() methods.

    facebook.unlikePost(postId);

- - -

## Publising a comment {#post_comment}
You can comment a Post, Photo, ... via Facebook.comment\*\*\*\*() methods.

    facebook.commentPhoto(photoId, "It's a nice photo!");

- - -

## Searching {#search}
You can search for Posts, Users, ... via Facebook.search\*\*\*\*() methods.

### Search for public Posts

    ResponseList<Post> results = facebook.searchPosts("watermelon");

### Search for Users

    ResponseList<User> results = facebook.searchUsers("mark");

### Search for Events

    ResponseList<Event> results = facebook.searchEvents("conference");

### Search for Groups

    ResponseList<Group> results = facebook.searchGroups("programming");

### Search for Places

    // Search by name
    ResponseList<Place> results = facebook.searchPlaces("coffee");
    
    // You can narrow your search to a specific location and distance
    GeoLocation center = new GeoLocation(37.76, -122.427);
    int distance = 1000;
    ResponseList<Place> searchPlaces("coffee", center, distance);

### Search for Checkins

    // you or your friend's latest checkins, or checkins where you or your friends have been tagged
    ResponseList<Checkin> results = facebook.searchCheckins();
    

### Search for Locations

    // To search for objects near a geographical location
    GeoLocation center = new GeoLocation(37.76, -122.427);
    int distance = 1000;
    ResponseList<Location> searchLocations(center, distance);
    
    // To search for objects at a particular place
    String placeId = "166793820034304";
    ResponseList<Location> locations = facebookBestFriend1.searchLocations(placeId);


- - -

## Executing FQL {#execute_fql}
You can execute FQL via Facebook.executeFQL() method.  
Also you can execute multiple FQL in one call via Facebook.executeMultiFQL() method.

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

## Reading options {#reading}
You can set various reading options to the method that Reading object includes in arguments.

### Selecting specific fields
You can choose the fields you want returned via Reading.fields("fieldName1,fieldName2,...") .

    // Getting user's email address only
    User user = facebook1.getUser(id1.getId(), new Reading().fields("email"));

### limit/offset

    // Getting 1st-10th results
    ResponseList<Post> results = facebook.searchPosts("watermelon", new Reading().limit(10));
    
    // Getting 11th-20th results
    ResponseList<Post> results = facebook.searchPosts("watermelon", new Reading().limit(10).offset(10));

### until/since
until/since values can be a unix timestamp or any date accepted by [PHP's strtotime](http://php.net/manual/en/function.strtotime.php) format.

    ResponseList<Post> results = facebook.searchPosts("watermelon", new Reading().until("yesterday"));


- - -

## Pagination {#paging}
You can get next/previous page with Paging object in results via Facebook.fetchNext() / Facebook.fetchPrevious() methods.

    ResponseList<Option> page1 = facebook.getQuestionOptions(questionId);
    
    // Getting Next page
    Paging<Option> paging1 = page1.getPaging();
    ResponseList<Option> page2 = facebook.fetchNext(paging1);
    
    // Getting Previous page
    Paging<Option> paging2 = page2.getPaging();
    page1 = facebook.fetchPrevious(paging2);
