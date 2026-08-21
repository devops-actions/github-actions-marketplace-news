---
title: Debian Multi-Architecture Package Builder
date: 2026-08-21 21:58:32 +00:00
tags:
  - ranjithrajv
  - GitHub Actions
draft: false
repo: https://github.com/ranjithrajv/debian-multiarch-builder
marketplace: https://github.com/marketplace/actions/debian-multi-architecture-package-builder
version: v.0.1a23
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action simplifies the process of building Debian packages across multiple architectures from upstream releases. It supports auto-discovery and interactive setup wizards, reducing manual configuration overhead. The action provides built-in Lintian integration for quality assurance and secure checksum verification for all downloads. With 12+ pre-built templates for popular projects, it offers quick and reliable package builds for various programming languages and environments.
---


Version updated for **https://github.com/ranjithrajv/debian-multiarch-builder** to version **v.0.1a23**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/debian-multi-architecture-package-builder) to find the latest changes.

## Action Summary

This GitHub Action simplifies the process of building Debian packages across multiple architectures from upstream releases. It supports auto-discovery and interactive setup wizards, reducing manual configuration overhead. The action provides built-in Lintian integration for quality assurance and secure checksum verification for all downloads. With 12+ pre-built templates for popular projects, it offers quick and reliable package builds for various programming languages and environments.

## What's Changed

### Added
- **Automatic suite retirement**: the builder now skips producing .deb
  packages for any distribution whose `lts_support_ends` (system.yaml) has
  passed, even if a package.yaml explicitly lists it. A missing/null date
  (forky, sid) always passes through unaffected.

### Fixed
- **Default `debian_distributions` parsing dropped literal "-" tokens into
  the build list** — yq's block-list rendering of the fallback array
  wasn't stripped by the old `tr -d '[],"'`, so every package.yaml that
  doesn't set `debian_distributions` itself (24 of 25 repos in the fleet)
  has been building with a bogus "-" pseudo-distribution mixed in. Fixed
  by querying the array's elements directly instead of the array itself.
