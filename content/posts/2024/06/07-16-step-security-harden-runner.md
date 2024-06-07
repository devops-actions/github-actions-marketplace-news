---
title: Harden-Runner
date: 2024-06-07 16:46:12 +00:00
tags:
  - step-security
  - GitHub Actions
draft: false
repo: step-security/harden-runner
marketplace: https://github.com/marketplace/actions/harden-runner
version: v2.8.1
dependentsNumber: "3,425"
---


Version updated for **step-security/harden-runner** to version **v2.8.1**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **3,425** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/harden-runner) to find the latest changes.

## Release notes

## What's Changed
* Bug fix: Update isGitHubHosted implementation by @varunsh-coder in https://github.com/step-security/harden-runner/pull/425
The previous implementation incorrectly identified large GitHub-hosted runners as self-hosted runners. As a result, harden-runner was not executing on these large GitHub-hosted runners.

**Full Changelog**: https://github.com/step-security/harden-runner/compare/v2...v2.8.1
