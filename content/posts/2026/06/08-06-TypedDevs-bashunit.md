---
title: Install bashunit
date: 2026-06-08 06:53:26 +00:00
tags:
  - TypedDevs
  - GitHub Actions
draft: false
repo: https://github.com/TypedDevs/bashunit
marketplace: https://github.com/marketplace/actions/install-bashunit
version: 0.38.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/TypedDevs/bashunit** to version **0.38.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-bashunit) to find the latest changes.

## What's Changed

## ✨ Improvements
- Official `TypedDevs/bashunit` GitHub Action: composite install action, pinnable by commit SHA for immutable installs (`version`, `directory`, `add-to-path`, `verify-checksum` inputs; `path`, `version` outputs) (#695)
- `install.sh` sha256 checksum verification via `BASHUNIT_VERIFY_CHECKSUM=true`, validating the download against the release `checksum` asset (#695)

## 🐛 Bug Fixes
- `install.sh` fails loudly (non-zero exit, no stub binary) on a failed download and retries transient failures, instead of silently reporting success (#695)
- `install.sh` creates nested target directories (`mkdir -p`) (#695)


## 👥 Contributors
- @Chemaclass

## Checksum
SHA256: `b1364d4874e61bc8cee4d9dea15844badebdbcc855d4d5b5439c9f4ae8b2204c`

**Full Changelog:** [0.37.0...0.38.0](https://github.com/TypedDevs/bashunit/compare/0.37.0...0.38.0)

