---
title: IfChange (slnc)
date: 2026-03-21 21:21:16 +00:00
tags:
  - slnc
  - GitHub Actions
draft: false
repo: https://github.com/slnc/ifchange
marketplace: https://github.com/marketplace/actions/ifchange-slnc
version: v0.3.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/slnc/ifchange** to version **v0.3.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ifchange-slnc) to find the latest changes.

## Action Summary

The `ifchange` GitHub Action is a linting tool designed to enforce the consistency of cross-file dependencies in codebases. By marking related code sections with specific comments (`LINT.IfChange` / `LINT.ThenChange`), it ensures that when one section of code changes, all referenced sections are updated accordingly, preventing overlooked changes and configuration mismatches. It supports 50+ programming languages, automates dependency validation in CI pipelines, and enhances code reliability by catching potential errors in pull requests or commits.

## Release notes

## [0.3.0](https://github.com/slnc/ifchange/compare/v0.2.1...v0.3.0) (2026-03-21)


### Features

* add go.mod support ([#30](https://github.com/slnc/ifchange/issues/30)) ([8bcb8bf](https://github.com/slnc/ifchange/commit/8bcb8bf3e37be058dd861551a745712db3fc8c04))
* support multi-line ThenChange ([#31](https://github.com/slnc/ifchange/issues/31)) ([af149f5](https://github.com/slnc/ifchange/commit/af149f581ecce4cdf63263fe871789890cd3039e))
* validate ThenChange targets and support directory targets ([#32](https://github.com/slnc/ifchange/issues/32)) ([685addd](https://github.com/slnc/ifchange/commit/685adddea6dfb57cf6abbc1bf75a6fddd247aedb))


### Bug Fixes

* platform-specific npm packages for binary distribution ([#33](https://github.com/slnc/ifchange/issues/33)) ([aac4af8](https://github.com/slnc/ifchange/commit/aac4af8efd377e72c638d98773a542b3299acc8a))
* scan validates pairing, labels, and orphans ([#36](https://github.com/slnc/ifchange/issues/36)) ([c28d832](https://github.com/slnc/ifchange/commit/c28d832556c19ff8d2ec3ef2da396210096b8e4c))
