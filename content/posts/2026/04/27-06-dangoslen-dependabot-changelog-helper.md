---
title: Dependabot Changelog Helper
date: 2026-04-27 06:37:45 +00:00
tags:
  - dangoslen
  - GitHub Actions
draft: false
repo: https://github.com/dangoslen/dependabot-changelog-helper
marketplace: https://github.com/marketplace/actions/dependabot-changelog-helper
version: v4.3.0
dependentsNumber: "230"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/dangoslen/dependabot-changelog-helper** to version **v4.3.0**.

- This action is used across all versions by **230** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dependabot-changelog-helper) to find the latest changes.

## Action Summary

The **Dependabot Changelog Helper** GitHub Action automates the process of updating changelogs for dependency upgrade pull requests created by tools like Dependabot and Renovate. It parses pull requests to identify upgraded dependencies and adds appropriately formatted entries to the changelog, following the KeepAChangelog format. This action eliminates the manual effort of maintaining changelogs for dependency updates, supports multi-package updates, and includes links to related pull requests, enhancing efficiency and consistency in dependency management workflows.

## What's Changed

### Changed

- Now runs on Node 24
  - Creates `.nvmrc` to set the version
  - Updates node version in `action.yml`

### Dependencies

- Bump `stefanzweifel/git-auto-commit-action` from 6 to 7 ([#421](https://github.com/dangoslen/dependabot-changelog-helper/pull/421))
