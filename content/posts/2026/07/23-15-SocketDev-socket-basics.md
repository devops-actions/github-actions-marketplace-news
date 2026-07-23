---
title: Socket Basics Security Scanner
date: 2026-07-23 15:05:42 +00:00
tags:
  - SocketDev
  - GitHub Actions
draft: false
repo: https://github.com/SocketDev/socket-basics
marketplace: https://github.com/marketplace/actions/socket-basics-security-scanner
version: v2.1.0
dependentsNumber: "8"
actionType: Docker
actionSummary: |
  Socket Basics automates comprehensive security scanning using SAST, secrets detection, container scanning, and more. It normalizes outputs into Socket's standardized format and delivers consolidated results through notification channels. Users can configure policies in the Socket Dashboard, eliminating the need for GitHub Actions workflow changes. The action supports zero configuration, unified scanning across various technologies, PR comments, centralized management, and a comprehensive guide on installation methods.
---


Version updated for **https://github.com/SocketDev/socket-basics** to version **v2.1.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **8** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/socket-basics-security-scanner) to find the latest changes.

## Action Summary

Socket Basics automates comprehensive security scanning using SAST, secrets detection, container scanning, and more. It normalizes outputs into Socket's standardized format and delivers consolidated results through notification channels. Users can configure policies in the Socket Dashboard, eliminating the need for GitHub Actions workflow changes. The action supports zero configuration, unified scanning across various technologies, PR comments, centralized management, and a comprehensive guide on installation methods.

## What's Changed

<!-- Release notes generated using configuration in .github/release.yml at main -->

## What's Changed
### 🚀 New Features
* feat: add diff-only scan scoping by @lelia in https://github.com/SocketDev/socket-basics/pull/77
### 📦 Dependencies
* chore(deps): bundle Dependabot updates + harden dependency review workflows by @lelia in https://github.com/SocketDev/socket-basics/pull/78
### 📚 Documentation
* chore(license): add nonempty license (LICENSE.md) by @ammkrn in https://github.com/SocketDev/socket-basics/pull/79
### 🔧 Other Changes
* fix: warn users when `socket_org` is missing by @dc-larsen in https://github.com/SocketDev/socket-basics/pull/23
* feat: add local ignore overrides for rule IDs + filepaths by @lelia in https://github.com/SocketDev/socket-basics/pull/59
* fix: honor action 'ignore' when generating notifications by @dc-larsen in https://github.com/SocketDev/socket-basics/pull/83
* fix: improve custom SAST rule activation, filtering semantics + config observability by @lelia in https://github.com/SocketDev/socket-basics/pull/61
* docs: document required API token scopes for Socket Basics by @dc-larsen in https://github.com/SocketDev/socket-basics/pull/68
* feat: add log statement indicating config source by @dc-larsen in https://github.com/SocketDev/socket-basics/pull/18
* fix: restore standard `LICENSE` filename (revert `.md` rename from #79) by @lelia in https://github.com/SocketDev/socket-basics/pull/88

## New Contributors
* @ammkrn made their first contribution in https://github.com/SocketDev/socket-basics/pull/79

**Full Changelog**: https://github.com/SocketDev/socket-basics/compare/v2.0.3...v2.1.0
