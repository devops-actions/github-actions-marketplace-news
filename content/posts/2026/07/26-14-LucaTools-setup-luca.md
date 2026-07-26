---
title: Setup Luca
date: 2026-07-26 14:47:53 +00:00
tags:
  - LucaTools
  - GitHub Actions
draft: false
repo: https://github.com/LucaTools/setup-luca
marketplace: https://github.com/marketplace/actions/setup-luca
version: v1.0.3
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **This GitHub Action automates the installation of Luca, a lightweight CLI tool manager, along with optional tools specified in a spec file. It supports installing Luca CLI only, specifying a specific version, or including tool installations from a Luacfile. Additionally, it handles GitHub Enterprise by allowing passing a Personal Access Token to authenticate against the github.com API when downloading the Luca CLI.**
---


Version updated for **https://github.com/LucaTools/setup-luca** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-luca) to find the latest changes.

## Action Summary

**This GitHub Action automates the installation of Luca, a lightweight CLI tool manager, along with optional tools specified in a spec file. It supports installing Luca CLI only, specifying a specific version, or including tool installations from a Luacfile. Additionally, it handles GitHub Enterprise by allowing passing a Personal Access Token to authenticate against the github.com API when downloading the Luca CLI.**

## What's Changed

## What's Changed
* Add `workflow_dispatch` to test workflow by @albertodebortoli in https://github.com/LucaTools/setup-luca/pull/6
* Run tests on both macOS and Linux by @albertodebortoli in https://github.com/LucaTools/setup-luca/pull/7
* Fix install dir and add ignoreUnsafeArchiveEntries for Tuist by @albertodebortoli in https://github.com/LucaTools/setup-luca/pull/8


**Full Changelog**: https://github.com/LucaTools/setup-luca/compare/v1...v1.0.3
