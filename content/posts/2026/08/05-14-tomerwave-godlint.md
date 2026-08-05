---
title: Run Godlint
date: 2026-08-05 14:49:40 +00:00
tags:
  - tomerwave
  - GitHub Actions
draft: false
repo: https://github.com/tomerwave/godlint
marketplace: https://github.com/marketplace/actions/run-godlint
version: v0.6.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Godlint is an executable engineering constitution tool that automates code quality checks across various programming languages. It ensures that all contributors adhere to defined rules and boundaries, promoting a consistent architecture and enforcing policies locally and in CI.
---


Version updated for **https://github.com/tomerwave/godlint** to version **v0.6.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-godlint) to find the latest changes.

## Action Summary

Godlint is an executable engineering constitution tool that automates code quality checks across various programming languages. It ensures that all contributors adhere to defined rules and boundaries, promoting a consistent architecture and enforcing policies locally and in CI.

## What's Changed

### Fixed

- `architecture/filename-case` now ignores framework-required dynamic route filenames beginning with
  `[name]`, `[...name]` or `[[...name]]`. Astro and Next.js use those segments as routing syntax, so
  renaming them changes the route rather than correcting a convention. Malformed bracketed names remain
  findings.

