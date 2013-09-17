---
layout: default
title: API Support matrix | Facebook4J - A Java library for the Facebook Graph API
description: Facebook4J API Support matrix
keywords: API Support,facebook4j
---
# API Support matrix {#api_support_matrix}

## Account {#account}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/accounts</a><br />(see: Connections - accounts)</td><td><a href="/javadoc/facebook4j/api/AccountMethods.html#getAccounts()">getAccounts()</a></td></tr>
</tbody></table>


## Activity {#activity}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/activities</a><br />(see: Connections - activities)</td><td><a href="/javadoc/facebook4j/api/ActivityMethods.html#getActivities()">getActivities()</a></td></tr>
</tbody></table>


## Album {#album}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/album/">/ALBUM_ID</a></td><td><a href="/javadoc/facebook4j/api/AlbumMethods.html#getAlbum(java.lang.String)">getAlbum()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/album/">/ALBUM_ID/photos</a><br />(see: Connections - photos)</td><td><a href="/javadoc/facebook4j/api/AlbumMethods.html#getAlbumPhotos(java.lang.String)">getAlbumPhotos()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/album/#photos">/ALBUM_ID/photos</a></td><td><a href="/javadoc/facebook4j/api/AlbumMethods.html#addAlbumPhoto(java.lang.String,%20facebook4j.Media)">addAlbumPhoto()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/album/">/ALBUM_ID/likes</a><br />(see: Connections - likes)</td><td><a href="/javadoc/facebook4j/api/AlbumMethods.html#getAlbumLikes(java.lang.String)">getAlbumLikes()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/album/#likes">/ALBUM_ID/likes</a></td><td><a href="/javadoc/facebook4j/api/AlbumMethods.html#likeAlbum(java.lang.String)">likeAlbum()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/album/#likes">/ALBUM_ID/likes</a></td><td><a href="/javadoc/facebook4j/api/AlbumMethods.html#unlikeAlbum(java.lang.String)">unlikeAlbum()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/album/">/ALBUM_ID/comments</a><br />(see: Connections - comments)</td><td><a href="/javadoc/facebook4j/api/AlbumMethods.html#getAlbumComments(java.lang.String)">getAlbumComments()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/album/#comments">/ALBUM_ID/comments</a></td><td><a href="/javadoc/facebook4j/api/AlbumMethods.html#commentAlbum(java.lang.String,%20java.lang.String)">commentAlbum()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/album/">/ALBUM_ID/picture</a><br />(see: Connections - picture)</td><td><a href="/javadoc/facebook4j/api/AlbumMethods.html#getAlbumCoverPhoto(java.lang.String)">getAlbumCoverPhoto()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/albums</a><br />(see: Connections - albums)</td><td><a href="/javadoc/facebook4j/api/AlbumMethods.html#getAlbums()">getAlbums()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/albums</a><br />(see: Connections - albums)</td><td><a href="/javadoc/facebook4j/api/AlbumMethods.html#getAlbums()">getAlbums()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#albums">/USER_ID/albums</a></td><td><a href="/javadoc/facebook4j/api/AlbumMethods.html#createAlbum(facebook4j.AlbumCreate)">createAlbum()</a></td></tr>
</tbody></table>


## Checkin {#checkin}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/checkin/">/CHECKIN_ID</a></td><td><a href="/javadoc/facebook4j/api/CheckinMethods.html#getCheckin(java.lang.String)">getCheckin()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/checkin/">/CHECKIN_ID/comments</a><br />(see: Connections - comments)</td><td><a href="/javadoc/facebook4j/api/CheckinMethods.html#getCheckinComments(java.lang.String)">getCheckinComments()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/checkin/#comments">/CHECKIN_ID/comments</a></td><td><a href="/javadoc/facebook4j/api/CheckinMethods.html#commentCheckin(java.lang.String,%20java.lang.String)">commentCheckin()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/checkin/">/CHECKIN_ID/likes</a><br />(see: Connections - likes)</td><td><a href="/javadoc/facebook4j/api/CheckinMethods.html#getCheckinLikes(java.lang.String)">getCheckinLikes()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/checkin/#likes">/CHECKIN_ID/likes</a></td><td><a href="/javadoc/facebook4j/api/CheckinMethods.html#likeCheckin(java.lang.String)">likeCheckin()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/checkin/#likes">/CHECKIN_ID/likes</a></td><td><a href="/javadoc/facebook4j/api/CheckinMethods.html#unlikeCheckin(java.lang.String)">unlikeCheckin</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/checkins</a><br />(see: Connections - checkins)</td><td><a href="/javadoc/facebook4j/api/CheckinMethods.html#getCheckins()">getCheckins()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/checkins</a><br />(see: Connections - checkins)</td><td><a href="/javadoc/facebook4j/api/CheckinMethods.html#getCheckins()">getCheckins()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#checkins">/USER_ID/checkins</a></td><td><a href="/javadoc/facebook4j/api/CheckinMethods.html#checkin(facebook4j.CheckinCreate)">checkin()</a></td></tr>
</tbody></table>


