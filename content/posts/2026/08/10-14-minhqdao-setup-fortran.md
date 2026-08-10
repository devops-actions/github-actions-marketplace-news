---
title: Setup Fortran Compilers
date: 2026-08-10 14:35:07 +00:00
tags:
  - minhqdao
  - GitHub Actions
draft: false
repo: https://github.com/minhqdao/setup-fortran
marketplace: https://github.com/marketplace/actions/setup-fortran-compilers
version: v1.9.1
dependentsNumber: "4"
actionType: Node
nodeVersion: 24
actionSummary: |
  The GitHub Action `setup-fortran` automates the setup and testing of Fortran projects across various compilers, versions, architectures, and operating systems. It provides reproducible toolchains for GNU, Intel, LLVM, NVIDIA, AMD, Arm, and LFortran on Linux, macOS, and Windows. The action supports multiple compilers with specific versions and can manage disk space by removing pre-installed toolkits during `nvfortran` setup.
---


Version updated for **https://github.com/minhqdao/setup-fortran** to version **v1.9.1**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-fortran-compilers) to find the latest changes.

## Action Summary

The GitHub Action `setup-fortran` automates the setup and testing of Fortran projects across various compilers, versions, architectures, and operating systems. It provides reproducible toolchains for GNU, Intel, LLVM, NVIDIA, AMD, Arm, and LFortran on Linux, macOS, and Windows. The action supports multiple compilers with specific versions and can manage disk space by removing pre-installed toolkits during `nvfortran` setup.

## What's Changed

- Persist Windows MSVC toolchain path.
