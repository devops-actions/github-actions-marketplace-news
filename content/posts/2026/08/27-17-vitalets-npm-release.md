---
title: npm release
date: 2026-08-27 17:27:43 +00:00
tags:
  - vitalets
  - GitHub Actions
draft: false
repo: https://github.com/vitalets/npm-release
marketplace: https://github.com/marketplace/actions/npm-release
version: v2.1.1
dependentsNumber: "3"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of releasing an npm package by performing several key tasks:
  1. It updates the `package.json` with a specified channel and version increment.
  2. It generates and appends changelog entries based on a predefined format in `CHANGELOG.md`.
  3. It commits, tags, and pushes the release commit to the repository.
  4. It publishes the package to npm using OIDC trusted publishing without requiring an npm token.
  5. It creates a GitHub Release with the extracted changelog notes for easy tracking of changes.
  The action is designed to be integrated into workflows that handle package releases, ensuring that the process is automated and secure.
---


Version updated for **https://github.com/vitalets/npm-release** to version **v2.1.1**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/npm-release) to find the latest changes.

## Action Summary

This GitHub Action automates the process of releasing an npm package by performing several key tasks:
1. It updates the `package.json` with a specified channel and version increment.
2. It generates and appends changelog entries based on a predefined format in `CHANGELOG.md`.
3. It commits, tags, and pushes the release commit to the repository.
4. It publishes the package to npm using OIDC trusted publishing without requiring an npm token.
5. It creates a GitHub Release with the extracted changelog notes for easy tracking of changes.
The action is designed to be integrated into workflows that handle package releases, ensuring that the process is automated and secure.

## What's Changed

- Use `next` as the prerelease channel in workflow examples, documentation, and tests
- Document that prereleases published to the `next` dist-tag are installable as `package-name@next`

