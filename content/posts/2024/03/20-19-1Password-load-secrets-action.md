---
title: Load secrets from 1Password
date: 2024-03-20 19:24:43 +00:00
tags:
  - 1Password
  - GitHub Actions
draft: false
repo: 1Password/load-secrets-action
marketplace: https://github.com/marketplace/actions/load-secrets-from-1password
version: v2.0.0
dependentsNumber: "335"
---


Version updated for **1Password/load-secrets-action** to version **v2.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **335** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/load-secrets-from-1password) to find the latest changes.

## Release notes

## Breaking changes
- Remove protocol prepending. Users are now required to include the protocol (`http://` or `https://`) when passing the Connect host URL. {#66}

## What's Changed
* Migrate action to TypeScript {#36}
* Upgrade action from Node 16 to Node 20. Credits to @parente for the contribution. {#36}

