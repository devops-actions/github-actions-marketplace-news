---
title: pinprick-action
date: 2026-07-31 06:35:18 +00:00
tags:
  - starhaven-io
  - GitHub Actions
draft: false
repo: https://github.com/starhaven-io/pinprick-action
marketplace: https://github.com/marketplace/actions/pinprick-action
version: v0.5.2
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  The `pinprick-action` GitHub Action automates the security audit of GitHub Actions workflows using the pinprick tool, which identifies potential vulnerabilities in external actions and repositories used within the workflow. It ensures that dependencies are pinned to specific versions to prevent unauthorized changes or code injection. The action supports various runners and can be configured to emit SARIF reports for advanced security integration with GitHub Code Scanning or print results directly to the workflow log.
---


Version updated for **https://github.com/starhaven-io/pinprick-action** to version **v0.5.2**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pinprick-action) to find the latest changes.

## Action Summary

The `pinprick-action` GitHub Action automates the security audit of GitHub Actions workflows using the pinprick tool, which identifies potential vulnerabilities in external actions and repositories used within the workflow. It ensures that dependencies are pinned to specific versions to prevent unauthorized changes or code injection. The action supports various runners and can be configured to emit SARIF reports for advanced security integration with GitHub Code Scanning or print results directly to the workflow log.

## What's Changed

Pins pinprick 0.23.0 as the default engine version.
