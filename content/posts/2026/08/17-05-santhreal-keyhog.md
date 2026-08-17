---
title: KeyHog Secret Scanner
date: 2026-08-17 05:54:13 +00:00
tags:
  - santhreal
  - GitHub Actions
draft: false
repo: https://github.com/santhreal/keyhog
marketplace: https://github.com/marketplace/actions/keyhog-secret-scanner
version: v0.5.78
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  KeyHog is an open-source secret scanner in Rust that finds and verifies leaked API keys, tokens, passwords, and credentials across various sources such as source code, Git history, containers, cloud storage, browser assets, collaboration content, and running systems. It combines 926 service-specific detectors, decode-through for concealed credentials, context-aware evidence and suppression, live provider verification, and first-class CUDA, Metal, and WGPU execution through Vyre.
---


Version updated for **https://github.com/santhreal/keyhog** to version **v0.5.78**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/keyhog-secret-scanner) to find the latest changes.

## Action Summary

KeyHog is an open-source secret scanner in Rust that finds and verifies leaked API keys, tokens, passwords, and credentials across various sources such as source code, Git history, containers, cloud storage, browser assets, collaboration content, and running systems. It combines 926 service-specific detectors, decode-through for concealed credentials, context-aware evidence and suppression, live provider verification, and first-class CUDA, Metal, and WGPU execution through Vyre.

## What's Changed

### Changed

- fix(scanner): gate expand_triggered_patterns independently of decode feature.

