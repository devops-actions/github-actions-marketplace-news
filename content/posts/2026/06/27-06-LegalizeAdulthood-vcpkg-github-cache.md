---
title: vcpkg GitHub Packages cache
date: 2026-06-27 06:34:42 +00:00
tags:
  - LegalizeAdulthood
  - GitHub Actions
draft: false
repo: https://github.com/LegalizeAdulthood/vcpkg-github-cache
marketplace: https://github.com/marketplace/actions/vcpkg-github-packages-cache
version: v1.4.0
dependentsNumber: "4"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/LegalizeAdulthood/vcpkg-github-cache** to version **v1.4.0**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vcpkg-github-packages-cache) to find the latest changes.

## What's Changed

# Version 1.4

## Changes Since Version 1.3.0

* Added `target-os: netbsd` support for emitted VM setup scripts.
* Added NetBSD setup handling for bootstrap prerequisites, libcurl compatibility, Mono certificates, cached `vcpkg` tool packages, older vcpkg checkout toolchain fallback, and temporary vcpkg-tool source patches.
* Fixed cached NetBSD tool restores so they skip bootstrap patching correctly.
* Improved cache analysis for duplicate package pushes by treating "already present" as a successful cold-cache seed case.
* Added an in-repo CMake/vcpkg integration fixture using `fmt`.
* Added full integration coverage across Ubuntu, Windows, FreeBSD, OpenBSD, and NetBSD.
* Added vcpkg tag resolution plus integration testing across recent vcpkg release tags.
* Added manual full-matrix and scheduled rotating integration workflows.
* Added warm-cache integration checks and assertions for cache status, BSD tool cache behavior, and missing system dependency reports.
* Added canary repository documentation and workflow template.
* Added release qualification documentation.
* Fixed the fixture for newer `fmt` by including `fmt/format.h`.
* ## What's Changed
* Add vcpkg version integration coverage and canary release checks by @LegalizeAdulthood in https://github.com/LegalizeAdulthood/vcpkg-github-cache/pull/6

## New Contributors
* @LegalizeAdulthood made their first contribution in https://github.com/LegalizeAdulthood/vcpkg-github-cache/pull/6

**Full Changelog**: https://github.com/LegalizeAdulthood/vcpkg-github-cache/compare/v1.3.0...v1.4.0
