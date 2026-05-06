---
title: Refinery Builder
date: 2026-05-06 15:04:43 +00:00
tags:
  - SirCesarium
  - GitHub Actions
draft: false
repo: https://github.com/SirCesarium/refinery
marketplace: https://github.com/marketplace/actions/refinery-builder
version: v2.0.6
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/SirCesarium/refinery** to version **v2.0.6**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/refinery-builder) to find the latest changes.

## Action Summary

Refinery is a build orchestrator and CI/CD pipeline generator that simplifies artifact lifecycle management, including validation, cross-compilation, multi-format packaging, and automated workflow generation. It abstracts complex build and deployment processes by integrating with multiple ecosystems (e.g., Rust, Go, GitHub Actions) and enabling developers to define their build and distribution requirements without needing to write custom scripts. Key features include fail-fast validation, cross-platform compatibility (e.g., Linux, Windows, WebAssembly), and automated generation of CI workflows to optimize build and deployment pipelines.

## What's Changed

- fix: resolve refinery_version flexibly and fix musl/aarch64 cross-compilation (0f3acb5)
- fix: update ARM linker installation command to create symlink for aarch64-gcc (059ff13)
- refactor: simplify version resolution logic and improve API calls for fetching tags and releases (b4dbd71)
- feat: implement version resolution for Refinery in build artifact step (9a40689)
- fix: update musl-tools installation command to create symlink for musl-gcc (ed5b8ee)
- fix: filter package formats by target OS to avoid errors in CI matrix (f5e32b1)
- fix: map GitHub Actions runner arch (X64/ARM64) to Refinery binary arch (amd64/arm64) (702ad8a)
- fix: use refinery_version from config instead of github.ref_name in CI workflow (3ab4b30)
- docs: rename files to UpperCamelCase for wiki (9f27a98)
- docs: replace Go Reference badge with Wiki badge (2892013)
