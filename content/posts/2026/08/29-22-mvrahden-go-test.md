---
title: Go - Test Suites
date: 2026-08-29 22:04:02 +00:00
tags:
  - mvrahden
  - GitHub Actions
draft: false
repo: https://github.com/mvrahden/go-test
marketplace: https://github.com/marketplace/actions/go-test-suites
version: v1.28.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This action automates the creation and execution of test suites in Go, providing features such as isolation and parallelism, along with a specification-driven approach to testing through BDD vocabulary. It supports generating test outputs that are both readable and in sync with the underlying code.
---


Version updated for **https://github.com/mvrahden/go-test** to version **v1.28.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/go-test-suites) to find the latest changes.

## Action Summary

This action automates the creation and execution of test suites in Go, providing features such as isolation and parallelism, along with a specification-driven approach to testing through BDD vocabulary. It supports generating test outputs that are both readable and in sync with the underlying code.

## What's Changed

## What's Changed
* fix(docs): point the gopher image at its new site/static home by @mvrahden in https://github.com/mvrahden/go-test/commit/8a3845b9b313acaa66a0dc2257f6df496560b094
* chore: Go 1.25 is the supported floor, 1.27 the newest version tested by @mvrahden in https://github.com/mvrahden/go-test/commit/33d0762a5b3795df5073bd8cced931560af5d765
* feat(cli): every JSON surface emits one compact line, halving the payload by @mvrahden in https://github.com/mvrahden/go-test/commit/36150839f75acb910ab486590720ff90e7ef6e6d
* fix(vscode): discovery streams the CLI's output instead of losing it past 1 MiB by @mvrahden in https://github.com/mvrahden/go-test/commit/cc46b4940444744dc8261c12eeab400b938ea158
* Restore compatibility with Go 1.27 and test main after merge by @mvrahden in https://github.com/mvrahden/go-test/pull/113
* Update every dependency and raise the extension floor to VS Code 1.123 by @mvrahden in https://github.com/mvrahden/go-test/pull/121
* fix(ci): the publish jobs receive their tokens again, and refuse to run without them by @mvrahden in https://github.com/mvrahden/go-test/commit/9ccfa36d
* fix(ci): the tokens travel under names no environment secret can shadow, and the guards run from the workspace root by @mvrahden in https://github.com/mvrahden/go-test/commit/f4aa6289


**Full Changelog**: https://github.com/mvrahden/go-test/compare/v1.27.0...v1.28.0
