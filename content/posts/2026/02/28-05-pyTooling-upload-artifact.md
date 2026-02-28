---
title: 📤 Upload Artifact (Preserve File Permissions)
date: 2026-02-28 05:36:04 +00:00
tags:
  - pyTooling
  - GitHub Actions
draft: false
repo: https://github.com/pyTooling/upload-artifact
marketplace: https://github.com/marketplace/actions/upload-artifact-preserve-file-permissions
version: v1.10.0
dependentsNumber: "56"
actionType: Composite
---


Version updated for **https://github.com/pyTooling/upload-artifact** to version **v1.10.0**.
- This action is used across all versions by **56** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/upload-artifact-preserve-file-permissions) to find the latest changes.

## Action Summary

This GitHub Action enhances the functionality of `actions/upload-artifact` by preserving file permissions during artifact uploads through tarball packaging, addressing a limitation in GitHub's native implementation. It automates the reliable storage of build outputs or other files across workflows while maintaining file attributes, supporting multiple operating systems, and offering additional features such as debug mode, customizable tarball naming, and consistent directory/file structure within artifacts. This action is ideal for use cases requiring precise file preservation and compatibility across environments.

## Release notes

# Changes

* Bumped dependencies.
  * Bump actions/upload-artifact from 6 to 7.

# Tests

* Bumped dependencies.
  * Bump actions/download-artifact from 7 to 8.
  * Updated reusable templates from pyTooling/Actions to r7.

