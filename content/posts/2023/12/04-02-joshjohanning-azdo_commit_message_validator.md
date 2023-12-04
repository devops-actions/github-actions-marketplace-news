---
title: Azure DevOps Commit Validator and Pull Request Linker
date: 2023-12-04 02:46:29 +00:00
tags:
  - joshjohanning
  - GitHub Actions
draft: false
repo: joshjohanning/azdo_commit_message_validator
marketplace: https://github.com/marketplace/actions/azure-devops-commit-validator-and-pull-request-linker
version: v2.0.0
dependentsNumber: "3"
---


Version updated for **joshjohanning/azdo_commit_message_validator** to version **v2.0.0**.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/azure-devops-commit-validator-and-pull-request-linker) to find the latest changes.

## Release notes

## What's Changed

* Add support for linking work items in PR title/body by @joshjohanning in https://github.com/joshjohanning/azdo_commit_message_validator/pull/77

Breaking changes 🛠️:
  - Adding `check-commits` and `check-pull-request` inputs #77

Features added 🚀 : 
  - Add comment to PR if failing #63
  - Add check for node_modules for easier branch testing #69
  - Check for prerequisite software #70 
  - Update JSON5 dependency #71 
  - Improve commit message checking #72 
  - Support GitHub Enterprise Server #75 

**Full Changelog**: https://github.com/joshjohanning/azdo_commit_message_validator/compare/v1.0.2...v2.0.0
