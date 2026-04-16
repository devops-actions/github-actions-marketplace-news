---
title: Versionary Action
date: 2026-04-16 14:14:01 +00:00
tags:
  - jolars
  - GitHub Actions
draft: false
repo: https://github.com/jolars/versionary
marketplace: https://github.com/marketplace/actions/versionary-action
version: v0.9.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/jolars/versionary** to version **v0.9.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/versionary-action) to find the latest changes.

## Action Summary

Versionary is an automated release management tool designed to streamline semantic versioning, changelog generation, release PR workflows, and tagging across various software ecosystems. It bridges the gap between tools like `semantic-release` and `release-please` by enabling both direct releases and release-PR-gated workflows, allowing maintainers to preview changes before publication. With support for multiple repository types and extensible architecture, it simplifies version planning and release metadata management while leaving artifact publishing to external CI/CD workflows.

## What's Changed

### Features
- **strategies:** support per-path changelogs ([`86d1810`](https://github.com/jolars/versionary/commit/86d18101b34d8cdecbe193e2798e327280fc701c))
- **strategies:** handle `version.workspace` for rust ([`cf82384`](https://github.com/jolars/versionary/commit/cf82384367edf76fd38cb09301d2ce80cf407102))

### Bug Fixes
- **domain:** refresh cargo lock files across workspace ([`001b0db`](https://github.com/jolars/versionary/commit/001b0dbcb8496ceea3ef01814a044c7b59781524))