## Comment {#comment}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/Comment/">/COMMENT_ID</a></td><td><a href="/javadoc/facebook4j/api/CommentMethods.html#getComment(java.lang.String)">getComment()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/Comment/">/COMMENT_ID</a></td><td><a href="/javadoc/facebook4j/api/CommentMethods.html#deleteComment(java.lang.String)">deleteComment()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/Comment/">/COMMENT_ID/likes</a><br />(see: Connections - likes)</td><td><a href="/javadoc/facebook4j/api/CommentMethods.html#getCommentLikes(java.lang.String)">getCommentLikes()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/Comment/#likes">/COMMENT_ID/likes</a></td><td><a href="/javadoc/facebook4j/api/CommentMethods.html#likeComment(java.lang.String)">likeComment()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/Comment/#likes">/COMMENT_ID/likes</a></td><td><a href="/javadoc/facebook4j/api/CommentMethods.html#unlikeComment(java.lang.String)">unlikeComment()</a></td></tr>
</tbody></table>


## Domain {#domain}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/domain/">/DOMAIN_ID</a></td><td><a href="/javadoc/facebook4j/api/DomainMethods.html#getDomain(java.lang.String)">getDomain()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/domain/">?domain=DOMAIN_NAME</a></td><td><a href="/javadoc/facebook4j/api/DomainMethods.html#getDomainByName(java.lang.String)">getDomainByName()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/domain/">?domains=DOMAIN_NAME1,...</a></td><td><a href="/javadoc/facebook4j/api/DomainMethods.html#getDomainsByName(java.lang.String...)">getDomainsByName()</a></td></tr>
</tbody></table>


## Event {#event}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/event/">/EVENT_ID</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#getEvent(java.lang.String)">getEvent()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#events">/EVENT_ID</a><br />(see: Edit section)</td><td><a href="/javadoc/facebook4j/api/EventMethods.html#editEvent(java.lang.String,%20facebook4j.EventUpdate)">editEvent()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#events">/EVENT_ID</a><br />(see: Delete section)</td><td><a href="/javadoc/facebook4j/api/EventMethods.html#deleteEvent(java.lang.String)">deleteEvent()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/event/">/EVENT_ID/feed</a><br />(see: Connections - feed)</td><td><a href="/javadoc/facebook4j/api/EventMethods.html#getEventFeed(java.lang.String)">getEventFeed()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#feed">/EVENT_ID/feed</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#postEventLink(java.lang.String,%20java.net.URL)">postEventLink()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#feed">/EVENT_ID/feed</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#postEventFeed(java.lang.String,%20facebook4j.PostUpdate)">postEventFeed()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#feed">/EVENT_ID/feed</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#postEventStatusMessage(java.lang.String,%20java.lang.String)">postEventStatusMessage()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#noreply">/EVENT_ID/noreply</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#getRSVPStatusAsNoreply(java.lang.String)">getRSVPStatusAsNoreply()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#noreply">/EVENT_ID/noreply/USER_ID</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#getRSVPStatusAsNoreply(java.lang.String,%20java.lang.String)">getRSVPStatusAsNoreply()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#invited">/EVENT_ID/invited</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#getRSVPStatusAsInvited(java.lang.String)">getRSVPStatusAsInvited()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#invited">/EVENT_ID/invited/USER_ID</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#getRSVPStatusAsInvited(java.lang.String,%20java.lang.String)">getRSVPStatusAsInvited()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#invited">/EVENT_ID/invited/USER_ID</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#inviteToEvent(java.lang.String,%20java.lang.String)">inviteToEvent()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#invited">/EVENT_ID/invited?users=USER_ID,...</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#inviteToEvent(java.lang.String,%20java.lang.String[])">inviteToEvent()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#invited">/EVENT_ID/invited/USER_ID</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#uninviteFromEvent(java.lang.String,%20java.lang.String)">uninviteFromEvent()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#attending">/EVENT_ID/attending</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#getRSVPStatusInAttending(java.lang.String)">getRSVPStatusInAttending()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#attending">/EVENT_ID/attending/USER_ID</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#getRSVPStatusInAttending(java.lang.String,%20java.lang.String)">getRSVPStatusInAttending()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#attending">/EVENT_ID/attending</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#rsvpEventAsAttending(java.lang.String,%20java.lang.String)">rsvpEventAsAttending()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#maybe">/EVENT_ID/maybe</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#getRSVPStatusInMaybe(java.lang.String)">getRSVPStatusInMaybe()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#maybe">/EVENT_ID/maybe/USER_ID</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#getRSVPStatusInMaybe(java.lang.String,%20java.lang.String)">getRSVPStatusInMaybe()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#maybe">/EVENT_ID/maybe</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#rsvpEventAsMaybe(java.lang.String,%20java.lang.String)">rsvpEventAsMaybe()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#declined">/EVENT_ID/declined</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#getRSVPStatusInDeclined(java.lang.String)">getRSVPStatusInDeclined()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#declined">/EVENT_ID/declined/USER_ID</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#getRSVPStatusInDeclined(java.lang.String,%20java.lang.String)">getRSVPStatusInDeclined()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#declined">/EVENT_ID/declined</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#rsvpEventAsDeclined(java.lang.String,%20java.lang.String)">rsvpEventAsDeclined()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#picture">/EVENT_ID/picture</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#getEventPictureURL(java.lang.String)">getEventPictureURL()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#picture">/EVENT_ID/picture</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#updateEventPicture(java.lang.String,%20facebook4j.Media)">updateEventPicture()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#picture">/EVENT_ID/picture</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#deleteEventPicture(java.lang.String)">deleteEventPicture()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#videos">/EVENT_ID/video</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#getEventVideos(java.lang.String)">getEventVideos()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#videos">/EVENT_ID/video</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#postEventVideo(java.lang.String,%20facebook4j.Media)">postEventVideo()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#photos">/EVENT_ID/photos</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#getEventPhotos(java.lang.String)">getEventPhotos()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#photos">/EVENT_ID/photos</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#postEventPhoto(java.lang.String,%20facebook4j.Media)">postEventPhoto()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/events</a><br />(see: Connections - events)</td><td><a href="/javadoc/facebook4j/api/EventMethods.html#getEvents()">getEvents()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/events</a><br />(see: Connections - events)</td><td><a href="/javadoc/facebook4j/api/EventMethods.html#getEvents()">getEvents()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#events">/USER_ID/events</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#createEvent(facebook4j.EventUpdate)">createEvent()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/page/#events">/PAGE_ID/events</a></td><td><a href="/javadoc/facebook4j/api/EventMethods.html#createEvent(facebook4j.EventUpdate)">createEvent()</a></td></tr>
</tbody></table>


