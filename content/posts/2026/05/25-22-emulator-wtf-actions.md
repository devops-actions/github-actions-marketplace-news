---
title: emulator.wtf
date: 2026-05-25 22:12:15 +00:00
tags:
  - emulator-wtf
  - GitHub Actions
draft: false
repo: https://github.com/emulator-wtf/actions
marketplace: https://github.com/marketplace/actions/emulator-wtf
version: v1.0.1
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/emulator-wtf/actions** to version **v1.0.1**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/emulator-wtf) to find the latest changes.

## Action Summary

The `emulator.wtf` GitHub Actions provide tools for automating Android app testing and emulator management in CI/CD workflows. These actions enable developers to run Android instrumentation tests using cloud-based emulators, start and manage multiple emulators with ADB connections, and simplify authentication via GitHub OIDC tokens. This streamlines testing processes, reduces setup complexity, and accelerates feedback cycles for pull requests.

## What's Changed

- Fixed: slow or stalled file uploads would not time out correctly, causing test runs to hang.
- Fixed: corner-case connectivity issue where `ew-cli` could stall for minutes before running any tests.
- Maintenance: bumped default `ew-cli` version to `1.3.2`.

**Full Changelog**: https://github.com/emulator-wtf/actions/compare/v1.0.0...v1.0.1
