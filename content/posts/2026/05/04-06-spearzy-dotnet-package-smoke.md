---
title: .NET Package Smoke Tests
date: 2026-05-04 06:26:53 +00:00
tags:
  - spearzy
  - GitHub Actions
draft: false
repo: https://github.com/spearzy/dotnet-package-smoke
marketplace: https://github.com/marketplace/actions/net-package-smoke-tests
version: v1.0.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/spearzy/dotnet-package-smoke** to version **v1.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/net-package-smoke-tests) to find the latest changes.

## Action Summary

The `dotnet-package-smoke` GitHub Action enables .NET package authors to validate their NuGet packages by simulating real-world consumption scenarios. It automates the process of packing projects into a local NuGet feed, generating temporary consumer projects to verify package installation, restoration, and build compatibility, and optionally running deeper API validation through smoke test projects. This helps identify issues such as missing dependencies, restore failures, and packaging errors before releasing packages.

## What's Changed

## [1.0.0] - 2026-05-03

### Added
- Pack one or more .NET package projects.
- Discover produced `.nupkg` files and extract package ID/version metadata.
- Copy produced packages into a local NuGet feed.
- Create generated consumer projects and install produced packages from the local feed.
- Restore and build generated consumers.
- Run optional user-provided smoke projects against the local feed.
- Support `pack-arguments`, including quoted values.
- Support `retain-on-failure` for failed generated consumer and smoke project workspaces.
- Write GitHub Actions outputs for package, generated consumer, and smoke project counts.
- Write a GitHub job summary with result overview, package details, check details, paths, retained workspaces, and failure output.
- Add workflow examples and release-readiness documentation.