## Family {#family}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/family</a><br />(see: Connections - family)</td><td><a href="/javadoc/facebook4j/api/FamilyMethods.html#getFamily()">getFamily()</a></td></tr>
</tbody></table>


## Favorite {#favorite}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/books</a><br />(see: Connections - books)</td><td><a href="/javadoc/facebook4j/api/FavoriteMethods.html#getBooks()">getBooks()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/games</a><br />(see: Connections - games)</td><td><a href="/javadoc/facebook4j/api/FavoriteMethods.html#getGames()">getGames()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/movies</a><br />(see: Connections - movies)</td><td><a href="/javadoc/facebook4j/api/FavoriteMethods.html#getMovies()">getMovies()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/music</a><br />(see: Connections - music)</td><td><a href="/javadoc/facebook4j/api/FavoriteMethods.html#getMusic()">getMusic()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/television</a><br />(see: Connections - television)</td><td><a href="/javadoc/facebook4j/api/FavoriteMethods.html#getTelevision()">getTelevision()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/interests</a><br />(see: Connections - interests)</td><td><a href="/javadoc/facebook4j/api/FavoriteMethods.html#getInterests()">getInterests()</a></td></tr>
</tbody></table>


## Friend {#friend}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/FriendList/">/FRIENDLIST_ID</a></td><td><a href="/javadoc/facebook4j/api/FriendMethods.html#getFriendlist(java.lang.String)">getFriendlist()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/FriendList/">/FRIENDLIST_ID</a></td><td><a href="/javadoc/facebook4j/api/FriendMethods.html#deleteFriendlist(java.lang.String)">deleteFriendlist()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/FriendList/">/FRIENDLIST_ID/members</a><br />(see: Connections - members)</td><td><a href="/javadoc/facebook4j/api/FriendMethods.html#getFriendlistMembers(java.lang.String)">getFriendlistMembers()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/FriendList/#members">/FRIENDLIST_ID/members</a></td><td><a href="/javadoc/facebook4j/api/FriendMethods.html#addFriendlistMember(java.lang.String,%20java.lang.String)">addFriendlistMember()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/FriendList/#members">/FRIENDLIST_ID/members</a></td><td><a href="/javadoc/facebook4j/api/FriendMethods.html#removeFriendlistMember(java.lang.String,%20java.lang.String)">removeFriendlistMember()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/friendlists</a><br />(see: Connections - friendlists)</td><td><a href="/javadoc/facebook4j/api/FriendMethods.html#getFriendlists()">getFriendlists()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#friendlists">/USER_ID/friendlists</a></td><td><a href="/javadoc/facebook4j/api/FriendMethods.html#createFriendlist(java.lang.String,%20java.lang.String)">createFriendlist()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#friendrequests">/USER_ID/friendrequests</a></td><td><a href="/javadoc/facebook4j/api/FriendMethods.html#getFriendRequests()">getFriendRequests()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#friends">/USER_ID/friends</a></td><td><a href="/javadoc/facebook4j/api/FriendMethods.html#getFriends()">getFriends()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#friends">/USER_ID/friends/FRIEND_ID</a></td><td><a href="/javadoc/facebook4j/api/FriendMethods.html#getBelongsFriend(java.lang.String)">getBelongsFriend()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#mutualfriends">/USER_ID/mutualfriends/FRIEND_ID</a></td><td><a href="/javadoc/facebook4j/api/FriendMethods.html#getMutualFriends(java.lang.String)">getMutualFriends()</a></td></tr>
</tbody></table>


