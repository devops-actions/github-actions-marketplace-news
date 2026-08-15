---
title: action-debian-build
date: 2026-08-15 21:37:12 +00:00
tags:
  - pkghaus
  - GitHub Actions
draft: false
repo: https://github.com/pkghaus/action-debian-build
marketplace: https://github.com/marketplace/actions/action-debian-build
version: v1.0.0
dependentsNumber: "6"
actionSummary: |
  This GitHub Action automates the process of building Debian packages from a specified upstream git tag and configuration in the `debian/` directory. It leverages a reusable workflow to build across multiple Debian suites and architectures, ensuring comprehensive testing and validation of the package. The action helps packaging repositories maintain consistency and reliability by automating the entire packaging pipeline, reducing human error and speeding up the release process.
---


Version updated for **https://github.com/pkghaus/action-debian-build** to version **v1.0.0**.

- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/action-debian-build) to find the latest changes.

## Action Summary

This GitHub Action automates the process of building Debian packages from a specified upstream git tag and configuration in the `debian/` directory. It leverages a reusable workflow to build across multiple Debian suites and architectures, ensuring comprehensive testing and validation of the package. The action helps packaging repositories maintain consistency and reliability by automating the entire packaging pipeline, reducing human error and speeding up the release process.

## What's Changed

Build a Debian package from an upstream git tag and your own debian/ directory.

## What ships

- Per-suite builder images: `ghcr.io/pkghaus/deb-builder:{trixie,testing,unstable}`, amd64 + arm64, with SLSA provenance and SBOM attestations
- A reusable validation workflow: call `pkghaus/action-debian-build/.github/workflows/build.yml@v1` and every tag push builds all suites and architectures
- Suite-qualified versions from one changelog: `X~haus13+1` on stable, `X~testing1` on testing, plain `X` on unstable, ordered so OS upgrades move packages forward instead of fighting them
- Artifacts land in `debs/` under canonical Debian filenames
- Optional archive dispatch: set `APT_DISPATCH_TOKEN` and a validated tag notifies your APT archive to ingest immediately

## Usage

```yaml
jobs:
  build:
    uses: pkghaus/action-debian-build/.github/workflows/build.yml@v1
    secrets: inherit
```

The packaging repository needs `package.conf` (`UPSTREAM` + `VERSION`) next to its `debian/` directory. Full documentation in the README.

