---
title: C++23 Documentation Generator
date: 2026-04-12 21:59:22 +00:00
tags:
  - Zheng-Bote
  - GitHub Actions
draft: false
repo: https://github.com/Zheng-Bote/cxx_docu_gen
marketplace: https://github.com/marketplace/actions/c-23-documentation-generator
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Zheng-Bote/cxx_docu_gen** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/c-23-documentation-generator) to find the latest changes.

## Action Summary

The `cxx_docu_gen` GitHub Action automates the generation of structured Markdown documentation from Doxygen-style comments and SPDX file headers present in C++23 source and header files. It simplifies the process of documenting code by recursively scanning specified directories, extracting metadata using a regex-based parser, and creating organized, GitHub-flavored Markdown files. This action is particularly useful for maintaining up-to-date and consistent documentation for C++ projects.

## What's Changed

## [1.2.0] - 2026-04-08

### Added

- Fully static linking for GCC/Clang via `-static`.
- Support for `--sources <path>` and `--includes <path>` command-line parameters.
- GitHub Action integration (`action.yml`).

### Changed

- Updated `main.cpp` version to 0.1.4.


### 📦 Software Bill of Materials (SBOM)
This release includes:
- SPDX SBOM: `spdx-1.2.0.spdx`
- CycloneDX SBOM: `cyclonedx-1.2.0.json`

### 🔒 Security Scan
CVE vulnerability reports are attached to this release.