## Game {#game}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#achievements">/USER_ID/achievements</a></td><td><a href="/javadoc/facebook4j/api/GameMethods.html#getAchievements()">getAchievements()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#achievements">/USER_ID/achievements</a></td><td><a href="/javadoc/facebook4j/api/GameMethods.html#postAchievement(java.lang.String,%20java.net.URL)">postAchievement()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#achievements">/USER_ID/achievements</a></td><td><a href="/javadoc/facebook4j/api/GameMethods.html#deleteAchievement(java.lang.String,%20java.net.URL)">deleteAchievement()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#scores">/USER_ID/scores</a></td><td><a href="/javadoc/facebook4j/api/GameMethods.html#getScores()">getScores()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#scores">/USER_ID/scores</a></td><td><a href="/javadoc/facebook4j/api/GameMethods.html#postScore(int)">postScore()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#scores">/USER_ID/scores</a></td><td><a href="/javadoc/facebook4j/api/GameMethods.html#deleteScore()">deleteScore()</a></td></tr>
</tbody></table>


## Group {#group}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/group/">/GROUP_ID</a></td><td><a href="/javadoc/facebook4j/api/GroupMethods.html#getGroup(java.lang.String)">getGroup()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/group/">/GROUP_ID/feed</a><br />(see: Connections - feed)</td><td><a href="/javadoc/facebook4j/api/GroupMethods.html#getGroupFeed(java.lang.String)">getGroupFeed()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/group/#links">/GROUP_ID/feed</a></td><td><a href="/javadoc/facebook4j/api/GroupMethods.html#postGroupLink(java.lang.String,%20java.net.URL)">postGroupLink()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/group/#posts">/GROUP_ID/feed</a></td><td><a href="/javadoc/facebook4j/api/GroupMethods.html#postGroupFeed(java.lang.String,%20facebook4j.PostUpdate)">postGroupFeed()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/group/#statuses">/GROUP_ID/feed</a></td><td><a href="/javadoc/facebook4j/api/GroupMethods.html#postGroupStatusMessage(java.lang.String,%20java.lang.String)">postGroupStatusMessage()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/group/#members">/GROUP_ID/members</a></td><td><a href="/javadoc/facebook4j/api/GroupMethods.html#getGroupMembers(java.lang.String)">getGroupMembers()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/group/">/GROUP_ID/picture</a><br />(see: Connections - picture)</td><td><a href="/javadoc/facebook4j/api/GroupMethods.html#getGroupPictureURL(java.lang.String)">getGroupPictureURL()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/group/">/GROUP_ID/docs</a><br />(see: Connections - docs)</td><td><a href="/javadoc/facebook4j/api/GroupMethods.html#getGroupDocs(java.lang.String,%20facebook4j.Reading)">getGroupDocs()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/groups</a><br />(see: Connections - groups)</td><td><a href="/javadoc/facebook4j/api/GroupMethods.html#getGroups()">getGroups()</a></td></tr>
</tbody></table>


## Insight {#insight}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/insights/">/OBJECT_ID/insights/METRIC</a></td><td><a href="/javadoc/facebook4j/api/InsightMethods.html#getInsights(java.lang.String,%20java.lang.String)">getInsights()</a></td></tr>
</tbody></table>


## Like {#like}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#likes">/USER_ID/likes</a></td><td><a href="/javadoc/facebook4j/api/LikeMethods.html#getUserLikes()">getUserLikes()</a></td></tr>
</tbody></table>


## Link {#link}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/link/">/LINK_ID</a></td><td><a href="/javadoc/facebook4j/api/LinkMethods.html#getLink(java.lang.String)">getLink()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/link/">/LINK_ID/comments</a><br />(see: Connections - comments)</td><td><a href="/javadoc/facebook4j/api/LinkMethods.html#getLinkComments(java.lang.String)">getLinkComments()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/link/#comments">/LINK_ID/comments</a></td><td><a href="/javadoc/facebook4j/api/LinkMethods.html#commentLink(java.lang.String,%20java.lang.String)">commentLink()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/link/">/LINK_ID/likes</a><br />(see: Connections - likes)</td><td><a href="/javadoc/facebook4j/api/LinkMethods.html#getLinkLikes(java.lang.String)">getLinkLikes()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/link/#likes">/LINK_ID/likes</a></td><td><a href="/javadoc/facebook4j/api/LinkMethods.html#likeLink(java.lang.String)">likeLink()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/link/#likes">/LINK_ID/likes</a></td><td><a href="/javadoc/facebook4j/api/LinkMethods.html#unlikeLink(java.lang.String)">unlikeLink()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/links</a><br />(see: Connections - links)</td><td><a href="/javadoc/facebook4j/api/LinkMethods.html#getLinks()">getLinks()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/links</a><br />(see: Connections - links)</td><td><a href="/javadoc/facebook4j/api/LinkMethods.html#getLinks()">getLinks()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#links">/EVENT_ID/links</a><br /></td><td><a href="/javadoc/facebook4j/api/LinkMethods.html#getLinks()">getLinks()</a></td></tr>
</tbody></table>


## Location {#location}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/locations</a><br />(see: Connections - locations)</td><td><a href="/javadoc/facebook4j/api/LocationMethods.html#getLocations()">getLocations()</a></td></tr>
</tbody></table>


