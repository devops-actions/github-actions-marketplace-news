---
title: xfg - Repo as Code
date: 2026-02-26 13:29:37 +00:00
tags:
  - anthony-spruyt
  - GitHub Actions
draft: false
repo: https://github.com/anthony-spruyt/xfg
marketplace: https://github.com/marketplace/actions/xfg-repo-as-code
version: v3.10.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/anthony-spruyt/xfg** to version **v3.10.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/xfg-repo-as-code) to find the latest changes.

## Action Summary

The `xfg` GitHub Action and CLI tool enables organizations to manage repository files, settings, and rules across platforms like GitHub, GitLab, and Azure DevOps declaratively using a single YAML configuration file. It automates tasks such as syncing configuration files, applying repository settings, enforcing security rules, and managing repositories (e.g., creating, forking, or migrating). By standardizing configurations and automating updates via pull requests, it simplifies repository governance and ensures consistency across projects.

## Release notes

## What's Changed
* fix(types): restrict inherit to per-repo settings only by @anthony-spruyt in https://github.com/anthony-spruyt/xfg/pull/532
* feat: add labels support to prOptions for PR creation by @anthony-spruyt in https://github.com/anthony-spruyt/xfg/pull/534
* chore(deps): update dependency @types/node to v24.10.14 by @renovate[bot] in https://github.com/anthony-spruyt/xfg/pull/535
* fix(config): validate prOptions.labels entries are non-empty strings by @anthony-spruyt in https://github.com/anthony-spruyt/xfg/pull/536
* test: add integration tests for prOptions.labels by @anthony-spruyt in https://github.com/anthony-spruyt/xfg/pull/537
* fix(test): use correct branch names in PR labels integration tests by @anthony-spruyt in https://github.com/anthony-spruyt/xfg/pull/538
* fix: revert v3.10.0 release and fix deleteReadme 404 flake by @anthony-spruyt in https://github.com/anthony-spruyt/xfg/pull/540


**Full Changelog**: https://github.com/anthony-spruyt/xfg/compare/v3.9.14...v3.10.0
