---
title: Setup Fortran Compilers
date: 2026-05-06 15:05:25 +00:00
tags:
  - minhqdao
  - GitHub Actions
draft: false
repo: https://github.com/minhqdao/setup-fortran
marketplace: https://github.com/marketplace/actions/setup-fortran-compilers
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/minhqdao/setup-fortran** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-fortran-compilers) to find the latest changes.

## Action Summary

The `setup-fortran` GitHub Action automates the installation and configuration of Fortran compilers across Linux, macOS, and Windows environments. It simplifies the process of setting up various Fortran compilers, including `gfortran`, `ifx`, `ifort`, and others, ensuring compatibility with different runner platforms and versions. This action is particularly useful for automating build and testing workflows in projects that rely on Fortran.

## What's Changed

## Initial Release

- GitHub Action to set up Fortran compilers and toolchains.
- Complete rewrite in TypeScript.
- Supports `gfortran`, `ifx`, `ifort`, `nvfortran`, `aocc`, `lfortran`, `flang`.
- Running on ubuntu-x64, ubuntu-arm, macos-arm, macos-intel, windows-x64, windows-arm, msys2-ucrt64, msys2-clang64.
- Tested with Fortran code: Module linking, polymorphism, `iso_fortran_env`, `iso_c_binding`, cpp, OpenMP.
- Add:

```
 - uses: minhqdao/setup-fortran@v1
```