## Message {#message}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/message/">/MESSAGE_ID</a></td><td><a href="/javadoc/facebook4j/api/MessageMethods.html#getMessage(java.lang.String)">getMessage()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/inbox</a><br />(see: Connections - inbox)</td><td><a href="/javadoc/facebook4j/api/MessageMethods.html#getInbox()">getInbox()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/outbox</a><br />(see: Connections - outbox)</td><td><a href="/javadoc/facebook4j/api/MessageMethods.html#getOutbox()">getOutbox()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/updates</a><br />(see: Connections - updates)</td><td><a href="/javadoc/facebook4j/api/MessageMethods.html#getUpdates()">getUpdates()</a></td></tr>
</tbody></table>


## Note {#note}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/note/">/NOTE_ID</a></td><td><a href="/javadoc/facebook4j/api/NoteMethods.html#getNote(java.lang.String)">getNote()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/note/">/NOTE_ID/comments</a><br />(see: Connections - comments)</td><td><a href="/javadoc/facebook4j/api/NoteMethods.html#getNoteComments(java.lang.String)">getNoteComments()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/note/#comments">/NOTE_ID/comments</a></td><td><a href="/javadoc/facebook4j/api/NoteMethods.html#commentNote(java.lang.String,%20java.lang.String)">commentNote()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/note/">/NOTE_ID/likes</a><br />(see: Connections - likes)</td><td><a href="/javadoc/facebook4j/api/NoteMethods.html#getNoteLikes(java.lang.String)">getNoteLikes()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/note/#likes">/NOTE_ID/likes</a></td><td><a href="/javadoc/facebook4j/api/NoteMethods.html#likeNote(java.lang.String)">likeNote()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/note/#likes">/NOTE_ID/likes</a></td><td><a href="/javadoc/facebook4j/api/NoteMethods.html#unlikeNote(java.lang.String)">unlikeNote()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/notes</a><br />(see: Connections - notes)</td><td><a href="/javadoc/facebook4j/api/NoteMethods.html#getNotes()">getNotes()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/notes</a><br />(see: Connections - notes)</td><td><a href="/javadoc/facebook4j/api/NoteMethods.html#getNotes()">getNotes()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#notes">/USER_ID/notes</a></td><td><a href="/javadoc/facebook4j/api/NoteMethods.html#createNote(java.lang.String,%20java.lang.String)">createNote()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/page/#notes">/PAGE_ID/notes</a></td><td><a href="/javadoc/facebook4j/api/NoteMethods.html#createNote(java.lang.String,%20java.lang.String)">createNote()</a></td></tr>
</tbody></table>


## Notification {#notification}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/blog/post/552/?ref=nf">/USER_ID/notifications</a><br />(see: 'Reading and Managing Notifications' section)</td><td><a href="/javadoc/facebook4j/api/NotificationMethods.html#getNotifications()">getNotifications()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/blog/post/552/?ref=nf">/NOTIFICATION_ID</a><br />(see: 'Reading and Managing Notifications' section)</td><td><a href="/javadoc/facebook4j/api/NotificationMethods.html#markNotificationAsRead(java.lang.String)">markNotificationAsRead()</a></td></tr>
</tbody></table>


## Permission {#permission}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#permissions">/USER_ID/permissions</a></td><td><a href="/javadoc/facebook4j/api/PermissionMethods.html#getPermissions()">getPermissions()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#permissions">/USER_ID/permissions</a></td><td><a href="/javadoc/facebook4j/api/PermissionMethods.html#revokePermission(java.lang.String)">revokePermission()</a></td></tr>
</tbody></table>


## Page {#page}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID</a></td><td><a href="">getPage()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID</a></td><td><a href="">updatePageBasicAttributes()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID</a></td><td><a href="">updatePageCoverPhoto()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/feed</a></td><td><a href="">postBackdatingFeed()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/picture</a></td><td><a href="">getPagePictureURL()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/picture</a></td><td><a href="">updatePageProfilePhoto()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/settings</a></td><td><a href="">getPageSettings()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/settings</a></td><td><a href="">updatePageSetting()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/tagged</a></td><td><a href="">getPageTagged()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/promotable_posts</a></td><td><a href="">getPromotablePosts()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/admins</a></td><td><a href="">getPageAdmins()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/milestones</a></td><td><a href="">getMilestones()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/milestones</a></td><td><a href="">createMilestone()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/milestones</a></td><td><a href="">deleteMilestone()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/blocked</a></td><td><a href="">getBlocked()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/blocked</a></td><td><a href="">block()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/blocked</a></td><td><a href="">unblock()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/tabs</a></td><td><a href="">getTabs()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/tabs</a></td><td><a href="">installTab()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/tabs</a></td><td><a href="">getInstalledTabs()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/tabs</a></td><td><a href="">updateTab()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/tabs</a></td><td><a href="">deleteTab()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/global_brand_children</a></td><td><a href="">getGlobalBrandChildren()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/insights</a></td><td><a href="">getPageInsights()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/offers</a></td><td><a href="">getOffers()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/offers</a></td><td><a href="">createOffer()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/offers</a></td><td><a href="">deleteOffer()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/POST_ID</a></td><td><a href="">displayPagePost()</a></td></tr>
</tbody></table>


