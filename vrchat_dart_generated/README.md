# vrchat_dart_generated (EXPERIMENTAL)
![VRChat API Banner](https://vrchatapi.github.io/assets/img/api_banner_1500x400.png)

# Welcome to the VRChat API

Before we begin, we would like to state this is a **COMMUNITY DRIVEN PROJECT**.
This means that everything you read on here was written by the community itself and is **not** officially supported by VRChat.
The documentation is provided \"AS IS\", and any action you take towards VRChat is completely your own responsibility.

The documentation and additional libraries SHALL ONLY be used for applications interacting with VRChat's API in accordance
with their [Terms of Service](https://hello.vrchat.com/legal) and [Community Guidelines](https://hello.vrchat.com/community-guidelines), and MUST NOT be used for modifying the client, \"avatar ripping\", or other illegal activities.
Malicious usage or spamming the API may result in account termination.
Certain parts of the API are also more sensitive than others, for example moderation, so please tread extra carefully and read the warnings when present.

![Tupper Policy on API](https://i.imgur.com/yLlW7Ok.png)

Finally, use of the API using applications other than the approved methods (website, VRChat application, Unity SDK) is not officially supported.
VRChat provides no guarantee or support for external applications using the API. Access to API endpoints may break **at any time, without notice**.
Therefore, please **do not ping** VRChat Staff in the VRChat Discord if you are having API problems, as they do not provide API support.
We will make a best effort in keeping this documentation and associated language libraries up to date, but things might be outdated or missing.
If you find that something is no longer valid, please contact us on Discord or [create an issue](https://github.com/vrchatapi/specification/issues) and tell us so we can fix it.

# Getting Started

The VRChat API can be used to programmatically retrieve or update information regarding your profile, friends, avatars, worlds and more.
The API consists of two parts, \"Photon\" which is only used in-game, and the \"Web API\" which is used by both the game and the website.
This documentation focuses only on the Web API.

The API is designed around the REST ideology, providing semi-simple and usually predictable URIs to access and modify objects.
Requests support standard HTTP methods like GET, PUT, POST, and DELETE and standard status codes.
Response bodies are always UTF-8 encoded JSON objects, unless explicitly documented otherwise.

<div class=\"callout callout-error\">
  <strong>🛑 Warning! Do not touch Photon!</strong><br>
  Photon is only used by the in-game client and should <b>not</b> be touched. Doing so may result in permanent account termination.
</div>

<div class=\"callout callout-info\">
  <strong>ℹ️ API Key and Authentication</strong><br>
  The API Key has always been the same and is currently <code>JlE5Jldo5Jibnk5O5hTx6XVqsJu4WJ26</code>.
  Read <a href=\"#tag--authentication\">Authentication</a> for how to log in.
</div>

# Using the API

For simply exploring what the API can do it is strongly recommended to download [Insomnia](https://insomnia.rest/download), a free and open-source
API client that's great for sending requests to the API in an orderly fashion.
Insomnia allows you to send data in the format that's required for VRChat's API.
It is also possible to try out the API in your browser, by first logging in at [vrchat.com/home](https://vrchat.com/home/) and then going to
[vrchat.com/api/1/auth/user](https://vrchat.com/api/1/auth/user), but the information will be much harder to work with.

For more permanent operation such as software development it is instead recommended to use one of the existing language SDKs.
This community project maintains API libraries in several languages, which allows you to interact with the API with simple function calls
rather than having to implement the HTTP protocol yourself. Most of these libraries are automatically generated from the API specification,
sometimes with additional helpful wrapper code to make usage easier. This allows them to be almost automatically updated and expanded upon
as soon as a new feature is introduced in the specification itself. The libraries can be found on [GitHub](https://github.com/vrchatapi) or following:

* [NodeJS (JavaScript)](https://www.npmjs.com/package/vrchat)
* [Dart](https://pub.dev/packages/vrchat_dart)
* [Rust](https://crates.io/crates/vrchatapi)
* [C#](https://github.com/vrchatapi/vrchatapi-csharp)
* [Python](https://github.com/vrchatapi/vrchatapi-python)

# Pagination

Most endpoints enforce pagination, meaning they will only return 10 entries by default, and never more than 100.<br>
Using both the limit and offset parameters allows you to easily paginate through a large number of objects.

| Query Parameter | Type | Description |
| ----------|--|------- |
| `n` | integer  | The number of objects to return. This value often defaults to 10. Highest limit is always 100.|
| `offset` | integer  | A zero-based offset from the default object sorting.|

If a request returns fewer objects than the `limit` parameter, there are no more items available to return.

# Contribution

Do you want to get involved in the documentation effort? Do you want to help improve one of the language API libraries?
This project is an [OPEN Open Source Project](https://openopensource.org)! This means that individuals making significant and valuable contributions are given
commit-access to the project. It also means we are very open and welcoming of new people making contributions, unlike some more guarded open-source projects.

[![Discord](https://img.shields.io/static/v1?label=vrchatapi&message=discord&color=blueviolet&style=for-the-badge)](https://discord.gg/qjZE9C9fkB)

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.13.0
- Build package: org.openapitools.codegen.languages.DartDioClientCodegen
For more information, please visit [https://github.com/VRChatAPI](https://github.com/VRChatAPI)

## Requirements

* Dart 2.15.0+ or Flutter 2.8.0+
* Dio 5.0.0+ (https://pub.dev/packages/dio)
* JSON Serializable 6.1.5+ (https://pub.dev/packages/json_serializable)

## Installation & Usage

### pub.dev
To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml
```yaml
dependencies:
  vrchat_dart_generated: 1.12.0
```

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```yaml
dependencies:
  vrchat_dart_generated:
    git:
      url: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      #ref: main
```

### Local development
To use the package from your local drive, please include the following in pubspec.yaml
```yaml
dependencies:
  vrchat_dart_generated:
    path: /path/to/vrchat_dart_generated
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:vrchat_dart_generated/vrchat_dart_generated.dart';


final api = VrchatDartGenerated().getAuthenticationApi();
final String email = email_example; // String | Filter by email.
final String displayName = displayName_example; // String | Filter by displayName.
final String userId = userId_example; // String | Filter by UserID.
final String excludeUserId = excludeUserId_example; // String | Exclude by UserID.

try {
    final response = await api.checkUserExists(email, displayName, userId, excludeUserId);
    print(response);
} catch on DioException (e) {
    print("Exception when calling AuthenticationApi->checkUserExists: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.vrchat.cloud/api/1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
[*AuthenticationApi*](doc/AuthenticationApi.md) | [**checkUserExists**](doc/AuthenticationApi.md#checkuserexists) | **GET** /auth/exists | Check User Exists
[*AuthenticationApi*](doc/AuthenticationApi.md) | [**deleteUser**](doc/AuthenticationApi.md#deleteuser) | **PUT** /users/{userId}/delete | Delete User
[*AuthenticationApi*](doc/AuthenticationApi.md) | [**getCurrentUser**](doc/AuthenticationApi.md#getcurrentuser) | **GET** /auth/user | Login and/or Get Current User Info
[*AuthenticationApi*](doc/AuthenticationApi.md) | [**logout**](doc/AuthenticationApi.md#logout) | **PUT** /logout | Logout
[*AuthenticationApi*](doc/AuthenticationApi.md) | [**verify2FA**](doc/AuthenticationApi.md#verify2fa) | **POST** /auth/twofactorauth/totp/verify | Verify 2FA code
[*AuthenticationApi*](doc/AuthenticationApi.md) | [**verify2FAEmailCode**](doc/AuthenticationApi.md#verify2faemailcode) | **POST** /auth/twofactorauth/emailotp/verify | Verify 2FA email code
[*AuthenticationApi*](doc/AuthenticationApi.md) | [**verifyAuthToken**](doc/AuthenticationApi.md#verifyauthtoken) | **GET** /auth | Verify Auth Token
[*AuthenticationApi*](doc/AuthenticationApi.md) | [**verifyRecoveryCode**](doc/AuthenticationApi.md#verifyrecoverycode) | **POST** /auth/twofactorauth/otp/verify | Verify 2FA code with Recovery code
[*AvatarsApi*](doc/AvatarsApi.md) | [**createAvatar**](doc/AvatarsApi.md#createavatar) | **POST** /avatars | Create Avatar
[*AvatarsApi*](doc/AvatarsApi.md) | [**deleteAvatar**](doc/AvatarsApi.md#deleteavatar) | **DELETE** /avatars/{avatarId} | Delete Avatar
[*AvatarsApi*](doc/AvatarsApi.md) | [**getAvatar**](doc/AvatarsApi.md#getavatar) | **GET** /avatars/{avatarId} | Get Avatar
[*AvatarsApi*](doc/AvatarsApi.md) | [**getFavoritedAvatars**](doc/AvatarsApi.md#getfavoritedavatars) | **GET** /avatars/favorites | List Favorited Avatars
[*AvatarsApi*](doc/AvatarsApi.md) | [**getOwnAvatar**](doc/AvatarsApi.md#getownavatar) | **GET** /users/{userId}/avatar | Get Own Avatar
[*AvatarsApi*](doc/AvatarsApi.md) | [**searchAvatars**](doc/AvatarsApi.md#searchavatars) | **GET** /avatars | Search Avatars
[*AvatarsApi*](doc/AvatarsApi.md) | [**selectAvatar**](doc/AvatarsApi.md#selectavatar) | **PUT** /avatars/{avatarId}/select | Select Avatar
[*AvatarsApi*](doc/AvatarsApi.md) | [**selectFallbackAvatar**](doc/AvatarsApi.md#selectfallbackavatar) | **PUT** /avatars/{avatarId}/selectFallback | Select Fallback Avatar
[*AvatarsApi*](doc/AvatarsApi.md) | [**updateAvatar**](doc/AvatarsApi.md#updateavatar) | **PUT** /avatars/{avatarId} | Update Avatar
[*EconomyApi*](doc/EconomyApi.md) | [**getCurrentSubscriptions**](doc/EconomyApi.md#getcurrentsubscriptions) | **GET** /auth/user/subscription | Get Current Subscriptions
[*EconomyApi*](doc/EconomyApi.md) | [**getLicenseGroup**](doc/EconomyApi.md#getlicensegroup) | **GET** /licenseGroups/{licenseGroupId} | Get License Group
[*EconomyApi*](doc/EconomyApi.md) | [**getSteamTransaction**](doc/EconomyApi.md#getsteamtransaction) | **GET** /Steam/transactions/{transactionId} | Get Steam Transaction
[*EconomyApi*](doc/EconomyApi.md) | [**getSteamTransactions**](doc/EconomyApi.md#getsteamtransactions) | **GET** /Steam/transactions | List Steam Transactions
[*EconomyApi*](doc/EconomyApi.md) | [**getSubscriptions**](doc/EconomyApi.md#getsubscriptions) | **GET** /subscriptions | List Subscriptions
[*FavoritesApi*](doc/FavoritesApi.md) | [**addFavorite**](doc/FavoritesApi.md#addfavorite) | **POST** /favorites | Add Favorite
[*FavoritesApi*](doc/FavoritesApi.md) | [**clearFavoriteGroup**](doc/FavoritesApi.md#clearfavoritegroup) | **DELETE** /favorite/group/{favoriteGroupType}/{favoriteGroupName}/{userId} | Clear Favorite Group
[*FavoritesApi*](doc/FavoritesApi.md) | [**getFavorite**](doc/FavoritesApi.md#getfavorite) | **GET** /favorites/{favoriteId} | Show Favorite
[*FavoritesApi*](doc/FavoritesApi.md) | [**getFavoriteGroup**](doc/FavoritesApi.md#getfavoritegroup) | **GET** /favorite/group/{favoriteGroupType}/{favoriteGroupName}/{userId} | Show Favorite Group
[*FavoritesApi*](doc/FavoritesApi.md) | [**getFavoriteGroups**](doc/FavoritesApi.md#getfavoritegroups) | **GET** /favorite/groups | List Favorite Groups
[*FavoritesApi*](doc/FavoritesApi.md) | [**getFavorites**](doc/FavoritesApi.md#getfavorites) | **GET** /favorites | List Favorites
[*FavoritesApi*](doc/FavoritesApi.md) | [**removeFavorite**](doc/FavoritesApi.md#removefavorite) | **DELETE** /favorites/{favoriteId} | Remove Favorite
[*FavoritesApi*](doc/FavoritesApi.md) | [**updateFavoriteGroup**](doc/FavoritesApi.md#updatefavoritegroup) | **PUT** /favorite/group/{favoriteGroupType}/{favoriteGroupName}/{userId} | Update Favorite Group
[*FilesApi*](doc/FilesApi.md) | [**createFile**](doc/FilesApi.md#createfile) | **POST** /file | Create File
[*FilesApi*](doc/FilesApi.md) | [**createFileVersion**](doc/FilesApi.md#createfileversion) | **POST** /file/{fileId} | Create File Version
[*FilesApi*](doc/FilesApi.md) | [**deleteFile**](doc/FilesApi.md#deletefile) | **DELETE** /file/{fileId} | Delete File
[*FilesApi*](doc/FilesApi.md) | [**deleteFileVersion**](doc/FilesApi.md#deletefileversion) | **DELETE** /file/{fileId}/{versionId} | Delete File Version
[*FilesApi*](doc/FilesApi.md) | [**downloadFileVersion**](doc/FilesApi.md#downloadfileversion) | **GET** /file/{fileId}/{versionId} | Download File Version
[*FilesApi*](doc/FilesApi.md) | [**finishFileDataUpload**](doc/FilesApi.md#finishfiledataupload) | **PUT** /file/{fileId}/{versionId}/{fileType}/finish | Finish FileData Upload
[*FilesApi*](doc/FilesApi.md) | [**getFile**](doc/FilesApi.md#getfile) | **GET** /file/{fileId} | Show File
[*FilesApi*](doc/FilesApi.md) | [**getFileDataUploadStatus**](doc/FilesApi.md#getfiledatauploadstatus) | **GET** /file/{fileId}/{versionId}/{fileType}/status | Check FileData Upload Status
[*FilesApi*](doc/FilesApi.md) | [**getFiles**](doc/FilesApi.md#getfiles) | **GET** /files | List Files
[*FilesApi*](doc/FilesApi.md) | [**startFileDataUpload**](doc/FilesApi.md#startfiledataupload) | **PUT** /file/{fileId}/{versionId}/{fileType}/start | Start FileData Upload
[*FriendsApi*](doc/FriendsApi.md) | [**deleteFriendRequest**](doc/FriendsApi.md#deletefriendrequest) | **DELETE** /user/{userId}/friendRequest | Delete Friend Request
[*FriendsApi*](doc/FriendsApi.md) | [**friend**](doc/FriendsApi.md#friend) | **POST** /user/{userId}/friendRequest | Send Friend Request
[*FriendsApi*](doc/FriendsApi.md) | [**getFriendStatus**](doc/FriendsApi.md#getfriendstatus) | **GET** /user/{userId}/friendStatus | Check Friend Status
[*FriendsApi*](doc/FriendsApi.md) | [**getFriends**](doc/FriendsApi.md#getfriends) | **GET** /auth/user/friends | List Friends
[*FriendsApi*](doc/FriendsApi.md) | [**unfriend**](doc/FriendsApi.md#unfriend) | **DELETE** /auth/user/friends/{userId} | Unfriend
[*GroupsApi*](doc/GroupsApi.md) | [**addGroupGalleryImage**](doc/GroupsApi.md#addgroupgalleryimage) | **POST** /groups/{groupId}/galleries/{groupGalleryId}/images | Add Group Gallery Image
[*GroupsApi*](doc/GroupsApi.md) | [**addGroupMemberRole**](doc/GroupsApi.md#addgroupmemberrole) | **PUT** /groups/{groupId}/members/{userId}/roles/{groupRoleId} | Add Role to GroupMember
[*GroupsApi*](doc/GroupsApi.md) | [**banGroupMember**](doc/GroupsApi.md#bangroupmember) | **POST** /groups/{groupId}/bans | Ban Group Member
[*GroupsApi*](doc/GroupsApi.md) | [**cancelGroupRequest**](doc/GroupsApi.md#cancelgrouprequest) | **DELETE** /groups/{groupId}/requests | Cancel Group Join Request
[*GroupsApi*](doc/GroupsApi.md) | [**createGroup**](doc/GroupsApi.md#creategroup) | **POST** /groups | Create Group
[*GroupsApi*](doc/GroupsApi.md) | [**createGroupAnnouncement**](doc/GroupsApi.md#creategroupannouncement) | **POST** /groups/{groupId}/announcement | Create Group Announcement
[*GroupsApi*](doc/GroupsApi.md) | [**createGroupGallery**](doc/GroupsApi.md#creategroupgallery) | **POST** /groups/{groupId}/galleries | Create Group Gallery
[*GroupsApi*](doc/GroupsApi.md) | [**createGroupInvite**](doc/GroupsApi.md#creategroupinvite) | **POST** /groups/{groupId}/invites | Invite User to Group
[*GroupsApi*](doc/GroupsApi.md) | [**createGroupRole**](doc/GroupsApi.md#creategrouprole) | **POST** /groups/{groupId}/roles | Create GroupRole
[*GroupsApi*](doc/GroupsApi.md) | [**deleteGroup**](doc/GroupsApi.md#deletegroup) | **DELETE** /groups/{groupId} | Delete Group
[*GroupsApi*](doc/GroupsApi.md) | [**deleteGroupAnnouncement**](doc/GroupsApi.md#deletegroupannouncement) | **DELETE** /groups/{groupId}/announcement | Delete Group Announcement
[*GroupsApi*](doc/GroupsApi.md) | [**deleteGroupGallery**](doc/GroupsApi.md#deletegroupgallery) | **DELETE** /groups/{groupId}/galleries/{groupGalleryId} | Delete Group Gallery
[*GroupsApi*](doc/GroupsApi.md) | [**deleteGroupGalleryImage**](doc/GroupsApi.md#deletegroupgalleryimage) | **DELETE** /groups/{groupId}/galleries/{groupGalleryId}/images/{groupGalleryImageId} | Delete Group Gallery Image
[*GroupsApi*](doc/GroupsApi.md) | [**deleteGroupInvite**](doc/GroupsApi.md#deletegroupinvite) | **DELETE** /groups/{groupId}/invites/{userId} | Delete User Invite
[*GroupsApi*](doc/GroupsApi.md) | [**deleteGroupRole**](doc/GroupsApi.md#deletegrouprole) | **DELETE** /groups/{groupId}/roles/{groupRoleId} | Delete Group Role
[*GroupsApi*](doc/GroupsApi.md) | [**getGroup**](doc/GroupsApi.md#getgroup) | **GET** /groups/{groupId} | Get Group by ID
[*GroupsApi*](doc/GroupsApi.md) | [**getGroupAnnouncements**](doc/GroupsApi.md#getgroupannouncements) | **GET** /groups/{groupId}/announcement | Get Group Announcement
[*GroupsApi*](doc/GroupsApi.md) | [**getGroupAuditLogs**](doc/GroupsApi.md#getgroupauditlogs) | **GET** /groups/{groupId}/auditLogs | Get Group Audit Logs
[*GroupsApi*](doc/GroupsApi.md) | [**getGroupBans**](doc/GroupsApi.md#getgroupbans) | **GET** /groups/{groupId}/bans | Get Group Bans
[*GroupsApi*](doc/GroupsApi.md) | [**getGroupGalleryImages**](doc/GroupsApi.md#getgroupgalleryimages) | **GET** /groups/{groupId}/galleries/{groupGalleryId} | Get Group Gallery Images
[*GroupsApi*](doc/GroupsApi.md) | [**getGroupInvites**](doc/GroupsApi.md#getgroupinvites) | **GET** /groups/{groupId}/invites | Get Group Invites Sent
[*GroupsApi*](doc/GroupsApi.md) | [**getGroupMember**](doc/GroupsApi.md#getgroupmember) | **GET** /groups/{groupId}/members/{userId} | Get Group Member
[*GroupsApi*](doc/GroupsApi.md) | [**getGroupMembers**](doc/GroupsApi.md#getgroupmembers) | **GET** /groups/{groupId}/members | List Group Members
[*GroupsApi*](doc/GroupsApi.md) | [**getGroupPermissions**](doc/GroupsApi.md#getgrouppermissions) | **GET** /groups/{groupId}/permissions | List Group Permissions
[*GroupsApi*](doc/GroupsApi.md) | [**getGroupRequests**](doc/GroupsApi.md#getgrouprequests) | **GET** /groups/{groupId}/requests | Get Group Join Requests
[*GroupsApi*](doc/GroupsApi.md) | [**getGroupRoles**](doc/GroupsApi.md#getgrouproles) | **GET** /groups/{groupId}/roles | Get Group Roles
[*GroupsApi*](doc/GroupsApi.md) | [**joinGroup**](doc/GroupsApi.md#joingroup) | **POST** /groups/{groupId}/join | Join Group
[*GroupsApi*](doc/GroupsApi.md) | [**kickGroupMember**](doc/GroupsApi.md#kickgroupmember) | **DELETE** /groups/{groupId}/members/{userId} | Kick Group Member
[*GroupsApi*](doc/GroupsApi.md) | [**leaveGroup**](doc/GroupsApi.md#leavegroup) | **POST** /groups/{groupId}/leave | Leave Group
[*GroupsApi*](doc/GroupsApi.md) | [**removeGroupMemberRole**](doc/GroupsApi.md#removegroupmemberrole) | **DELETE** /groups/{groupId}/members/{userId}/roles/{groupRoleId} | Remove Role from GroupMember
[*GroupsApi*](doc/GroupsApi.md) | [**respondGroupJoinRequest**](doc/GroupsApi.md#respondgroupjoinrequest) | **PUT** /groups/{groupId}/requests/{userId} | Respond Group Join request
[*GroupsApi*](doc/GroupsApi.md) | [**unbanGroupMember**](doc/GroupsApi.md#unbangroupmember) | **DELETE** /groups/{groupId}/bans/{userId} | Unban Group Member
[*GroupsApi*](doc/GroupsApi.md) | [**updateGroup**](doc/GroupsApi.md#updategroup) | **PUT** /groups/{groupId} | Update Group
[*GroupsApi*](doc/GroupsApi.md) | [**updateGroupGallery**](doc/GroupsApi.md#updategroupgallery) | **PUT** /groups/{groupId}/galleries/{groupGalleryId} | Update Group Gallery
[*GroupsApi*](doc/GroupsApi.md) | [**updateGroupMember**](doc/GroupsApi.md#updategroupmember) | **PUT** /groups/{groupId}/members/{userId} | Update Group Member
[*GroupsApi*](doc/GroupsApi.md) | [**updateGroupRole**](doc/GroupsApi.md#updategrouprole) | **PUT** /groups/{groupId}/roles/{groupRoleId} | Update Group Role
[*InstancesApi*](doc/InstancesApi.md) | [**getInstance**](doc/InstancesApi.md#getinstance) | **GET** /instances/{worldId}:{instanceId} | Get Instance
[*InstancesApi*](doc/InstancesApi.md) | [**getInstanceByShortName**](doc/InstancesApi.md#getinstancebyshortname) | **GET** /instances/s/{shortName} | Get Instance By Short Name
[*InstancesApi*](doc/InstancesApi.md) | [**getShortName**](doc/InstancesApi.md#getshortname) | **GET** /instances/{worldId}:{instanceId}/shortName | Get Instance Short Name
[*InstancesApi*](doc/InstancesApi.md) | [**sendSelfInvite**](doc/InstancesApi.md#sendselfinvite) | **POST** /instances/{worldId}:{instanceId}/invite | Send Self Invite
[*InviteApi*](doc/InviteApi.md) | [**getInviteMessage**](doc/InviteApi.md#getinvitemessage) | **GET** /message/{userId}/{messageType}/{slot} | Get Invite Message
[*InviteApi*](doc/InviteApi.md) | [**getInviteMessages**](doc/InviteApi.md#getinvitemessages) | **GET** /message/{userId}/{messageType} | List Invite Messages
[*InviteApi*](doc/InviteApi.md) | [**inviteMyselfTo**](doc/InviteApi.md#invitemyselfto) | **POST** /invite/myself/to/{worldId}:{instanceId} | Invite Myself To Instance
[*InviteApi*](doc/InviteApi.md) | [**inviteUser**](doc/InviteApi.md#inviteuser) | **POST** /invite/{userId} | Invite User
[*InviteApi*](doc/InviteApi.md) | [**requestInvite**](doc/InviteApi.md#requestinvite) | **POST** /requestInvite/{userId} | Request Invite
[*InviteApi*](doc/InviteApi.md) | [**resetInviteMessage**](doc/InviteApi.md#resetinvitemessage) | **DELETE** /message/{userId}/{messageType}/{slot} | Reset Invite Message
[*InviteApi*](doc/InviteApi.md) | [**respondInvite**](doc/InviteApi.md#respondinvite) | **POST** /invite/{notificationId}/response | Respond Invite
[*InviteApi*](doc/InviteApi.md) | [**updateInviteMessage**](doc/InviteApi.md#updateinvitemessage) | **PUT** /message/{userId}/{messageType}/{slot} | Update Invite Message
[*NotificationsApi*](doc/NotificationsApi.md) | [**acceptFriendRequest**](doc/NotificationsApi.md#acceptfriendrequest) | **PUT** /auth/user/notifications/{notificationId}/accept | Accept Friend Request
[*NotificationsApi*](doc/NotificationsApi.md) | [**clearNotifications**](doc/NotificationsApi.md#clearnotifications) | **PUT** /auth/user/notifications/clear | Clear All Notifications
[*NotificationsApi*](doc/NotificationsApi.md) | [**deleteNotification**](doc/NotificationsApi.md#deletenotification) | **PUT** /auth/user/notifications/{notificationId}/hide | Delete Notification
[*NotificationsApi*](doc/NotificationsApi.md) | [**getNotifications**](doc/NotificationsApi.md#getnotifications) | **GET** /auth/user/notifications | List Notifications
[*NotificationsApi*](doc/NotificationsApi.md) | [**markNotificationAsRead**](doc/NotificationsApi.md#marknotificationasread) | **PUT** /auth/user/notifications/{notificationId}/see | Mark Notification As Read
[*PermissionsApi*](doc/PermissionsApi.md) | [**getAssignedPermissions**](doc/PermissionsApi.md#getassignedpermissions) | **GET** /auth/permissions | Get Assigned Permissions
[*PermissionsApi*](doc/PermissionsApi.md) | [**getPermission**](doc/PermissionsApi.md#getpermission) | **GET** /permissions/{permissionId} | Get Permission
[*PlayermoderationApi*](doc/PlayermoderationApi.md) | [**clearAllPlayerModerations**](doc/PlayermoderationApi.md#clearallplayermoderations) | **DELETE** /auth/user/playermoderations | Clear All Player Moderations
[*PlayermoderationApi*](doc/PlayermoderationApi.md) | [**deletePlayerModeration**](doc/PlayermoderationApi.md#deleteplayermoderation) | **DELETE** /auth/user/playermoderations/{playerModerationId} | Delete Player Moderation
[*PlayermoderationApi*](doc/PlayermoderationApi.md) | [**getPlayerModeration**](doc/PlayermoderationApi.md#getplayermoderation) | **GET** /auth/user/playermoderations/{playerModerationId} | Get Player Moderation
[*PlayermoderationApi*](doc/PlayermoderationApi.md) | [**getPlayerModerations**](doc/PlayermoderationApi.md#getplayermoderations) | **GET** /auth/user/playermoderations | Search Player Moderations
[*PlayermoderationApi*](doc/PlayermoderationApi.md) | [**moderateUser**](doc/PlayermoderationApi.md#moderateuser) | **POST** /auth/user/playermoderations | Moderate User
[*PlayermoderationApi*](doc/PlayermoderationApi.md) | [**unmoderateUser**](doc/PlayermoderationApi.md#unmoderateuser) | **PUT** /auth/user/unplayermoderate | Unmoderate User
[*SystemApi*](doc/SystemApi.md) | [**getCSS**](doc/SystemApi.md#getcss) | **GET** /css/app.css | Download CSS
[*SystemApi*](doc/SystemApi.md) | [**getConfig**](doc/SystemApi.md#getconfig) | **GET** /config | Fetch API Config
[*SystemApi*](doc/SystemApi.md) | [**getCurrentOnlineUsers**](doc/SystemApi.md#getcurrentonlineusers) | **GET** /visits | Current Online Users
[*SystemApi*](doc/SystemApi.md) | [**getHealth**](doc/SystemApi.md#gethealth) | **GET** /health | Check API Health
[*SystemApi*](doc/SystemApi.md) | [**getInfoPush**](doc/SystemApi.md#getinfopush) | **GET** /infoPush | Show Information Notices
[*SystemApi*](doc/SystemApi.md) | [**getJavaScript**](doc/SystemApi.md#getjavascript) | **GET** /js/app.js | Download JavaScript
[*SystemApi*](doc/SystemApi.md) | [**getSystemTime**](doc/SystemApi.md#getsystemtime) | **GET** /time | Current System Time
[*UsersApi*](doc/UsersApi.md) | [**getUser**](doc/UsersApi.md#getuser) | **GET** /users/{userId} | Get User by ID
[*UsersApi*](doc/UsersApi.md) | [**getUserByName**](doc/UsersApi.md#getuserbyname) | **GET** /users/{username}/name | Get User by Username
[*UsersApi*](doc/UsersApi.md) | [**getUserGroupRequests**](doc/UsersApi.md#getusergrouprequests) | **GET** /users/{userId}/groups/requested | Get User Group Requests
[*UsersApi*](doc/UsersApi.md) | [**getUserGroups**](doc/UsersApi.md#getusergroups) | **GET** /users/{userId}/groups | Get User Groups
[*UsersApi*](doc/UsersApi.md) | [**searchUsers**](doc/UsersApi.md#searchusers) | **GET** /users | Search All Users
[*UsersApi*](doc/UsersApi.md) | [**updateUser**](doc/UsersApi.md#updateuser) | **PUT** /users/{userId} | Update User Info
[*WorldsApi*](doc/WorldsApi.md) | [**createWorld**](doc/WorldsApi.md#createworld) | **POST** /worlds | Create World
[*WorldsApi*](doc/WorldsApi.md) | [**deleteWorld**](doc/WorldsApi.md#deleteworld) | **DELETE** /worlds/{worldId} | Delete World
[*WorldsApi*](doc/WorldsApi.md) | [**getActiveWorlds**](doc/WorldsApi.md#getactiveworlds) | **GET** /worlds/active | List Active Worlds
[*WorldsApi*](doc/WorldsApi.md) | [**getFavoritedWorlds**](doc/WorldsApi.md#getfavoritedworlds) | **GET** /worlds/favorites | List Favorited Worlds
[*WorldsApi*](doc/WorldsApi.md) | [**getRecentWorlds**](doc/WorldsApi.md#getrecentworlds) | **GET** /worlds/recent | List Recent Worlds
[*WorldsApi*](doc/WorldsApi.md) | [**getWorld**](doc/WorldsApi.md#getworld) | **GET** /worlds/{worldId} | Get World by ID
[*WorldsApi*](doc/WorldsApi.md) | [**getWorldInstance**](doc/WorldsApi.md#getworldinstance) | **GET** /worlds/{worldId}/{instanceId} | Get World Instance
[*WorldsApi*](doc/WorldsApi.md) | [**getWorldMetadata**](doc/WorldsApi.md#getworldmetadata) | **GET** /worlds/{worldId}/metadata | Get World Metadata
[*WorldsApi*](doc/WorldsApi.md) | [**getWorldPublishStatus**](doc/WorldsApi.md#getworldpublishstatus) | **GET** /worlds/{worldId}/publish | Get World Publish Status
[*WorldsApi*](doc/WorldsApi.md) | [**publishWorld**](doc/WorldsApi.md#publishworld) | **PUT** /worlds/{worldId}/publish | Publish World
[*WorldsApi*](doc/WorldsApi.md) | [**searchWorlds**](doc/WorldsApi.md#searchworlds) | **GET** /worlds | Search All Worlds
[*WorldsApi*](doc/WorldsApi.md) | [**unpublishWorld**](doc/WorldsApi.md#unpublishworld) | **DELETE** /worlds/{worldId}/publish | Unpublish World
[*WorldsApi*](doc/WorldsApi.md) | [**updateWorld**](doc/WorldsApi.md#updateworld) | **PUT** /worlds/{worldId} | Update World


## Documentation For Models

 - [APIConfig](doc/APIConfig.md)
 - [APIConfigAnnouncement](doc/APIConfigAnnouncement.md)
 - [APIConfigDownloadURLList](doc/APIConfigDownloadURLList.md)
 - [APIConfigEvents](doc/APIConfigEvents.md)
 - [APIHealth](doc/APIHealth.md)
 - [AccountDeletionLog](doc/AccountDeletionLog.md)
 - [AddFavoriteRequest](doc/AddFavoriteRequest.md)
 - [AddGroupGalleryImageRequest](doc/AddGroupGalleryImageRequest.md)
 - [Avatar](doc/Avatar.md)
 - [AvatarUnityPackageUrlObject](doc/AvatarUnityPackageUrlObject.md)
 - [BanGroupMemberRequest](doc/BanGroupMemberRequest.md)
 - [CreateAvatarRequest](doc/CreateAvatarRequest.md)
 - [CreateFileRequest](doc/CreateFileRequest.md)
 - [CreateFileVersionRequest](doc/CreateFileVersionRequest.md)
 - [CreateGroupAnnouncementRequest](doc/CreateGroupAnnouncementRequest.md)
 - [CreateGroupGalleryRequest](doc/CreateGroupGalleryRequest.md)
 - [CreateGroupInviteRequest](doc/CreateGroupInviteRequest.md)
 - [CreateGroupRequest](doc/CreateGroupRequest.md)
 - [CreateGroupRoleRequest](doc/CreateGroupRoleRequest.md)
 - [CreateWorldRequest](doc/CreateWorldRequest.md)
 - [CurrentUser](doc/CurrentUser.md)
 - [CurrentUserPresence](doc/CurrentUserPresence.md)
 - [DeploymentGroup](doc/DeploymentGroup.md)
 - [DeveloperType](doc/DeveloperType.md)
 - [DynamicContentRow](doc/DynamicContentRow.md)
 - [Error](doc/Error.md)
 - [Favorite](doc/Favorite.md)
 - [FavoriteGroup](doc/FavoriteGroup.md)
 - [FavoriteGroupVisibility](doc/FavoriteGroupVisibility.md)
 - [FavoriteType](doc/FavoriteType.md)
 - [File](doc/File.md)
 - [FileData](doc/FileData.md)
 - [FileStatus](doc/FileStatus.md)
 - [FileUploadURL](doc/FileUploadURL.md)
 - [FileVersion](doc/FileVersion.md)
 - [FileVersionUploadStatus](doc/FileVersionUploadStatus.md)
 - [FinishFileDataUploadRequest](doc/FinishFileDataUploadRequest.md)
 - [FriendStatus](doc/FriendStatus.md)
 - [Group](doc/Group.md)
 - [GroupAnnouncement](doc/GroupAnnouncement.md)
 - [GroupAuditLogEntry](doc/GroupAuditLogEntry.md)
 - [GroupGallery](doc/GroupGallery.md)
 - [GroupGalleryImage](doc/GroupGalleryImage.md)
 - [GroupJoinState](doc/GroupJoinState.md)
 - [GroupLimitedMember](doc/GroupLimitedMember.md)
 - [GroupMember](doc/GroupMember.md)
 - [GroupMemberLimitedUser](doc/GroupMemberLimitedUser.md)
 - [GroupMemberStatus](doc/GroupMemberStatus.md)
 - [GroupMyMember](doc/GroupMyMember.md)
 - [GroupPermission](doc/GroupPermission.md)
 - [GroupPrivacy](doc/GroupPrivacy.md)
 - [GroupRole](doc/GroupRole.md)
 - [GroupRoleTemplate](doc/GroupRoleTemplate.md)
 - [GroupUserVisibility](doc/GroupUserVisibility.md)
 - [InfoPush](doc/InfoPush.md)
 - [InfoPushData](doc/InfoPushData.md)
 - [InfoPushDataArticle](doc/InfoPushDataArticle.md)
 - [InfoPushDataArticleContent](doc/InfoPushDataArticleContent.md)
 - [InfoPushDataClickable](doc/InfoPushDataClickable.md)
 - [Instance](doc/Instance.md)
 - [InstancePlatforms](doc/InstancePlatforms.md)
 - [InstanceShortNameResponse](doc/InstanceShortNameResponse.md)
 - [InstanceType](doc/InstanceType.md)
 - [InviteMessage](doc/InviteMessage.md)
 - [InviteMessageType](doc/InviteMessageType.md)
 - [InviteRequest](doc/InviteRequest.md)
 - [InviteResponse](doc/InviteResponse.md)
 - [License](doc/License.md)
 - [LicenseAction](doc/LicenseAction.md)
 - [LicenseGroup](doc/LicenseGroup.md)
 - [LicenseType](doc/LicenseType.md)
 - [LimitedUnityPackage](doc/LimitedUnityPackage.md)
 - [LimitedUser](doc/LimitedUser.md)
 - [LimitedWorld](doc/LimitedWorld.md)
 - [MIMEType](doc/MIMEType.md)
 - [ModerateUserRequest](doc/ModerateUserRequest.md)
 - [Notification](doc/Notification.md)
 - [NotificationType](doc/NotificationType.md)
 - [OrderOption](doc/OrderOption.md)
 - [PaginatedGroupAuditLogEntryList](doc/PaginatedGroupAuditLogEntryList.md)
 - [PastDisplayName](doc/PastDisplayName.md)
 - [Permission](doc/Permission.md)
 - [PlayerModeration](doc/PlayerModeration.md)
 - [PlayerModerationType](doc/PlayerModerationType.md)
 - [Region](doc/Region.md)
 - [ReleaseStatus](doc/ReleaseStatus.md)
 - [RequestInviteRequest](doc/RequestInviteRequest.md)
 - [RespondGroupJoinRequest](doc/RespondGroupJoinRequest.md)
 - [Response](doc/Response.md)
 - [SentNotification](doc/SentNotification.md)
 - [SortOption](doc/SortOption.md)
 - [Subscription](doc/Subscription.md)
 - [SubscriptionPeriod](doc/SubscriptionPeriod.md)
 - [Success](doc/Success.md)
 - [Transaction](doc/Transaction.md)
 - [TransactionAgreement](doc/TransactionAgreement.md)
 - [TransactionStatus](doc/TransactionStatus.md)
 - [TransactionSteamInfo](doc/TransactionSteamInfo.md)
 - [TransactionSteamWalletInfo](doc/TransactionSteamWalletInfo.md)
 - [TwoFactorAuthCode](doc/TwoFactorAuthCode.md)
 - [TwoFactorEmailCode](doc/TwoFactorEmailCode.md)
 - [UnityPackage](doc/UnityPackage.md)
 - [UpdateAvatarRequest](doc/UpdateAvatarRequest.md)
 - [UpdateFavoriteGroupRequest](doc/UpdateFavoriteGroupRequest.md)
 - [UpdateGroupGalleryRequest](doc/UpdateGroupGalleryRequest.md)
 - [UpdateGroupMemberRequest](doc/UpdateGroupMemberRequest.md)
 - [UpdateGroupRequest](doc/UpdateGroupRequest.md)
 - [UpdateGroupRoleRequest](doc/UpdateGroupRoleRequest.md)
 - [UpdateInviteMessageRequest](doc/UpdateInviteMessageRequest.md)
 - [UpdateUserRequest](doc/UpdateUserRequest.md)
 - [UpdateWorldRequest](doc/UpdateWorldRequest.md)
 - [User](doc/User.md)
 - [UserExists](doc/UserExists.md)
 - [UserState](doc/UserState.md)
 - [UserStatus](doc/UserStatus.md)
 - [UserSubscription](doc/UserSubscription.md)
 - [Verify2FAEmailCodeResult](doc/Verify2FAEmailCodeResult.md)
 - [Verify2FAResult](doc/Verify2FAResult.md)
 - [VerifyAuthTokenResult](doc/VerifyAuthTokenResult.md)
 - [World](doc/World.md)
 - [WorldMetadata](doc/WorldMetadata.md)
 - [WorldPublishStatus](doc/WorldPublishStatus.md)


## Documentation For Authorization


Authentication schemes defined for the API:
### authHeader

- **Type**: HTTP basic authentication

### authCookie

- **Type**: API key
- **API key parameter name**: auth
- **Location**: 

### twoFactorAuthCookie

- **Type**: API key
- **API key parameter name**: twoFactorAuth
- **Location**: 


## Author

vrchatapi.lpv0t@aries.fyi

