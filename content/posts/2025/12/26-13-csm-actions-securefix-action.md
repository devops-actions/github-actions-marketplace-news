---
title: Fix Code securely
date: 2025-12-26 13:14:25 +00:00
tags:
  - csm-actions
  - GitHub Actions
draft: false
repo: https://github.com/csm-actions/securefix-action
marketplace: https://github.com/marketplace/actions/fix-code-securely
version: v0.4.2
dependentsNumber: "2"
---


Version updated for **https://github.com/csm-actions/securefix-action** to version **v0.4.2**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fix-code-securely) to find the latest changes.

## Action Summary

Securefix Action is a GitHub Action that automates secure code fixes directly within CI workflows, eliminating the need to share sensitive credentials like GitHub App private keys or rely on external services. It enhances workflow security by implementing a server/client architecture using GitHub Actions, enabling secure code updates without exposing repositories to unnecessary risks. This action simplifies the process of maintaining secure and efficient development pipelines.

## Release notes

[Issues](https://github.com/csm-actions/securefix-action/issues?q=is%3Aissue+is%3Aclosed+milestone%3Av0.4.2) | [Pull Requests](https://github.com/csm-actions/securefix-action/pulls?q=is%3Apr+is%3Aclosed+milestone%3Av0.4.2) | https://github.com/csm-actions/securefix-action/compare/v0.4.1...v0.4.2 | [Base revision](https://github.com/csm-actions/securefix-action/tree/2068eead12ffe48e494d5a0e4352577b01e72b88)

## Features

Make config fields optional with default branch fallback #407

- Make `client.branches` optional (defaults to client repo's default branch via GitHub API)
- Make `push.repositories` optional (defaults to client repository only)
- Make `pull_request.base_branches` optional (defaults to push repo's default branch via GitHub API)

## Others

Refactor: use securefix-action JSR #360
