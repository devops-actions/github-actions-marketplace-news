---
title: FreeBSD Cross Compiler
date: 2026-07-28 22:56:26 +00:00
tags:
  - lggcs
  - GitHub Actions
draft: false
repo: https://github.com/lggcs/freebsd-cross-compiler-action
marketplace: https://github.com/marketplace/actions/freebsd-cross-compiler
version: v1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the cross-compilation of C/C++/CMake projects to FreeBSD 15.1 (amd64) natively on Ubuntu, using LLVM/Clang's native cross-compilation with a prebuilt FreeBSD sysroot. It avoids the need for VMs or QEMU, making setup quick and efficient. The action provides options to customize the build process, generate SBOMs, and package binaries into `.pkg` files.
---


Version updated for **https://github.com/lggcs/freebsd-cross-compiler-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/freebsd-cross-compiler) to find the latest changes.

## Action Summary

This GitHub Action automates the cross-compilation of C/C++/CMake projects to FreeBSD 15.1 (amd64) natively on Ubuntu, using LLVM/Clang's native cross-compilation with a prebuilt FreeBSD sysroot. It avoids the need for VMs or QEMU, making setup quick and efficient. The action provides options to customize the build process, generate SBOMs, and package binaries into `.pkg` files.

## What's Changed

Cross-compile C/C++/CMake projects to **FreeBSD 15.1 (amd64)** directly on `ubuntu-latest` — no Docker, no VM, no QEMU. Uses LLVM/Clang native cross-compilation with a prebuilt FreeBSD sysroot.
