---
title: Refinery-Build
date: 2026-05-21 14:52:22 +00:00
tags:
  - MechanicalLabs
  - GitHub Actions
draft: false
repo: https://github.com/MechanicalLabs/refinery
marketplace: https://github.com/marketplace/actions/refinery-build
version: v0.1.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/MechanicalLabs/refinery** to version **v0.1.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/refinery-build) to find the latest changes.

## Action Summary

Refinery is a high-performance build orchestrator designed for CI/CD workflows, allowing developers to define cross-platform build logic in a single TOML blueprint. It automates the generation of platform-specific workflows, simplifies dependency management, and eliminates redundant YAML configurations for multi-platform builds. With features like native-first toolchains, type-safe validation, and reproducible builds, Refinery streamlines complex CI tasks, making them faster, more reliable, and easier to scale.

## What's Changed

- feat: bump version to 0.1.3 (1af7b46)
- feat(build): add support for pre-build, post-build, and publish steps in refinery config (0a10c8d)
- fix: update action versions to use stable releases and enhance Rust setup step (613391d)
- fix: improve error handling for file not found and manifest loading (9536f8e)
- fix: prevent unnecessary dependencies during linker dependency installation (0fac2f8)
- fix: update musl-tools installation to avoid unnecessary dependencies (b57c119)
- chore: update deps (df428c9)
- build(tags): simplify tag update workflow (4b7e701)
- feat(ci): add workflow write permissions (d59f6e7)
- ci: add automatic floating tags update workflow (ede97e3)
