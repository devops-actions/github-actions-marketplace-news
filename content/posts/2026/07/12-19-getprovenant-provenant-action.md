---
title: Provenant Scan
date: 2026-07-12 19:20:27 +00:00
tags:
  - getprovenant
  - GitHub Actions
draft: false
repo: https://github.com/getprovenant/provenant-action
marketplace: https://github.com/marketplace/actions/provenant-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/getprovenant/provenant-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/provenant-scan) to find the latest changes.

## What's Changed

First release of the Provenant GitHub Action — run the [Provenant](https://github.com/getprovenant/provenant) license, copyright, and SBOM scanner in a workflow.

## Highlights
- Scan the checked-out repo (or specific `paths`) and emit any Provenant output format.
- **Changed-file PR scans** via `paths-file` (feed it `git diff --name-only`).
- **CI license gating**: `license-policy` + `fail-on` (error|warning) fails the build on a disallowed license.
- **SARIF** output (`sarif-file`) for pull-request and code-scanning alerts.

The action always runs the latest published Provenant release; pin the action with `@v1`.
