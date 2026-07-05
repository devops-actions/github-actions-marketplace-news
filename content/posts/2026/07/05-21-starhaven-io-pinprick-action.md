---
title: pinprick-action
date: 2026-07-05 21:57:36 +00:00
tags:
  - starhaven-io
  - GitHub Actions
draft: false
repo: https://github.com/starhaven-io/pinprick-action
marketplace: https://github.com/marketplace/actions/pinprick-action
version: v0.4.1
dependentsNumber: "7"
actionType: Composite
---


Version updated for **https://github.com/starhaven-io/pinprick-action** to version **v0.4.1**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pinprick-action) to find the latest changes.

## What's Changed

Updates the pinned pinprick version.

Defaults to pinprick 0.20.1 (was 0.20.0 in v0.4.0), pinned for deterministic runs. pinprick 0.20.1 restores the documented checksum-verification suppression for saved shell fetches that 0.20.0 dropped: an unversioned-URL download verified against a pinned digest within the three-line window is recorded as an allowed match again, including the piped manifest form. Pipe-to-shell and latest-URL findings remain exempt. The action's behavior, inputs, and permissions are unchanged. See the README for usage.
