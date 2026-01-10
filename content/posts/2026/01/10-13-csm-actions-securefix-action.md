---
title: Fix Code securely
date: 2026-01-10 13:12:17 +00:00
tags:
  - csm-actions
  - GitHub Actions
draft: false
repo: https://github.com/csm-actions/securefix-action
marketplace: https://github.com/marketplace/actions/fix-code-securely
version: v0.5.2
dependentsNumber: "2"
---


Version updated for **https://github.com/csm-actions/securefix-action** to version **v0.5.2**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fix-code-securely) to find the latest changes.

## Action Summary

Securefix Action is a GitHub Action designed to securely automate code fixes during CI workflows without sharing sensitive credentials like GitHub App private keys or relying on external services. By leveraging a unique server/client architecture built within GitHub Actions, it enhances workflow security while simplifying implementation. This action addresses security concerns and improves developer productivity by enabling safe and efficient code fixes directly within the CI pipeline.

## Release notes

[Issues](https://github.com/csm-actions/securefix-action/issues?q=is%3Aissue+is%3Aclosed+milestone%3Av0.5.2) | [Pull Requests](https://github.com/csm-actions/securefix-action/pulls?q=is%3Apr+is%3Aclosed+milestone%3Av0.5.2) | https://github.com/csm-actions/securefix-action/compare/v0.5.1...v0.5.2 | [Base revision](https://github.com/csm-actions/securefix-action/tree/a151e1ec76517244b721c7a293ad7a2d60d9c82a)

## Features

#435 Make the input `action` optional if `server_repository` is set

This change is helpful to upgrade Securefix Action v0.3.x to v0.5.2 or later as you don't need to add the input `action` in client side.
