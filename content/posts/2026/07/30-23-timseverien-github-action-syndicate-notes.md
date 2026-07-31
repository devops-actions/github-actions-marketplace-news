---
title: Syndicate notes
date: 2026-07-30 23:43:24 +00:00
tags:
  - timseverien
  - GitHub Actions
draft: false
repo: https://github.com/timseverien/github-action-syndicate-notes
marketplace: https://github.com/marketplace/actions/syndicate-notes
version: v1.0.5-8
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
actionSummary: |
  The Syndicate Notes GitHub Action automates the process of publishing notes to various services such as Discord and Mastodon. It supports syncing files and formatting messages before publishing. Integrations require specific keys, which are stored securely using GitHub secrets for privacy. The action helps streamline the deployment and sharing of content across different platforms.
---


Version updated for **https://github.com/timseverien/github-action-syndicate-notes** to version **v1.0.5-8**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/syndicate-notes) to find the latest changes.

## Action Summary

The Syndicate Notes GitHub Action automates the process of publishing notes to various services such as Discord and Mastodon. It supports syncing files and formatting messages before publishing. Integrations require specific keys, which are stored securely using GitHub secrets for privacy. The action helps streamline the deployment and sharing of content across different platforms.

## What's Changed

- fix: add message to cache (d04e822)
- feat: remove message (aa36f8b)
- fix: skip publishing message when its present in cache (9a6db64)
- fix: create the dir, not the file as a dir (6f5b684)
- fix: resolve path instead of computing relative path (57eef0d)
- feat: add fun message (6e6bc24)
- feat: ensure dir before persisting cache (958dda7)
- fix: make persistCache only write file instead of trying to parse its... response??? (353eb38)
- feat: persist cache on first run (e2fe65b)
- feat: add info log (a131361)
