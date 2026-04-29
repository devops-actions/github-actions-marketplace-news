---
title: Firebase App Distribution (Linux, Windows, macOS)
date: 2026-04-29 22:04:46 +00:00
tags:
  - emertozd
  - GitHub Actions
draft: false
repo: https://github.com/emertozd/Firebase-Distribution-Github-Action
marketplace: https://github.com/marketplace/actions/firebase-app-distribution-linux-windows-macos
version: v6
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/emertozd/Firebase-Distribution-Github-Action** to version **v6**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/firebase-app-distribution-linux-windows-macos) to find the latest changes.

## Action Summary

The **Firebase App Distribution GitHub Action** automates the process of uploading build artifacts (e.g., `.apk`, `.aab`, or `.ipa` files) to Firebase App Distribution, streamlining the release workflow for mobile applications. It simplifies the distribution of apps to testers or groups by handling artifact uploads, configuring release notes, and generating shareable download links. This action supports Linux, Windows, and macOS environments, making it versatile for various CI/CD setups.

## What's Changed

- add option for skip installing node & firebase (2f4365b)
- update readme (dd5a6cd)
- remove deprecated token & updates (189a944)
- Merge branch 'update' (63c9cb5)
- update versions (1785003)
- add outputs (c1a8b19)
- Don't use token in tests (bd49498)
- Dockerfile: Update base image to node:20-alpine for firebase-tools 14.0.0 compatibility (ee55c44)
- Update firebase cli version (4caa11b)
- Change docker actions to composite actions (524d309)
