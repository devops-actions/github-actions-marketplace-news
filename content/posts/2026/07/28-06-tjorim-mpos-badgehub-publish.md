---
title: Publish to BadgeHub
date: 2026-07-28 06:26:43 +00:00
tags:
  - tjorim
  - GitHub Actions
draft: false
repo: https://github.com/tjorim/mpos-badgehub-publish
marketplace: https://github.com/marketplace/actions/publish-to-badgehub
version: v1.0.13
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of publishing a MicroPythonOS app to [BadgeHub.eu] using its draft-upload-then-publish API. It handles one-time setup by registering an app on BadgeHub, generating and adding an API token as a repository secret. The action uses `MANIFEST.JSON` to automatically read and set fields such as name, description, and entrypoint. Users can specify the project slug, API token, application directory, MPK path, categories, and other metadata. It also includes verification steps through badgehub-specific endpoints to ensure the content is live after publishing. The action handles stale file cleanup by deleting files no longer present in the local app folder before setting metadata.
---


Version updated for **https://github.com/tjorim/mpos-badgehub-publish** to version **v1.0.13**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/publish-to-badgehub) to find the latest changes.

## Action Summary

This GitHub Action automates the process of publishing a MicroPythonOS app to [BadgeHub.eu] using its draft-upload-then-publish API. It handles one-time setup by registering an app on BadgeHub, generating and adding an API token as a repository secret. The action uses `MANIFEST.JSON` to automatically read and set fields such as name, description, and entrypoint. Users can specify the project slug, API token, application directory, MPK path, categories, and other metadata. It also includes verification steps through badgehub-specific endpoints to ensure the content is live after publishing. The action handles stale file cleanup by deleting files no longer present in the local app folder before setting metadata.

## What's Changed

## What's Changed
* Fix BadgeHub publish after ping API change by @tjorim in https://github.com/tjorim/mpos-badgehub-publish/pull/9


**Full Changelog**: https://github.com/tjorim/mpos-badgehub-publish/compare/v1...v1.0.13
