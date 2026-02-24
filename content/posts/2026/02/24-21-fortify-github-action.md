---
title: Fortify AST Scan
date: 2026-02-24 21:42:01 +00:00
tags:
  - fortify
  - GitHub Actions
draft: false
repo: https://github.com/fortify/github-action
marketplace: https://github.com/marketplace/actions/fortify-ast-scan
version: v3.0.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/fortify/github-action** to version **v3.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fortify-ast-scan) to find the latest changes.

## Action Summary

The Fortify GitHub Action integrates OpenText Fortify Application Security Testing (AST) into GitHub workflows, enabling automated security scans for Static Application Security Testing (SAST) and Software Composition Analysis (SCA) with support for other testing types potentially coming in the future. It simplifies the setup and execution of security testing by leveraging Fortify's fcli tool, allowing developers to detect vulnerabilities and secure their software supply chain directly within their CI/CD pipeline. This action also supports customized workflows for advanced use cases involving other Fortify tools.

## Release notes

## [3.0.0](https://github.com/fortify/github-action/compare/v2.2.0...v3.0.0) (2026-02-24)


### ⚠ BREAKING CHANGES

* `fortify/github-action/setup`: Now uses `@fortify/setup` NPM component instead of GitHub-specific implementation, resulting in changes to supported action inputs and environment variables
* `fortify/github-action`: Now uses `fcli action run ci` instead of GitHub-specific scripts, resulting in changes to supported action inputs and environment variables
* `fortify/github-action/*`: All sub-actions except for the `setup` action have been removed; use the top-level `fortify/github-action` to run a full AST scan pipeline, or use the `setup` action in combination with `fcli` commands or actions to implement custom workflows

### Features

* `fortify/github-action/*`: All sub-actions except for the `setup` action have been removed; use the top-level `fortify/github-action` to run a full AST scan pipeline, or use the `setup` action in combination with `fcli` commands or actions to implement custom workflows ([899cd9b](https://github.com/fortify/github-action/commit/899cd9b608be9c835b3943bc58ac92020608eae4))
* `fortify/github-action/setup`: Now uses `@fortify/setup` NPM component instead of GitHub-specific implementation, resulting in changes to supported action inputs and environment variables ([899cd9b](https://github.com/fortify/github-action/commit/899cd9b608be9c835b3943bc58ac92020608eae4))
* `fortify/github-action`: Now uses `fcli action run ci` instead of GitHub-specific scripts, resulting in changes to supported action inputs and environment variables ([899cd9b](https://github.com/fortify/github-action/commit/899cd9b608be9c835b3943bc58ac92020608eae4))
