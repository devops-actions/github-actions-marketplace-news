---
title: Chatwork Messaging Action
date: 2023-10-23 10:53:17 +00:00
tags:
  - okuzawats
  - GitHub Actions
draft: false
repo: okuzawats/chatwork-messaging-action
marketplace: https://github.com/marketplace/actions/chatwork-messaging-action
version: v1.1
dependentsNumber: "6"
---


Version updated for **okuzawats/chatwork-messaging-action** to version **v1.1**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/chatwork-messaging-action) to find the latest changes.

## Release notes

以下の構文でタスクのアサインができるようになりました✅
```yaml
- uses: okuzawats/chatwork-messaging-action@v1.1 # またはコミットハッシュを使用してください。
  with:
    apiToken: ${{ secrets.API_KEY }} # Chatwork の API キーです。secrets の利用を推奨します。
    roomId: ${{ secrets.ROOM_ID }} # Chatwork の Room ID です。secrets の利用を推奨します。
    message: '牛乳を買う'
    messageType: 'task'
    userIdsToAssignTask: USER_ID
```
