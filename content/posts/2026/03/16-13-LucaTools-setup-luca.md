---
title: Setup Luca
date: 2026-03-16 13:45:37 +00:00
tags:
  - LucaTools
  - GitHub Actions
draft: false
repo: https://github.com/LucaTools/setup-luca
marketplace: https://github.com/marketplace/actions/setup-luca
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/LucaTools/setup-luca** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-luca) to find the latest changes.

## Action Summary

The `setup-luca` GitHub Action automates the installation of Luca, a lightweight CLI tool manager, and optionally installs tools defined in a specification file. It simplifies workflows by ensuring the Luca CLI and specified tools are readily available in the environment, eliminating manual setup steps. This action is particularly useful for managing dependencies and streamlining tool access in CI/CD pipelines.

## Release notes

## What's Changed
* Rename .luca/active to .luca/tools by @albertodebortoli in https://github.com/LucaTools/setup-luca/pull/1
* Add CI job to verify tool installation and symlink correctness by @albertodebortoli in https://github.com/LucaTools/setup-luca/pull/2
* Pass GITHUB_TOKEN to install script to avoid GitHub API rate limiting by @albertodebortoli in https://github.com/LucaTools/setup-luca/pull/3
* Use `$GITHUB_WORKSPACE` instead of `$PWD` by @albertodebortoli in https://github.com/LucaTools/setup-luca/pull/4

## New Contributors
* @albertodebortoli made their first contribution in https://github.com/LucaTools/setup-luca/pull/1

**Full Changelog**: https://github.com/LucaTools/setup-luca/compare/v1...v1.0.1
