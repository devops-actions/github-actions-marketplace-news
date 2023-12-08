---
title: Validate Renovate Configuration with renovate-config-validator
date: 2023-12-08 11:14:56 +00:00
tags:
  - suzuki-shunsuke
  - GitHub Actions
draft: false
repo: suzuki-shunsuke/github-action-renovate-config-validator
marketplace: https://github.com/marketplace/actions/validate-renovate-configuration-with-renovate-config-validator
version: v1.0.0
dependentsNumber: "376"
---


Version updated for **suzuki-shunsuke/github-action-renovate-config-validator** to version **v1.0.0**.
- This action is used across all versions by **376** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/validate-renovate-configuration-with-renovate-config-validator) to find the latest changes.

## Release notes

## ⚠️ Breaking Changes

#531 [renovate-config-validator's --strict option](https://docs.renovatebot.com/config-validation/#strict-mode) is enabled by default.

### How to migrate

There are several options.

1. Recommended: Fix Renovate configuration according to the error message
2. Unrecommended: Set `false` to the input `strict` to disable `--strict` option

## ⚠️ Security Improvement

#530 Pass inputs via environment variables to prevent malicious injection

## Features

#531 Add the input `strict`.

You can enable [renovate-config-validator's `--strict` option](https://docs.renovatebot.com/config-validation/#strict-mode).
