---
title: Set up MLIR toolchain
date: 2026-08-12 22:53:49 +00:00
tags:
  - munich-quantum-software
  - GitHub Actions
draft: false
repo: https://github.com/munich-quantum-software/setup-mlir
marketplace: https://github.com/marketplace/actions/set-up-mlir-toolchain
version: v1.4.2
dependentsNumber: "5"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the setup of MLIR and provides installation scripts for local use, allowing users to easily integrate MLIR into their workflows. The action includes options to specify LLVM versions or commit hashes and install debug builds on Windows. It also supports automated downloads and decompression using a platform-specific `zstd` binary, ensuring compatibility across different systems without requiring additional dependencies.
---


Version updated for **https://github.com/munich-quantum-software/setup-mlir** to version **v1.4.2**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/set-up-mlir-toolchain) to find the latest changes.

## Action Summary

This GitHub Action automates the setup of MLIR and provides installation scripts for local use, allowing users to easily integrate MLIR into their workflows. The action includes options to specify LLVM versions or commit hashes and install debug builds on Windows. It also supports automated downloads and decompression using a platform-specific `zstd` binary, ensuring compatibility across different systems without requiring additional dependencies.

## What's Changed

## 👀 What Changed

_Please refer to the [changelog](https://github.com/munich-quantum-software/setup-mlir/blob/main/CHANGELOG.md) for a structured overview of the changes._

## 🐛 Bug Fixes

- 🐛 Load the remote version manifest from `main` ([#230](https://github.com/munich-quantum-software/setup-mlir/pull/230)) (**@denialhaag**)

## 📄 Documentation

- 🔖 Prepare release of `v1.4.2` ([#231](https://github.com/munich-quantum-software/setup-mlir/pull/231)) (**@denialhaag**)
- 👷 Update known versions for 2026.08.11 ([#229](https://github.com/munich-quantum-software/setup-mlir/pull/229)) (**@[mqt-app[bot]](https://github.com/apps/mqt-app)**)
- 👷 Update known versions for 2026.07.13 ([#214](https://github.com/munich-quantum-software/setup-mlir/pull/214)) (**@[mqt-app[bot]](https://github.com/apps/mqt-app)**)

## 🤖 CI

- 👷 Update macOS runners ([#232](https://github.com/munich-quantum-software/setup-mlir/pull/232)) (**@denialhaag**)

## ⬆️ Dependencies

<details>
<summary>31 changes</summary>

- 🔧 Update pre-commit hooks ([#233](https://github.com/munich-quantum-software/setup-mlir/pull/233)) (**@denialhaag**)
- ⬆️🔒️ Lock file maintenance ([#228](https://github.com/munich-quantum-software/setup-mlir/pull/228)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️🪝 Update pre-commit hook python-jsonschema/check-jsonschema to v0.38.0 ([#227](https://github.com/munich-quantum-software/setup-mlir/pull/227)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️🪝 Update pre-commit hook adhtruong/mirrors-typos to v1.49.0 ([#226](https://github.com/munich-quantum-software/setup-mlir/pull/226)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️🔒️ Lock file maintenance ([#225](https://github.com/munich-quantum-software/setup-mlir/pull/225)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️📜 Update patch updates ([#222](https://github.com/munich-quantum-software/setup-mlir/pull/222)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️📜 Update dependency @types/semver to v7.8.0 ([#224](https://github.com/munich-quantum-software/setup-mlir/pull/224)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️📜 Update dependency @octokit/openapi-types to v28 ([#223](https://github.com/munich-quantum-software/setup-mlir/pull/223)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️👨‍💻 Update release-drafter/release-drafter action to v7.7.0 ([#221](https://github.com/munich-quantum-software/setup-mlir/pull/221)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️👨‍💻 Update github/codeql-action action to v4.37.4 ([#220](https://github.com/munich-quantum-software/setup-mlir/pull/220)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️📜 Update dependency typescript to v7 ([#212](https://github.com/munich-quantum-software/setup-mlir/pull/212)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️👨‍💻 Update patch updates ([#219](https://github.com/munich-quantum-software/setup-mlir/pull/219)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️👨‍💻 Update actions/setup-node action to v7 ([#217](https://github.com/munich-quantum-software/setup-mlir/pull/217)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️👨‍💻 Update release-drafter/release-drafter action to v7.6.0 ([#218](https://github.com/munich-quantum-software/setup-mlir/pull/218)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️👨‍💻 Update actions/setup-node action to v6.5.0 ([#216](https://github.com/munich-quantum-software/setup-mlir/pull/216)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️👨‍💻 Update github/codeql-action action to v4.37.1 ([#215](https://github.com/munich-quantum-software/setup-mlir/pull/215)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️🔒️ Lock file maintenance ([#213](https://github.com/munich-quantum-software/setup-mlir/pull/213)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️👨‍💻 Update github/codeql-action action to v4.37.0 ([#211](https://github.com/munich-quantum-software/setup-mlir/pull/211)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️📜 Update patch updates ([#210](https://github.com/munich-quantum-software/setup-mlir/pull/210)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️🔒️ Lock file maintenance ([#209](https://github.com/munich-quantum-software/setup-mlir/pull/209)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️🪝 Update pre-commit hook adhtruong/mirrors-typos to v1.48.0 ([#208](https://github.com/munich-quantum-software/setup-mlir/pull/208)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️📜 Update patch updates ([#207](https://github.com/munich-quantum-software/setup-mlir/pull/207)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️🪝 Update pre-commit hook rbubley/mirrors-prettier to v3.9.1 ([#206](https://github.com/munich-quantum-software/setup-mlir/pull/206)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️🪝 Update pre-commit hook rbubley/mirrors-prettier to v3.8.5 ([#205](https://github.com/munich-quantum-software/setup-mlir/pull/205)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️👨‍💻 Update release-drafter/release-drafter action to v7.5.1 ([#204](https://github.com/munich-quantum-software/setup-mlir/pull/204)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️🔒️ Lock file maintenance ([#203](https://github.com/munich-quantum-software/setup-mlir/pull/203)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️📜 Update patch updates to v7.8.5 ([#199](https://github.com/munich-quantum-software/setup-mlir/pull/199)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️👨‍💻 Update actions/checkout action to v7 ([#201](https://github.com/munich-quantum-software/setup-mlir/pull/201)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️👨‍💻 Update release-drafter/release-drafter action to v7.4.0 ([#200](https://github.com/munich-quantum-software/setup-mlir/pull/200)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️🔒️ Lock file maintenance ([#198](https://github.com/munich-quantum-software/setup-mlir/pull/198)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
- ⬆️📜 Update patch updates ([#197](https://github.com/munich-quantum-software/setup-mlir/pull/197)) (**@[renovate[bot]](https://github.com/apps/renovate)**)
</details>

**Full Changelog**: https://github.com/munich-quantum-software/setup-mlir/compare/v1.4.1...v1.4.2

