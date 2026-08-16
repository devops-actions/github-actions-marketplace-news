---
title: Download and cache a file in GitHub Actions
date: 2026-08-16 22:20:48 +00:00
tags:
  - mercury233
  - GitHub Actions
draft: false
repo: https://github.com/mercury233/action-cache-download-file
marketplace: https://github.com/marketplace/actions/download-and-cache-a-file-in-github-actions
version: v1.3.0
dependentsNumber: "11"
actionType: Composite
actionSummary: |
  This GitHub Action downloads a file from a URL and caches it for subsequent workflow runs, supporting SHA-256 checksum verification. It ensures that only files with the expected contents are used, providing a reliable way to manage cached assets across different builds.
---


Version updated for **https://github.com/mercury233/action-cache-download-file** to version **v1.3.0**.

- This action is used across all versions by **11** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/download-and-cache-a-file-in-github-actions) to find the latest changes.

## Action Summary

This GitHub Action downloads a file from a URL and caches it for subsequent workflow runs, supporting SHA-256 checksum verification. It ensures that only files with the expected contents are used, providing a reliable way to manage cached assets across different builds.

## What's Changed

- Hardened input handling to prevent shell command injection and unsafe cache keys.
- Added validation for URLs, filenames, destination paths, and SHA-256 checksums.
- Changed cache keys to use the expected SHA-256 checksum when provided, or a SHA-256 hash of the URL otherwise. Existing caches created by v1.2.0 will not be reused.
- Improved automatic filename detection for URLs containing query strings or fragments.
- Added portable SHA-256 calculation using `sha256sum`, `shasum`, or `openssl`.
- Added tests for Ubuntu, macOS, and Windows, including invalid-input and command-injection cases.

