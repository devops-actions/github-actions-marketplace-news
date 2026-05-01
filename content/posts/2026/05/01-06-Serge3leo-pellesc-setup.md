---
title: pellesc-setup
date: 2026-05-01 06:16:00 +00:00
tags:
  - Serge3leo
  - GitHub Actions
draft: false
repo: https://github.com/Serge3leo/pellesc-setup
marketplace: https://github.com/marketplace/actions/pellesc-setup
version: v1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Serge3leo/pellesc-setup** to version **v1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pellesc-setup) to find the latest changes.

## Action Summary

This GitHub Action, **pellesc-setup**, automates the installation and configuration of the Pelles C compiler, including setting up paths and environment variables for use with CMake. It streamlines the process of integrating Pelles C with CMake, addressing compatibility challenges and providing workarounds for environment-specific limitations (e.g., handling paths with spaces). The action also supports caching for faster builds and offers flexibility in configuring compiler detection and support module installation.

## What's Changed

* PellesC 14.10;
* Sync with CMake merge request (seems stable);
* CMake Pelles assembler id now `ASM_POASM`;
* Use `polib.exe` as `CMAKE_AR`.
