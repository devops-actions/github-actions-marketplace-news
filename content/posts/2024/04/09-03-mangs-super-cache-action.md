---
title: mangs/super-cache-action
date: 2024-04-09 03:31:11 +00:00
tags:
  - mangs
  - GitHub Actions
draft: false
repo: mangs/super-cache-action
marketplace: https://github.com/marketplace/actions/mangs-super-cache-action
version: v3.3.0
dependentsNumber: "6"
---


Version updated for **mangs/super-cache-action** to version **v3.3.0**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mangs-super-cache-action) to find the latest changes.

## Release notes

- Update major tag version on publish automatically with upgrade to `mangs/simple-release-notes-action@v3`
- Update GitHub action workflow target Node.js version from `18.16.0` to `20.11.1`
- Update action versions in GitHub actions workflows
  - `actions/checkout`: `v3` -> `v4`
  - `actions/setup-node`: `v3` -> `v4`
  - `mangs/simple-release-notes-action`: `v2` -> `v3`
- Rename `package.json` script `validate:formatting` to `check:formatting`
- Remove dependency `@vscode/ripgrep` due to unreliable installs; use local Ripgrep version instead
- Add pull request template file
- Update dependencies to latest
