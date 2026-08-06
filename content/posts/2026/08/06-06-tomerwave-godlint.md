---
title: Run Godlint
date: 2026-08-06 06:17:37 +00:00
tags:
  - tomerwave
  - GitHub Actions
draft: false
repo: https://github.com/tomerwave/godlint
marketplace: https://github.com/marketplace/actions/run-godlint
version: v0.7.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates the enforcement of coding standards and best practices using the Godlint tool. It helps prevent architectural drift, ensures consistency across languages, and enforces deterministic policies by running checks locally and in CI. The action supports various programming languages like Rust, TypeScript, JavaScript, and Python, providing a unified set of rules for architecture, security boundaries, and engineering standards.
---


Version updated for **https://github.com/tomerwave/godlint** to version **v0.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-godlint) to find the latest changes.

## Action Summary

This GitHub Action automates the enforcement of coding standards and best practices using the Godlint tool. It helps prevent architectural drift, ensures consistency across languages, and enforces deterministic policies by running checks locally and in CI. The action supports various programming languages like Rust, TypeScript, JavaScript, and Python, providing a unified set of rules for architecture, security boundaries, and engineering standards.

## What's Changed

### Added

- `git/branch-naming` checks pull-request branches through `GITHUB_HEAD_REF` and local checked-out
  branches through Git. It replaces Godlint's bespoke branch-name script and separate pull-request job,
  runs in `recommended@1`, and allows repositories to replace the accepted types or admit automation
  branch patterns.

