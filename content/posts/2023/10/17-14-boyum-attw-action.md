---
title: Are The Types Wrong checker
date: 2023-10-17 14:55:58 +00:00
tags:
  - boyum
  - GitHub Actions
draft: false
repo: boyum/attw-action
marketplace: https://github.com/marketplace/actions/are-the-types-wrong-checker
version: v1.1
dependentsNumber: "1"
---


Version updated for **boyum/attw-action** to version **v1.1**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/are-the-types-wrong-checker) to find the latest changes.

## Release notes

## Features
The action now no longer fails if the checked module is ESM. Instead, added `block-esm` flag which will fail the action if `package.json` contains `"type": "module"`.

## Dependencies
* build(deps): bump actions/checkout from 3 to 4 by @dependabot in https://github.com/boyum/attw-action/pull/1

## New Contributors
* @dependabot made their first contribution in https://github.com/boyum/attw-action/pull/1

**Full Changelog**: https://github.com/boyum/attw-action/compare/v1...v1.1