## Photo {#photo}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/photo/">/PHOTO_ID</a></td><td><a href="/javadoc/facebook4j/api/PhotoMethods.html#getPhoto(java.lang.String)">getPhoto()</a></td></tr>
<tr><td>DELETE</td><td>/PHOTO_ID</td><td><a href="/javadoc/facebook4j/api/PhotoMethods.html#deletePhoto(java.lang.String)">deletePhoto()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/photo/">/PHOTO_ID/comments</a><br />(see: Connections - comments)</td><td><a href="/javadoc/facebook4j/api/PhotoMethods.html#getPhotoComments(java.lang.String)">getPhotoComments()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/photo/#comments">/PHOTO_ID/comments</a></td><td><a href="/javadoc/facebook4j/api/PhotoMethods.html#commentPhoto(java.lang.String,%20java.lang.String)">commentPhoto()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/photo/">/PHOTO_ID/likes</a><br />(see: Connections - likes)</td><td><a href="/javadoc/facebook4j/api/PhotoMethods.html#getPhotoLikes(java.lang.String)">getPhotoLikes()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/photo/#likes">/PHOTO_ID/likes</a></td><td><a href="/javadoc/facebook4j/api/PhotoMethods.html#likePhoto(java.lang.String)">likePhoto()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/photo/#likes">/PHOTO_ID/likes</a></td><td><a href="/javadoc/facebook4j/api/PhotoMethods.html#unlikePhoto(java.lang.String)">unlikePhoto()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/photo/">/PHOTO_ID/picture</a><br />(see: Connections - picture)</td><td><a href="/javadoc/facebook4j/api/PhotoMethods.html#getPhotoURL(java.lang.String)">getPhotoURL()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/photo/">/PHOTO_ID/tags</a><br />(see: Connections - tags)</td><td><a href="/javadoc/facebook4j/api/PhotoMethods.html#getTagsOnPhoto(java.lang.String)">getTagsOnPhoto()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/photo/#tags">/PHOTO_ID/tags</a></td><td><a href="/javadoc/facebook4j/api/PhotoMethods.html#addTagToPhoto(java.lang.String,%20java.lang.String)">addTagToPhoto()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/photo/#tags">/PHOTO_ID/tags</a></td><td><a href="/javadoc/facebook4j/api/PhotoMethods.html#deleteTagOnPhoto(java.lang.String, java.lang.String)">deleteTagOnPhoto()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/photos</a><br />(see: Connections - photos)</td><td><a href="/javadoc/facebook4j/api/PhotoMethods.html#getPhotos()">getPhotos()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#photos">/USER_ID/photos</a></td><td><a href="/javadoc/facebook4j/api/PhotoMethods.html#postPhoto(facebook4j.Media)">postPhoto()</a></td></tr>
</tbody></table>


## Poke {#poke}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/pokes</a><br />(see: Connections - pokes)</td><td><a href="/javadoc/facebook4j/api/PokeMethods.html#getPokes()">getPokes()</a></td></tr>
</tbody></table>


## Post {#post}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/post/">/POST_ID</a></td><td><a href="/javadoc/facebook4j/api/PostMethods.html#getPost(java.lang.String)">getPost()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/post/">/POST_ID</a></td><td><a href="/javadoc/facebook4j/api/PostMethods.html#deletePost(java.lang.String)">deletePost()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/post/">/POST_ID/comments</a><br />(see: Connections - comments)</td><td><a href="/javadoc/facebook4j/api/PostMethods.html#getPostComments(java.lang.String)">getPostComments()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/post/#comments">/POST_ID/comments</a></td><td><a href="/javadoc/facebook4j/api/PostMethods.html#commentPost(java.lang.String,%20java.lang.String)">commentPost()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/post/">/POST_ID/likes</a><br />(see: Connections - likes)</td><td><a href="/javadoc/facebook4j/api/PostMethods.html#getPostLikes(java.lang.String)">getPostLikes()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/post/#likes">/POST_ID/likes</a></td><td><a href="/javadoc/facebook4j/api/PostMethods.html#likePost(java.lang.String)">likePost()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/post/#likes">/POST_ID/likes</a></td><td><a href="/javadoc/facebook4j/api/PostMethods.html#unlikePost(java.lang.String)">unlikePost()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/feed</a><br />(see: Connections - feed)</td><td><a href="/javadoc/facebook4j/api/PostMethods.html#getFeed()">getFeed()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/feed</a><br />(see: Connections - feed)</td><td><a href="/javadoc/facebook4j/api/PostMethods.html#getFeed()">getFeed()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/event/">/EVENT_ID/feed</a><br />(see: Connections - feed)</td><td><a href="/javadoc/facebook4j/api/PostMethods.html#getFeed()">getFeed()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#feed">/USER_ID/feed</a></td><td><a href="/javadoc/facebook4j/api/PostMethods.html#postFeed(facebook4j.PostUpdate)">postFeed()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/page/#feed">/PAGE_ID/feed</a></td><td><a href="/javadoc/facebook4j/api/PostMethods.html#postFeed(facebook4j.PostUpdate)">postFeed()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/event/#posts">/EVENT_ID/feed</a></td><td><a href="/javadoc/facebook4j/api/PostMethods.html#postFeed(facebook4j.PostUpdate)">postFeed()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/statuses</a><br />(see: Connections - statuses)</td><td><a href="/javadoc/facebook4j/api/PostMethods.html#getStatuses()">getStatuses()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/statuses</a><br />(see: Connections - statuses)</td><td><a href="/javadoc/facebook4j/api/PostMethods.html#getStatuses()">getStatuses()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#feed">/USER_ID/feed</a></td><td><a href="/javadoc/facebook4j/api/PostMethods.html#postStatusMessage(java.lang.String)">postStatusMessage()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/page/#statuses">/PAGE_ID/feed</a></td><td><a href="/javadoc/facebook4j/api/PostMethods.html#postStatusMessage(java.lang.String)">postStatusMessage()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/home</a><br />(see: Connections - home)</td><td><a href="/javadoc/facebook4j/api/PostMethods.html#getHome()">getHome()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/posts</a><br />(see: Connections - posts)</td><td><a href="/javadoc/facebook4j/api/PostMethods.html#getPosts()">getPosts()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/posts</a><br />(see: Connections - posts)</td><td><a href="/javadoc/facebook4j/api/PostMethods.html#getPosts()">getPosts()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/tagged</a><br />(see: Connections - tagged)</td><td><a href="/javadoc/facebook4j/api/PostMethods.html#getTagged()">getTagged()</a></td></tr>
</tbody></table>


