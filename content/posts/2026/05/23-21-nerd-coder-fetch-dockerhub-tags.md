---
title: Fetch Docker Hub Tags
date: 2026-05-23 21:40:49 +00:00
tags:
  - nerd-coder
  - GitHub Actions
draft: false
repo: https://github.com/nerd-coder/fetch-dockerhub-tags
marketplace: https://github.com/marketplace/actions/fetch-docker-hub-tags
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/nerd-coder/fetch-dockerhub-tags** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fetch-docker-hub-tags) to find the latest changes.

## Action Summary

The `fetch-dockerhub-tags` GitHub Action retrieves tags and metadata for a specified Docker Hub image repository, enabling users to identify the latest or matching image tag based on optional filters. It automates the process of keeping custom Docker builds up-to-date with frequently updated base images. Key capabilities include fetching tag details (e.g., size, architecture, last updated timestamp, and digest) and supporting RegEx-based filtering to refine results.

## What's Changed

- feat: add matched groups to tag results and output (2c48a27)
- feat: enhance Docker Hub tag selection with warning logging (d068051)
- refactor: modularize code into lib, enhance logging, and improve input handling (e421363)
- feat: initialize project (88e0fd4)
