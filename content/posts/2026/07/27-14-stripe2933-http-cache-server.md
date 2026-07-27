---
title: http-cache-server
date: 2026-07-27 14:54:16 +00:00
tags:
  - stripe2933
  - GitHub Actions
draft: false
repo: https://github.com/stripe2933/http-cache-server
marketplace: https://github.com/marketplace/actions/http-cache-server
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action runs a local HTTP server that uses the `actions/cache` for storing and restoring cached files by key. It skips checking if a cache exists when the file already exists in `cacheDir`, which can lead to unexpected behavior when deleting the cache externally while the server is running. The action supports requests using `http://localhost:<port>/<key>` style paths, with methods like GET, HEAD, and PUT for retrieving, checking for existence, and saving cached files, respectively. It also invalidates cache keys that are not valid according to `actions/cache` guidelines.
---


Version updated for **https://github.com/stripe2933/http-cache-server** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/http-cache-server) to find the latest changes.

## Action Summary

This GitHub Action runs a local HTTP server that uses the `actions/cache` for storing and restoring cached files by key. It skips checking if a cache exists when the file already exists in `cacheDir`, which can lead to unexpected behavior when deleting the cache externally while the server is running. The action supports requests using `http://localhost:<port>/<key>` style paths, with methods like GET, HEAD, and PUT for retrieving, checking for existence, and saving cached files, respectively. It also invalidates cache keys that are not valid according to `actions/cache` guidelines.

## What's Changed

🎉 First release!
