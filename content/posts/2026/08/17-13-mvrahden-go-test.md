---
title: Go - Test Suites
date: 2026-08-17 13:57:06 +00:00
tags:
  - mvrahden
  - GitHub Actions
draft: false
repo: https://github.com/mvrahden/go-test
marketplace: https://github.com/marketplace/actions/go-test-suites
version: v1.27.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action, `gotest`, automates the creation and execution of specification-driven Go test suites with isolation and parallelism as first-class citizens. It generates the lifecycle wiring, `t.Run` nesting, and process isolation necessary to run standard `go test` output in a more readable behavioral format. The tool is designed to simplify test organization and reduce discipline problems associated with maintaining clean and organized test files.
---


Version updated for **https://github.com/mvrahden/go-test** to version **v1.27.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/go-test-suites) to find the latest changes.

## Action Summary

This GitHub Action, `gotest`, automates the creation and execution of specification-driven Go test suites with isolation and parallelism as first-class citizens. It generates the lifecycle wiring, `t.Run` nesting, and process isolation necessary to run standard `go test` output in a more readable behavioral format. The tool is designed to simplify test organization and reduce discipline problems associated with maintaining clean and organized test files.

## What's Changed

## What's Changed
* fix uncompilable Equal/NotEqual autofix on mixed operand types by @mvrahden in https://github.com/mvrahden/go-test/pull/104
* Reliable test runs on busy machines by @mvrahden in https://github.com/mvrahden/go-test/pull/105
* keep syncing the spec view when the run had failures by @mvrahden in https://github.com/mvrahden/go-test/pull/108
* Test the CLI and the extension against each other, not in isolation by @mvrahden in https://github.com/mvrahden/go-test/pull/109
* Show what tests promise, before you run them by @mvrahden in https://github.com/mvrahden/go-test/pull/110
* Behavior descriptions render as defined by @mvrahden in https://github.com/mvrahden/go-test/pull/111
* Report the time each test actually took by @mvrahden in https://github.com/mvrahden/go-test/pull/112


**Full Changelog**: https://github.com/mvrahden/go-test/compare/v1.26.0...v1.27.0
