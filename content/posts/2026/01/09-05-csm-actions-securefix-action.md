---
title: Fix Code securely
date: 2026-01-09 05:47:53 +00:00
tags:
  - csm-actions
  - GitHub Actions
draft: false
repo: https://github.com/csm-actions/securefix-action
marketplace: https://github.com/marketplace/actions/fix-code-securely
version: v0.5.0
dependentsNumber: "2"
---


Version updated for **https://github.com/csm-actions/securefix-action** to version **v0.5.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fix-code-securely) to find the latest changes.

## Action Summary

Securefix Action is a GitHub Action designed to securely automate code fixes within CI workflows without exposing sensitive credentials like GitHub App private keys or relying on external services. It enhances workflow security by adopting a unique server/client architecture entirely within GitHub Actions, eliminating the need for hosting external servers. This tool boosts developer productivity by streamlining secure, automated code changes.

## Release notes

[Issues](https://github.com/csm-actions/securefix-action/issues?q=is%3Aissue+is%3Aclosed+milestone%3Av0.5.0) | [Pull Requests](https://github.com/csm-actions/securefix-action/pulls?q=is%3Apr+is%3Aclosed+milestone%3Av0.5.0) | https://github.com/csm-actions/securefix-action/compare/v0.4.3...v0.5.0 | [Base revision](https://github.com/csm-actions/securefix-action/tree/336c15e94a1d65d5a7e05b9986e08f80f868c4b6)

https://github.com/csm-actions/securefix-action.ts/pull/8

## ⚠️ Breaking Changes

Since `files` is not joined with `root_dir`, `root_dir` must point to the Git root directory.  
Otherwise, the `files` option will not work correctly.

## Features

Because `files` is passed as arguments to `git ls-files`, you can now specify directories and glob patterns.

## Bug Fxies

Fix a bug that it fails to create pull requests to other repositories.
