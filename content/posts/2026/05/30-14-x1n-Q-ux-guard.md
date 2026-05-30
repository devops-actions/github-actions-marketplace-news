---
title: ux-guard — UX completeness check
date: 2026-05-30 14:13:06 +00:00
tags:
  - x1n-Q
  - GitHub Actions
draft: false
repo: https://github.com/x1n-Q/ux-guard
marketplace: https://github.com/marketplace/actions/ux-guard-ux-completeness-check
version: v0.1.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/x1n-Q/ux-guard** to version **v0.1.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ux-guard-ux-completeness-check) to find the latest changes.

## Action Summary

`ux-guard` is a linter designed to identify missing or incomplete user experience states in React and Next.js applications, such as loading indicators, empty states, error handling, form validation, and success feedback. It automates the detection of common UI gaps that developers or AI coding agents might overlook, ensuring a more complete and user-friendly application before deployment. Key capabilities include human-readable and machine-readable reports, CI integration, and compatibility with AI coding tools for streamlined development workflows.

## What's Changed

## What's Changed

This release fixes the GitHub Action wrapper after Marketplace publishing.

- Installs the ux-guard CLI into a temporary action directory before running scans.
- Avoids npm workspace shadowing where `npx ux-guard@0.1.0` could resolve to the local workspace and fail with `ux-guard: not found`.
- Updates Action usage snippets to `x1n-Q/ux-guard@v0.1.2`.

## Usage

```yaml
- uses: x1n-Q/ux-guard@v0.1.2
  with:
    path: ./src
    fail-on: error
    comment: true
```
