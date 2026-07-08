---
title: pinprick-action
date: 2026-07-08 06:23:58 +00:00
tags:
  - starhaven-io
  - GitHub Actions
draft: false
repo: https://github.com/starhaven-io/pinprick-action
marketplace: https://github.com/marketplace/actions/pinprick-action
version: v0.4.2
dependentsNumber: "7"
actionType: Composite
---


Version updated for **https://github.com/starhaven-io/pinprick-action** to version **v0.4.2**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pinprick-action) to find the latest changes.

## What's Changed

Updates the pinned pinprick version.

Defaults to pinprick 0.21.0 (was 0.20.1 in v0.4.1), pinned for deterministic runs. pinprick 0.21.0 removes the source.unverified scoring rule and its trusted-owners config key, moving the scoring rubric to 0.9.0: score no longer emits the zero-point publisher note, and trusted-owners is no longer a recognized config field. The action's behavior, inputs, and permissions are unchanged. See the README for usage.

