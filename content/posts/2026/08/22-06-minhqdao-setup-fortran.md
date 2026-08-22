---
title: Setup Fortran Compilers
date: 2026-08-22 06:20:05 +00:00
tags:
  - minhqdao
  - GitHub Actions
draft: false
repo: https://github.com/minhqdao/setup-fortran
marketplace: https://github.com/marketplace/actions/setup-fortran-compilers
version: v1.10.0
dependentsNumber: "4"
actionType: Node
nodeVersion: 24
actionSummary: |
  The `setup-fortran` GitHub Action automates the setup of Fortran compiler toolchains across Linux, macOS, and Windows platforms. It supports various compilers including GNU, Intel, LLVM, NVIDIA, AMD, Arm, and LFortran, allowing users to easily integrate Fortran development into their workflows using GitHub Actions. The action provides options to specify the compiler version, installation environment (Windows), disk cleanup, and environment variable export settings.
---


Version updated for **https://github.com/minhqdao/setup-fortran** to version **v1.10.0**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-fortran-compilers) to find the latest changes.

## Action Summary

The `setup-fortran` GitHub Action automates the setup of Fortran compiler toolchains across Linux, macOS, and Windows platforms. It supports various compilers including GNU, Intel, LLVM, NVIDIA, AMD, Arm, and LFortran, allowing users to easily integrate Fortran development into their workflows using GitHub Actions. The action provides options to specify the compiler version, installation environment (Windows), disk cleanup, and environment variable export settings.

## What's Changed

**Compatibility Release to Supersede [fortran-lang/setup-fortran](https://github.com/fortran-lang/setup-fortran)**

- [x] Add compiler aliases (`gcc` --> `gfortran`, `intel` --> `ifx`, `intel-classic` --> `ifort`, `nvidia-hpc` --> `nvfortran`) with deprecation warning, tests and documentation.
- [x] Implement `update-environment` with documentation and tests.
- [x] Maintain backwards-compatibility for specified versions except those that are intentionally broken.
- [x] Normalize `aocc` versions (`5.1.0` --> `5.1`).
- [x] Add tests and fixes for companions compilers.
- [x] Add weekly canary (scheduled run because tests can break without code change due to runner updates).
- [x] Test consecutive invocations.
- [x] Add additional output verification tests.
- [x] Add test for C compilation and linking.
- [x] Add tests for additional Windows shells.
- [x] Revert symlinks on macOS during `gfortran` installation.
- [x] Add additional timeouts and retries.
- [x] Create symlinks where missing.
- [x] Guard unintended version coercion in `yaml` files (`2026.0` --> `2026`).
