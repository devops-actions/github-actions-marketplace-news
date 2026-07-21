---
title: Pi Code Assist
date: 2026-07-21 14:46:52 +00:00
tags:
  - zeldrisho
  - GitHub Actions
draft: false
repo: https://github.com/zeldrisho/pi-code-assist
marketplace: https://github.com/marketplace/actions/pi-code-assist
version: v1.0.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The GitHub Action installs the Pi coding agent, a small and composable tool that runs non-interactive prompts using pre-configured models and tools. It automates code reviews by providing actionable feedback on correctness, security, and test issues, while restricting permissions to read-only actions and untrusted project settings.
---


Version updated for **https://github.com/zeldrisho/pi-code-assist** to version **v1.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pi-code-assist) to find the latest changes.

## Action Summary

The GitHub Action installs the Pi coding agent, a small and composable tool that runs non-interactive prompts using pre-configured models and tools. It automates code reviews by providing actionable feedback on correctness, security, and test issues, while restricting permissions to read-only actions and untrusted project settings.

## What's Changed

## [1.0.0](https://github.com/zeldrisho/pi-code-assist/compare/v0.2.1...v1.0.0) (2026-07-21)


### ⚠ BREAKING CHANGES

* api-key, provider, and model must now be supplied explicitly.

### Features

* harden GitHub tools and validation ([c75d235](https://github.com/zeldrisho/pi-code-assist/commit/c75d235a5341fb2741c0944ac3730cadafa3295b))
* require explicit model configuration ([998a94f](https://github.com/zeldrisho/pi-code-assist/commit/998a94f174d79ca26d36d25a9ed0b937435d046e))


### Performance Improvements

* reduce validation runtime ([57bd837](https://github.com/zeldrisho/pi-code-assist/commit/57bd8375a6f83634c4109c115ce14d0a823c44d6))
