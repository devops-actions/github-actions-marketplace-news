---
title: Set up MLIR toolchain
date: 2025-12-24 05:30:19 +00:00
tags:
  - munich-quantum-software
  - GitHub Actions
draft: false
repo: https://github.com/munich-quantum-software/setup-mlir
marketplace: https://github.com/marketplace/actions/set-up-mlir-toolchain
version: v1.0.1
dependentsNumber: "3"
---


Version updated for **https://github.com/munich-quantum-software/setup-mlir** to version **v1.0.1**.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/set-up-mlir-toolchain) to find the latest changes.

## Action Summary

The `setup-mlir` GitHub Action simplifies the setup of MLIR (Multi-Level Intermediate Representation) by automatically extracting pre-built binaries, adding them to the system's `$PATH`, and configuring environment variables like `$LLVM_DIR` and `$MLIR_DIR`. It streamlines the process of integrating MLIR into CI workflows or local environments, eliminating the need for manual installation and configuration. This action is ideal for developers utilizing MLIR who need a quick and reliable setup.

## Release notes

## 👀 What Changed

_Please refer to the [changelog](https://github.com/munich-quantum-software/setup-mlir/blob/main/CHANGELOG.md) for a structured overview of the changes._

## 🚀 Features and Enhancements

- Remove jq dependency from Unix installer script and improve error handling ([#47](https://github.com/munich-quantum-software/setup-mlir/pull/47)) ([**@[copilot-swe-agent[bot]](https://github.com/apps/copilot-swe-agent)**](https://github.com/[copilot-swe-agent[bot]](https://github.com/apps/copilot-swe-agent)))
- Use tar native zstd support when available ([#49](https://github.com/munich-quantum-software/setup-mlir/pull/49)) ([**@[copilot-swe-agent[bot]](https://github.com/apps/copilot-swe-agent)**](https://github.com/[copilot-swe-agent[bot]](https://github.com/apps/copilot-swe-agent)))
- 🎨 Create installation directory if it does not exist ([#46](https://github.com/munich-quantum-software/setup-mlir/pull/46)) ([**@denialhaag**](https://github.com/denialhaag))

## 📄 Documentation

- 🔖 Prepare 1.0.1 release ([#52](https://github.com/munich-quantum-software/setup-mlir/pull/52)) ([**@burgholzer**](https://github.com/burgholzer))

## 🤖 CI

- Add comprehensive test suite for installer scripts and action ([#51](https://github.com/munich-quantum-software/setup-mlir/pull/51)) ([**@[copilot-swe-agent[bot]](https://github.com/apps/copilot-swe-agent)**](https://github.com/[copilot-swe-agent[bot]](https://github.com/apps/copilot-swe-agent)))

**Full Changelog**: https://github.com/munich-quantum-software/setup-mlir/compare/v1.0.0...v1.0.1

