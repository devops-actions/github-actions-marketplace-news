---
title: Huawei AppGallery Connect Publish
date: 2026-07-22 06:08:48 +00:00
tags:
  - Siyabulela
  - GitHub Actions
draft: false
repo: https://github.com/Siyabulela/huawei-appgallery-publish-action
marketplace: https://github.com/marketplace/actions/huawei-appgallery-connect-publish
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The Huawei AppGallery Connect Publish Action uploads an app package (APK, AAB, or RPK) to Huawei AppGallery Connect via the official Publish API, automatically updating file info and leaving final submission as a manual step in the AGC console. This action is designed to replace unmaintained community actions and uses direct Huawei Publish API calls without third-party dependencies. It requires setting up an API client with specific permissions and scopes to avoid common pitfalls.
---


Version updated for **https://github.com/Siyabulela/huawei-appgallery-publish-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/huawei-appgallery-connect-publish) to find the latest changes.

## Action Summary

The Huawei AppGallery Connect Publish Action uploads an app package (APK, AAB, or RPK) to Huawei AppGallery Connect via the official Publish API, automatically updating file info and leaving final submission as a manual step in the AGC console. This action is designed to replace unmaintained community actions and uses direct Huawei Publish API calls without third-party dependencies. It requires setting up an API client with specific permissions and scopes to avoid common pitfalls.

## What's Changed

Initial public release. Uploads an app package to Huawei AppGallery Connect via the Publish API v2 (token, upload-url, file upload, app-file-info). Does not submit for review — that stays a manual step in the AGC console.

See the README for the setup gotcha that took a while to track down: the API client must be created with Project set to N/A, not scoped to your app's project, or every call past the token step fails with a 403 and an empty response body.
