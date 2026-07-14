---
title: esc-action
date: 2026-07-14 22:47:07 +00:00
tags:
  - pulumi
  - GitHub Actions
draft: false
repo: https://github.com/pulumi/esc-action
marketplace: https://github.com/marketplace/actions/esc-action
version: v3.1.0
dependentsNumber: "199"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Pulumi ESC action automates the process of securely managing and injecting secrets into GitHub Actions workflows using Pulumi's Environment, Secrets, and Configuration service. It simplifies the management of sensitive information by providing a seamless integration with popular secret stores and CI/CD platforms, ensuring that secrets are only accessible to the necessary actions.
---


Version updated for **https://github.com/pulumi/esc-action** to version **v3.1.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **199** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/esc-action) to find the latest changes.

## Action Summary

The Pulumi ESC action automates the process of securely managing and injecting secrets into GitHub Actions workflows using Pulumi's Environment, Secrets, and Configuration service. It simplifies the management of sensitive information by providing a seamless integration with popular secret stores and CI/CD platforms, ensuring that secrets are only accessible to the necessary actions.

## What's Changed

## What's changed

A backward-compatible release — no changes required to existing workflows. `@v3` picks these up automatically.

### Fixes
- **Newline-separated inputs now work** (#52). `export-environment-variables` and the deprecated `keys` inputs accept entries separated by commas, newlines, or both — so YAML block scalars (`|`, one entry per line) work as expected instead of silently failing to export.
- **Use the `pulumi env` subcommand instead of the `pulumi esc` alias** (#48).
- **Fix the tool-cache extraction directory** (#49).

### Maintenance
- Mark `dist/` as generated for GitHub linguist (#51).

**Full Changelog**: https://github.com/pulumi/esc-action/compare/v3.0.0...v3.1.0

