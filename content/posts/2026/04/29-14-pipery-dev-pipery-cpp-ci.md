---
title: Pipery C/C++ CI
date: 2026-04-29 14:41:01 +00:00
tags:
  - pipery-dev
  - GitHub Actions
draft: false
repo: https://github.com/pipery-dev/pipery-cpp-ci
marketplace: https://github.com/marketplace/actions/pipery-c-c-ci
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pipery-dev/pipery-cpp-ci** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipery-c-c-ci) to find the latest changes.

## Action Summary

The **Pipery C/C++ CI** GitHub Action provides a comprehensive continuous integration pipeline for C and C++ projects, with built-in support for auto-detecting popular build systems like CMake, Make, and Meson. It automates key development tasks such as static analysis (SAST/SCA), linting, building, testing, versioning, packaging, releasing, and reintegrating changes, while offering structured logging for enhanced pipeline observability through the Pipery platform. This action simplifies and streamlines the CI process for C/C++ developers, reducing manual effort and improving code quality and release management.

## What's Changed

## v1.0.0

Complete C/C++ CI pipeline: SAST, SCA (cppcheck), clang-tidy lint, build (CMake/Make/Meson auto-detect), ctest, version, tarball package, GitHub Release + SHA tag, reintegrate.

Every step runs under **psh** (Pipery Shell) for automatic structured JSONL logging.

### Usage

```yaml
uses: pipery-dev/pipery-cpp-ci@v1
```

See the [README](https://github.com/pipery-dev/pipery-cpp-ci#readme) for the full inputs reference.
