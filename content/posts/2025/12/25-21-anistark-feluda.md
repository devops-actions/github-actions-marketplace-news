---
title: Feluda License Scanner
date: 2025-12-25 21:13:34 +00:00
tags:
  - anistark
  - GitHub Actions
draft: false
repo: https://github.com/anistark/feluda
marketplace: https://github.com/marketplace/actions/feluda-license-scanner
version: v1.11.0
dependentsNumber: "0"
---


Version updated for **https://github.com/anistark/feluda** to version **v1.11.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/feluda-license-scanner) to find the latest changes.

## Action Summary

Feluda is a Rust-based command-line tool designed to analyze project dependencies, identify their licenses, and check for compatibility with the project's license. It automates tasks such as flagging restrictive or incompatible licenses, generating compliance files (e.g., NOTICE and THIRD_PARTY_LICENSES), and creating Software Bill of Materials (SBOM) in SPDX format for legal and security purposes. The tool supports multiple programming languages and integrates with CI/CD pipelines to streamline license and dependency management.

## Release notes

## What's Changed
* refactor: analyze only root project directory and clean up progress module by @anistark in https://github.com/anistark/feluda/pull/176
* feat: GitHub license cache by @anistark in https://github.com/anistark/feluda/pull/178
* chore: cleanup readme, contributing, justfile by @anistark in https://github.com/anistark/feluda/pull/179
* feat: add local license checking for Go and Python by @anistark in https://github.com/anistark/feluda/pull/180
* fix: add missing env var cleanup to prevent test isolation issues in parallel execution by @anistark in https://github.com/anistark/feluda/pull/182
* feat: add .NET support with NuGet integration by @anistark in https://github.com/anistark/feluda/pull/183
* feat: add --github-token flag for authenticated GitHub API requests by @anistark in https://github.com/anistark/feluda/pull/184


**Full Changelog**: https://github.com/anistark/feluda/compare/v1.10.3...v1.11.0
