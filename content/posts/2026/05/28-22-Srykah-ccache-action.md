---
title: Ccache for gh actions - append-timestamp fix
date: 2026-05-28 22:56:33 +00:00
tags:
  - Srykah
  - GitHub Actions
draft: false
repo: https://github.com/Srykah/ccache-action
marketplace: https://github.com/marketplace/actions/ccache-for-gh-actions-append-timestamp-fix
version: v1.2.24
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/Srykah/ccache-action** to version **v1.2.24**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ccache-for-gh-actions-append-timestamp-fix) to find the latest changes.

## Action Summary

The "Ccache for GitHub Actions" is a GitHub Action designed to optimize and accelerate build times for C/C++ projects by integrating `ccache` or `sccache` into CI workflows. It automates the installation and configuration of caching tools, enabling efficient reuse of compiled outputs across builds and environments. This action supports Linux, macOS, and Windows, and provides flexibility through options for cache configuration, compiler integration, and verbose logging.

## What's Changed

Fix append-input option (using getBooleanInput instead of getInput to fix "false" being read as a string)