## Question {#question}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/question/">/QUESTION_ID</a></td><td><a href="/javadoc/facebook4j/api/QuestionMethods.html#getQuestion(java.lang.String)">getQuestion()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#questions">/QUESTION_ID</a></td><td><a href="/javadoc/facebook4j/api/QuestionMethods.html#deleteQuestion(java.lang.String)">deleteQuestion()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/question_option/">/QUESTION_ID/options</a></td><td><a href="/javadoc/facebook4j/api/QuestionMethods.html#getQuestionOptions(java.lang.String)">getQuestionOptions()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/question/#options">/QUESTION_ID/options</a></td><td><a href="/javadoc/facebook4j/api/QuestionMethods.html#addQuestionOption(java.lang.String,%20java.lang.String)">addQuestionOption()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/question_option/">/QUESTION_ID/options?fields=votes</a><br />(see: Connections - votes)</td><td><a href="/javadoc/facebook4j/api/QuestionMethods.html#getQuestionOptionVotes(java.lang.String)">getQuestionOptionVotes()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#questions">/USER_ID/questions</a></td><td><a href="/javadoc/facebook4j/api/QuestionMethods.html#getQuestions()">getQuestions()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/#questions">/PAGE_ID/questions</a></td><td><a href="/javadoc/facebook4j/api/QuestionMethods.html#getQuestions()">getQuestions()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/page/#questions">/PAGE_ID/questions</a></td><td><a href="/javadoc/facebook4j/api/QuestionMethods.html#createQuestion(java.lang.String)">createQuestion()</a></td></tr>
</tbody></table>


## Subscribe {#subscribe}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/subscribedto</a><br />(see: Connections - subscribedto)</td><td><a href="/javadoc/facebook4j/api/SubscribeMethods.html#getSubscribedto()">getSubscribedto()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/subscribers</a><br />(see: Connections - subscribers)</td><td><a href="/javadoc/facebook4j/api/SubscribeMethods.html#getSubscribers()">getSubscribers()</a></td></tr>
</tbody></table>


## User {#user}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/me</a></td><td><a href="/javadoc/facebook4j/api/UserMethods.html#getMe()">getMe()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID</a></td><td><a href="/javadoc/facebook4j/api/UserMethods.html#getUser(java.lang.String)">getUser()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/picture</a><br />(see: Connections - picture)</td><td><a href="/javadoc/facebook4j/api/UserMethods.html#getPictureURL()">getPictureURL()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/using-pictures/#ssl">/USER_ID/picture</a></td><td><a href="/javadoc/facebook4j/api/UserMethods.html#getSSLPictureURL()">getSSLPictureURL()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/selecting-results/">?ids=name1,name2...</a></td><td><a href="/javadoc/facebook4j/api/UserMethods.html#getUsers(java.lang.String...)">getUsers()</a></td></tr>
</tbody></table>


