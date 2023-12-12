---
title: Setup Spack
date: 2023-12-12 03:23:18 +00:00
tags:
  - spack
  - GitHub Actions
draft: false
repo: spack/setup-spack
marketplace: https://github.com/marketplace/actions/setup-spack
version: v2.1.1
dependentsNumber: "27"
---


Version updated for **spack/setup-spack** to version **v2.1.1**.
- This action is used across all versions by **27** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-spack) to find the latest changes.

## Release notes

- For Spack `v0.22.0.dev0` and higher `spack install` without further flags can
  install prebuilt binaries from the build cache without erroring about missing
  signatures on the binaries. The default build cache is marked as "unsigned".
- Disable `/etc/spack` and `~/.spack` config files, only use `$spack/etc`

