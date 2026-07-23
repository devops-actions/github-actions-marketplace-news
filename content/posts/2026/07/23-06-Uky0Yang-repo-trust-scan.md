---
title: repo-trust-scan
date: 2026-07-23 06:19:17 +00:00
tags:
  - Uky0Yang
  - GitHub Actions
draft: false
repo: https://github.com/Uky0Yang/repo-trust-scan
marketplace: https://github.com/marketplace/actions/repo-trust-scan
version: v0.2.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  `repo-trust-scan` is a CLI and GitHub Action that statically scans repository-controlled execution surfaces, helping users identify and understand potential security risks before executing unfamiliar code. It checks tasks like automatic editor actions, agent hooks, MCP server configurations, devcontainer lifecycle commands, package install hooks, escaping symlinks, hidden Unicode in instructions, download-and-execute chains, and credential-transfer patterns. The action is useful for ensuring that repositories are secure and safe to work with, complementing existing security tools but not replacing them.
---


Version updated for **https://github.com/Uky0Yang/repo-trust-scan** to version **v0.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repo-trust-scan) to find the latest changes.

## Action Summary

`repo-trust-scan` is a CLI and GitHub Action that statically scans repository-controlled execution surfaces, helping users identify and understand potential security risks before executing unfamiliar code. It checks tasks like automatic editor actions, agent hooks, MCP server configurations, devcontainer lifecycle commands, package install hooks, escaping symlinks, hidden Unicode in instructions, download-and-execute chains, and credential-transfer patterns. The action is useful for ensuring that repositories are secure and safe to work with, complementing existing security tools but not replacing them.

## What's Changed

## Highlights

- Publishes repo-trust-scan as a reusable GitHub Action in the Security and Utilities categories.
- Adds a 21-second terminal demo and a 1280×640 social preview asset.
- Moves real scan output ahead of installation and adds clear comparisons with secret scanners, SAST, and runtime scanners.
- Adds a copyable GitHub Actions workflow.
- Updates pinned GitHub Actions dependencies.

## Validation

- 25 unit tests pass (2 Windows symlink tests skipped as expected).
- Package build, action smoke test, compile check, and critical self-scan pass.
- CI passes on Ubuntu, Windows, and macOS with Python 3.10 and 3.14.
