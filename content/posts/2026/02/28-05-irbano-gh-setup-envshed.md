---
title: Setup Envshed
date: 2026-02-28 05:36:45 +00:00
tags:
  - irbano
  - GitHub Actions
draft: false
repo: https://github.com/irbano/gh-setup-envshed
marketplace: https://github.com/marketplace/actions/setup-envshed
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/irbano/gh-setup-envshed** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-envshed) to find the latest changes.

## Action Summary

The **Setup Envshed** GitHub Action integrates Envshed secrets into your GitHub Actions workflows by securely fetching and injecting them as masked environment variables or writing them to a `.env` file. It automates the process of managing and accessing project-specific secrets across different environments, enhancing security and simplifying secret handling. Key capabilities include support for exporting secrets in multiple formats, masking sensitive data in logs, and seamless integration with the Envshed API.

## Release notes

## What's Changed

- **Fix empty string masking warning** — `core.setSecret()` is no longer called with empty strings, which eliminates the `Can't add secret mask for empty string` GitHub Actions warning
- **Correct handling of falsy-looking values** — Values like `"0"`, `"false"`, `"null"`, and `"undefined"` are properly masked using a strict `value !== ""` check instead of a truthy check

**Full Changelog**: https://github.com/irbano/gh-setup-envshed/compare/v1.0.0...v1.1.0
