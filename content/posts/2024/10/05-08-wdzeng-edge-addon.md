---
title: Publish Edge Add-on
date: 2024-10-05 08:59:55 +00:00
tags:
  - wdzeng
  - GitHub Actions
draft: false
repo: wdzeng/edge-addon
marketplace: https://github.com/marketplace/actions/publish-edge-add-on
version: v2.0.0
dependentsNumber: "58"
---


Version updated for **wdzeng/edge-addon** to version **v2.0.0**.
- This action is used across all versions by **58** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/publish-edge-add-on) to find the latest changes.

## Release notes

Add support for Microsoft Edge Add-ons API v1.1.

## Breaking Changes
- Add new input: `api_key` and remove deprecated inputs: `client_secret` and `access_token_url`.
- Input `zip_path` now supports a glob pattern. Thanks to @XFox111.
