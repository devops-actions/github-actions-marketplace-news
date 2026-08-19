---
title: pinprick-action
date: 2026-08-19 06:21:10 +00:00
tags:
  - starhaven-io
  - GitHub Actions
draft: false
repo: https://github.com/starhaven-io/pinprick-action
marketplace: https://github.com/marketplace/actions/pinprick-action
version: v0.5.3
dependentsNumber: "7"
actionType: Composite
actionSummary: |
  This GitHub Action automates security audits of GitHub Actions supply chain integrity using the pinprick tool, which checks for runtime fetch patterns bypassing pinning and verifies action references. It supports different runners and can be configured to either upload results to GitHub code scanning or print them to the workflow log. The action is designed to be used with or without GitHub Advanced Security, depending on requirements for security alerts and reporting.
---


Version updated for **https://github.com/starhaven-io/pinprick-action** to version **v0.5.3**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pinprick-action) to find the latest changes.

## Action Summary

This GitHub Action automates security audits of GitHub Actions supply chain integrity using the pinprick tool, which checks for runtime fetch patterns bypassing pinning and verifies action references. It supports different runners and can be configured to either upload results to GitHub code scanning or print them to the workflow log. The action is designed to be used with or without GitHub Advanced Security, depending on requirements for security alerts and reporting.

## What's Changed

Pins pinprick 0.23.1 as the default engine version.
