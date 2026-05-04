---
title: .NET Package Smoke Tests
date: 2026-05-04 22:20:45 +00:00
tags:
  - spearzy
  - GitHub Actions
draft: false
repo: https://github.com/spearzy/dotnet-package-smoke
marketplace: https://github.com/marketplace/actions/net-package-smoke-tests
version: v1.2.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/spearzy/dotnet-package-smoke** to version **v1.2.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/net-package-smoke-tests) to find the latest changes.

## Action Summary

The `dotnet-package-smoke` GitHub Action helps .NET package authors validate their NuGet packages by simulating real-world consumer usage. It automates the creation of a local NuGet feed, packaging projects, and testing the packages for installation, restoration, and compatibility with generated or predefined consumer projects. This action ensures packages are free from common consumption issues like restore failures, missing dependencies, or improper layouts before release.

## What's Changed

## [1.2.0] - 2026-05-04

### Added
- Add `smoke-restore-arguments` for passing extra arguments to `dotnet restore` for smoke projects.
- Add `smoke-test-arguments` for passing extra arguments to `dotnet test` for smoke projects.

### Changed
- Remove the planned generic `smoke-arguments` wording in favour of explicit restore and test argument inputs.

### Fixed
- None.
