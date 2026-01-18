---
title: Cleanup Expired Discussions
date: 2026-01-18 21:31:59 +00:00
tags:
  - nuitsjp
  - GitHub Actions
draft: false
repo: https://github.com/nuitsjp/swa-github-discussion-cleanup
marketplace: https://github.com/marketplace/actions/cleanup-expired-discussions
version: v1.0.10
dependentsNumber: "?"
---


Version updated for **https://github.com/nuitsjp/swa-github-discussion-cleanup** to version **v1.0.10**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cleanup-expired-discussions) to find the latest changes.

## Action Summary

This GitHub Action automates access control for Azure Static Web Apps (SWA) by syncing GitHub repository permissions to SWA custom roles and notifying users with invitation links via GitHub Discussions. It eliminates the need for manual role updates, ensures permissions are always in sync, and simplifies managing expired invitation links by automatically deleting outdated discussions. This action is ideal for managing secure access to documentation or content hosted on SWA linked to a GitHub repository.

## Release notes

Changes:\n- Remove title-template input and filtering; deletion uses category + expiration only.\n- Update tests and docs for the new behavior.\n- Improve Jest script for Windows and refresh dist build.
