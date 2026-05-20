---
title: Preview Links on PRs for iOS apps
date: 2026-05-20 07:01:56 +00:00
tags:
  - limrun-inc
  - GitHub Actions
draft: false
repo: https://github.com/limrun-inc/ios-preview-action
marketplace: https://github.com/marketplace/actions/preview-links-on-prs-for-ios-apps
version: v0.2.1
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/limrun-inc/ios-preview-action** to version **v0.2.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/preview-links-on-prs-for-ios-apps) to find the latest changes.

## Action Summary

This GitHub Action automates the process of building iOS apps in a temporary cloud-based Xcode environment and generates live preview links for testing the app in an iOS Simulator streamed directly to a browser. It eliminates the need for a local Mac setup, making it easier for developers and reviewers to preview and test iOS apps within pull requests. Key capabilities include support for iPhone and iPad simulator models, posting preview links to PRs, and enabling collaborative testing workflows.

## What's Changed

## What's Changed
This release adds support for selecting the iOS simulator model used by preview links.

You can now request an iPad simulator for PR previews:

```yaml
with:
  project-path: .
  model: ipad
  api-key: ${{ secrets.LIM_API_KEY }}
```

The default remains `iphone`, so existing workflows continue working without changes.

Supported values:
- `iphone`
- `ipad`
**Full Changelog**: https://github.com/limrun-inc/ios-preview-action/compare/v0.2.0...v0.2.1
