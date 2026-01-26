---
title: Release from changelog
date: 2026-01-26 05:59:28 +00:00
tags:
  - hermannm
  - GitHub Actions
draft: false
repo: https://github.com/hermannm/release-from-changelog
marketplace: https://github.com/marketplace/actions/release-from-changelog
version: v0.2.6
dependentsNumber: "11"
---


Version updated for **https://github.com/hermannm/release-from-changelog** to version **v0.2.6**.
- This action is used across all versions by **11** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/release-from-changelog) to find the latest changes.

## Action Summary

The **`release-from-changelog`** GitHub Action automates the process of creating GitHub releases based on entries in a `CHANGELOG.md` file that follows the "Keep a Changelog" format. It scans the changelog for an entry matching a newly pushed semantic version tag (e.g., `vX.Y.Z`) and generates the release accordingly. This action simplifies release management by eliminating manual intervention and ensures consistency between changelog entries and release tags.

## Release notes

- Remove single linebreaks inside paragraphs from changelog descriptions before sending to GitHub
    - This improves formatting of descriptions in GitHub's release view
