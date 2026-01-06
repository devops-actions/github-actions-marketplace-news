---
title: astral-sh/setup-uv
date: 2026-01-06 20:27:24 +00:00
tags:
  - astral-sh
  - GitHub Actions
draft: false
repo: https://github.com/astral-sh/setup-uv
marketplace: https://github.com/marketplace/actions/astral-sh-setup-uv
version: v7.2.0
dependentsNumber: "40,128"
---


Version updated for **https://github.com/astral-sh/setup-uv** to version **v7.2.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **40,128** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/astral-sh-setup-uv) to find the latest changes.

## Action Summary

The `setup-uv` GitHub Action automates the installation and configuration of a specific version of the `uv` tool for use in GitHub Actions workflows. It handles tasks such as downloading and caching `uv` for faster builds, verifying checksums for security, and setting up problem matchers for error output. This action simplifies the setup process for `uv`, enhances workflow efficiency, and provides optional features like Python version configuration and cache management.

## Release notes

## Changes

Among some minor typo fixes and quality of life features for developers of actions the main feature of this release are new outputs:

- **python-version:** The Python version that was set (same content as existing `UV_PYTHON`)
- **python-cache-hit:** A boolean value to indicate the Python cache entry was found

While implementing this it became clear, that it is easier to handle the Python binaries in a separate cache entry. The added benefit for users is that the "normal" cache containing the dependencies can be used in all runs no matter if these cache the Python binaries or not.

> [!NOTE]  
> This release will invalidate caches that contain the Python binaries. This happens a single time.

## 🐛 Bug fixes

- chore: remove stray space from UV\_PYTHON\_INSTALL\_DIR message @akx (#720)

## 🚀 Enhancements

- add outputs python-version and python-cache-hit @eifinger (#728)
- Add action typings with validation @krzema12 (#721)

## 🧰 Maintenance

- fix: use uv\_build backend for old-python-constraint-project @eifinger (#729)
- chore: update known checksums for 0.9.22 @[github-actions[bot]](https://github.com/apps/github-actions) (#727)
- chore: update known checksums for 0.9.21 @[github-actions[bot]](https://github.com/apps/github-actions) (#726)
- chore: update known checksums for 0.9.20 @[github-actions[bot]](https://github.com/apps/github-actions) (#725)
- chore: update known checksums for 0.9.18 @[github-actions[bot]](https://github.com/apps/github-actions) (#718)

## ⬆️ Dependency updates

- Bump peter-evans/create-pull-request from 7.0.9 to 8.0.0 @[dependabot[bot]](https://github.com/apps/dependabot) (#719)
- Bump github/codeql-action from 4.31.6 to 4.31.9 @[dependabot[bot]](https://github.com/apps/dependabot) (#723)

