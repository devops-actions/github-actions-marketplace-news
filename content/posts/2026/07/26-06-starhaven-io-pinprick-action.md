---
title: pinprick-action
date: 2026-07-26 06:34:28 +00:00
tags:
  - starhaven-io
  - GitHub Actions
draft: false
repo: https://github.com/starhaven-io/pinprick-action
marketplace: https://github.com/marketplace/actions/pinprick-action
version: v0.5.1
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  This GitHub Action automates the security audit of GitHub Actions supply chain using [pinprick](https://github.com/starhaven-io/pinprick). It checks for runtime fetch patterns bypassing pinning, verifies action references, and reports findings through SARIF. The action supports various runners and provides options to configure whether it emits SARIF, fails the workflow on findings, or prints results directly to the log.
---


Version updated for **https://github.com/starhaven-io/pinprick-action** to version **v0.5.1**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pinprick-action) to find the latest changes.

## Action Summary

This GitHub Action automates the security audit of GitHub Actions supply chain using [pinprick](https://github.com/starhaven-io/pinprick). It checks for runtime fetch patterns bypassing pinning, verifies action references, and reports findings through SARIF. The action supports various runners and provides options to configure whether it emits SARIF, fails the workflow on findings, or prints results directly to the log.

## What's Changed

Fences repository-controlled engine output from workflow-command parsing, delimits the path operand, and annotates binaries the runner cannot load.

Pins pinprick 0.22.0 as the default engine version.
