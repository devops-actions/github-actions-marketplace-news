---
title: foundry-toolchain
date: 2026-01-22 21:44:54 +00:00
tags:
  - foundry-rs
  - GitHub Actions
draft: false
repo: https://github.com/foundry-rs/foundry-toolchain
marketplace: https://github.com/marketplace/actions/foundry-toolchain
version: v1.7.0
dependentsNumber: "0"
---


Version updated for **https://github.com/foundry-rs/foundry-toolchain** to version **v1.7.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/foundry-toolchain) to find the latest changes.

## Action Summary

The `foundry-toolchain` GitHub Action automates the installation of Foundry, a modular toolkit for Ethereum application development. It streamlines tasks such as building, formatting, and testing smart contracts while providing built-in caching to improve efficiency and reduce RPC provider rate limits. This action simplifies CI/CD workflows for Ethereum developers by enabling seamless integration of Foundry tools into GitHub Actions.

## Release notes

## Features

* refactor: rewrite in TypeScript by @DaniPopes in https://github.com/foundry-rs/foundry-toolchain/pull/106
* feat: use foundryup by @DaniPopes in https://github.com/foundry-rs/foundry-toolchain/pull/102
* feat: print --version for all tools at end of action by @DaniPopes in https://github.com/foundry-rs/foundry-toolchain/pull/103
* feat: cache all of .foundry/cache instead of just /rpc by @DaniPopes in https://github.com/foundry-rs/foundry-toolchain/pull/107

## Fixes

* fix: allow v-prefix and no prefix for specific versions by @DaniPopes in https://github.com/foundry-rs/foundry-toolchain/pull/104
* fix: remove windows --force hack by @DaniPopes in https://github.com/foundry-rs/foundry-toolchain/pull/108

## Other

* chore: enable windows CI w/ tempo network by @zerosnacks in https://github.com/foundry-rs/foundry-toolchain/pull/99
* chore(deps): bump actions/upload-artifact from 5 to 6 by @dependabot[bot] in https://github.com/foundry-rs/foundry-toolchain/pull/100
* chore(meta): add AGENTS.md by @DaniPopes in https://github.com/foundry-rs/foundry-toolchain/pull/101
* chore(deps): bump to node v24.13.0 and update dependencies by @zerosnacks in https://github.com/foundry-rs/foundry-toolchain/pull/109

**Full Changelog**: https://github.com/foundry-rs/foundry-toolchain/compare/v1...v1.7.0
