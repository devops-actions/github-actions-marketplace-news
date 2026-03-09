---
title: ccache action
date: 2026-03-09 21:49:46 +00:00
tags:
  - jianmingyong
  - GitHub Actions
draft: false
repo: https://github.com/jianmingyong/ccache-action
marketplace: https://github.com/marketplace/actions/ccache-action
version: v1.4.0
dependentsNumber: "4"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/jianmingyong/ccache-action** to version **v1.4.0**.
- This action is used across all versions by **4** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ccache-action) to find the latest changes.

## Action Summary

The "Ccache for GH Actions" GitHub Action is designed to optimize build times for C/C++ projects by integrating Ccache, a caching tool that speeds up compilation. It automates the setup, caching, and restoration of Ccache across workflows, ensuring efficient reuse of compiled artifacts and supporting incremental caching to minimize redundant builds. This action solves the problem of lengthy build processes, especially in CI/CD pipelines, and provides robust capabilities for managing cache consistency across multiple platforms.

## Release notes

Fix a bug with selecting the binary file due to using semver version naming scheme.
Added support for 4.13 new binary file naming scheme.
