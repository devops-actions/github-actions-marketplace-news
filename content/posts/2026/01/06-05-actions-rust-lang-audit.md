---
title: cargo audit your Rust Dependencies
date: 2026-01-06 05:35:21 +00:00
tags:
  - actions-rust-lang
  - GitHub Actions
draft: false
repo: https://github.com/actions-rust-lang/audit
marketplace: https://github.com/marketplace/actions/cargo-audit-your-rust-dependencies
version: v1.2.7
dependentsNumber: "381"
---


Version updated for **https://github.com/actions-rust-lang/audit** to version **v1.2.7**.
- This action is used across all versions by **381** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargo-audit-your-rust-dependencies) to find the latest changes.

## Action Summary

This GitHub Action automates the auditing of Rust project dependencies for vulnerabilities using `cargo audit` and the RustSec Advisory Database. It identifies security issues, generates a vulnerability summary, and optionally creates GitHub issues for each detected problem. The action streamlines dependency management and enhances security by integrating automated vulnerability assessments directly into your CI/CD workflows.

## Release notes

Explicitly select stable as the rust version. This should take precedence over any rust-toolchain or directory overwrites.
Fixes #134

**Full Changelog**: https://github.com/actions-rust-lang/audit/compare/v1.2.6...v1.2.7
