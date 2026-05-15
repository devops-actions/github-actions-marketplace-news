---
title: Setup Fortran Compilers
date: 2026-05-15 14:59:07 +00:00
tags:
  - minhqdao
  - GitHub Actions
draft: false
repo: https://github.com/minhqdao/setup-fortran
marketplace: https://github.com/marketplace/actions/setup-fortran-compilers
version: v1.3.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/minhqdao/setup-fortran** to version **v1.3.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-fortran-compilers) to find the latest changes.

## Action Summary

The `setup-fortran` GitHub Action automates the installation and configuration of Fortran compilers on Linux, macOS, and Windows runners. It simplifies the process of setting up various Fortran compilers—such as `gfortran`, `ifx`, `ifort`, and others—by managing compatibility, versioning, and system-specific configurations. This action is ideal for automating build and testing workflows in projects that require Fortran compilers across multiple operating systems.

## What's Changed

- [x] Add compatibility with `VS2016` on Windows runners.
- [x] Free space on runner before installing `nvfortran`.
- [x] Increase general robustness.