## Video {#video}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/video/">/VIDEO_ID</a></td><td><a href="/javadoc/facebook4j/api/VideoMethods.html#getVideo(java.lang.String)">getVideo()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/video/">/VIDEO_ID/likes</a><br />(see: Connections - likes)</td><td><a href="/javadoc/facebook4j/api/VideoMethods.html#getVideoLikes(java.lang.String)">getVideoLikes()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/video/#likes">/VIDEO_ID/likes</a></td><td><a href="/javadoc/facebook4j/api/VideoMethods.html#likeVideo(java.lang.String)">likeVideo()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/reference/api/video/#likes">/VIDEO_ID/likes</a></td><td><a href="/javadoc/facebook4j/api/VideoMethods.html#unlikeVideo(java.lang.String)">unlikeVideo()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/video/">/VIDEO_ID/comments</a><br />(see: Connections - comments)</td><td><a href="/javadoc/facebook4j/api/VideoMethods.html#getVideoComments(java.lang.String)">getVideoComments()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/video/#comments">/VIDEO_ID/comments</a></td><td><a href="/javadoc/facebook4j/api/VideoMethods.html#commentVideo(java.lang.String,%20java.lang.String)">commentVideo()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/video/">/VIDEO_ID/picture</a><br />(see: Connections - picture)</td><td><a href="/javadoc/facebook4j/api/VideoMethods.html#getVideoCover(java.lang.String)">getVideoCover()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/user/">/USER_ID/videos</a><br />(see: Connections - videos)</td><td><a href="/javadoc/facebook4j/api/VideoMethods.html#getVideos()">getVideos()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/page/">/PAGE_ID/videos</a><br />(see: Connections - videos)</td><td><a href="/javadoc/facebook4j/api/VideoMethods.html#getVideos()">getVideos()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/user/#videos">/USER_ID/videos</a></td><td><a href="/javadoc/facebook4j/api/VideoMethods.html#postVideo(facebook4j.Media)">postVideo()</a></td></tr>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/reference/api/page/#videos">/PAGE_ID/videos</a></td><td><a href="/javadoc/facebook4j/api/VideoMethods.html#postVideo(facebook4j.Media)">postVideo()</a></td></tr>
</tbody></table>


## TestUser {#testuser}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>POST</td><td><a href="https://developers.facebook.com/docs/test_users/">/APP_ID/accounts/test-users?...</a><br />(see: Creating section)</td><td><a href="/javadoc/facebook4j/api/TestUserMethods.html#createTestUser(java.lang.String)">createTestUser()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/test_users/">/APP_ID/accounts/test-users</a><br />(see: Accessing section)</td><td><a href="/javadoc/facebook4j/api/TestUserMethods.html#getTestUsers(java.lang.String)">getTestUsers()</a></td></tr>
<tr><td>DELETE</td><td><a href="https://developers.facebook.com/docs/test_users/">/TEST_USER_ID</a><br />(see: Deleting section)</td><td><a href="/javadoc/facebook4j/api/TestUserMethods.html#deleteTestUser(java.lang.String)">deleteTestUser()</a></td></tr>
</tbody></table>


## FQL {#fql}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/technical-guides/fql/">/fql?q=FQL</a></td><td><a href="/javadoc/facebook4j/api/FQLMethods.html#executeFQL(java.lang.String)">executeFQL()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/technical-guides/fql/#multi">/fql?q={FQL_NAME1:FQL1,...}</a></td><td><a href="/javadoc/facebook4j/api/FQLMethods.html#executeMultiFQL(java.util.Map)">executeMultiFQL()</a></td></tr>
</tbody></table>


## Search {#search}
<table class="bordered-table zebra-striped" style="width: auto;"><thead><tr><th style="width: 180px;" colspan="2">Endpoint</th><th>Facebook4J Method</th></tr></thead>
<tbody>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/search/">/search?q=QUERY&type=post</a></td><td><a href="/javadoc/facebook4j/api/SearchMethods.html#searchPosts(java.lang.String)">searchPosts()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/search/">/search?q=QUERY&type=user</a></td><td><a href="/javadoc/facebook4j/api/SearchMethods.html#searchUsers(java.lang.String)">searchUsers()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/search/">/search?q=QUERY&type=page</a></td><td><a href="/javadoc/facebook4j/api/SearchMethods.html#searchPages(java.lang.String)">searchPages()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/search/">/search?q=QUERY&type=event</a></td><td><a href="/javadoc/facebook4j/api/SearchMethods.html#searchEvents(java.lang.String)">searchEvents()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/search/">/search?q=QUERY&type=group</a></td><td><a href="/javadoc/facebook4j/api/SearchMethods.html#searchGroups(java.lang.String)">searchGroups()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/search/">/search?q=QUERY&type=place</a></td><td><a href="/javadoc/facebook4j/api/SearchMethods.html#searchPlaces(java.lang.String)">searchPlaces()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/search/">/search?q=QUERY&type=place&center=xx&distance=xx</a></td><td><a href="/javadoc/facebook4j/api/SearchMethods.html#searchPlaces(java.lang.String,%20facebook4j.GeoLocation,%20int)">searchPlaces()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/search/">/search?type=checkin</a></td><td><a href="/javadoc/facebook4j/api/SearchMethods.html#searchCheckins()">searchCheckins()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/search/">/search?type=location&center=xx&distance=xx</a></td><td><a href="/javadoc/facebook4j/api/SearchMethods.html#searchLocations(facebook4j.GeoLocation,%20int)">searchLocations()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/search/">/search?type=location&place=xxx</a></td><td><a href="/javadoc/facebook4j/api/SearchMethods.html#searchLocations(java.lang.String)">searchLocations()</a></td></tr>
<tr><td>GET</td><td><a href="https://developers.facebook.com/docs/reference/api/search/">/search?q=QUERY</a></td><td><a href="/javadoc/facebook4j/api/SearchMethods.html#search(java.lang.String)">search()</a></td></tr>
</tbody></table>

