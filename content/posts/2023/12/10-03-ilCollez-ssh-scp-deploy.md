---
title: SSH-SCP Server Deploy
date: 2023-12-10 03:19:07 +00:00
tags:
  - ilCollez
  - GitHub Actions
draft: false
repo: ilCollez/ssh-scp-deploy
marketplace: https://github.com/marketplace/actions/ssh-scp-server-deploy
version: v1.3.0
dependentsNumber: "20"
---


Version updated for **ilCollez/ssh-scp-deploy** to version **v1.3.0**.
- This action is used across all versions by **20** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ssh-scp-server-deploy) to find the latest changes.

## Release notes

## Changelog v1.3.0
- Now you can upload dotfiles (#22)
- Added update checker
- Updated dependencies
- Started adding tests (WIP)
- Added the following options:
    - `silent`: Whether to log the script's output to stdout 
    - `local-path`: Local base path
    - `check-update`: Whether to check or not for updates at startup

## How to update
Simply update the version in your workflow file:
```diff
+ uses: ilCollez/ssh-scp-deploy@v1.3.0
- uses: ilCollez/ssh-scp-deploy@v1.2.0
```
