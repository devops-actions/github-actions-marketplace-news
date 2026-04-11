---
title: recul by CRBroughton
date: 2026-04-11 06:27:50 +00:00
tags:
  - CRBroughton
  - GitHub Actions
draft: false
repo: https://github.com/CRBroughton/recul
marketplace: https://github.com/marketplace/actions/recul-by-crbroughton
version: v0.6.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/CRBroughton/recul** to version **v0.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/recul-by-crbroughton) to find the latest changes.

## Action Summary

Recul is a GitHub Action and CLI tool designed to mitigate supply chain attacks on npm dependencies by allowing teams to stay a specified number of versions behind the latest stable release. It automates dependency auditing in CI pipelines, enforces a lag policy to delay updates, and provides a clear pass/fail signal for compliance, reducing the risk of integrating potentially compromised releases. Recul complements traditional security practices and requires minimal maintenance, making it ideal for teams aiming to balance security and operational efficiency.

## What's Changed

## What's new

### pnpm monorepo support
recul now detects `pnpm-workspace.yaml` and audits each workspace package separately, grouping output by package with shared column widths. Installed versions are resolved per-importer from the lockfile. `--fix` applies catalog updates across all packages in one pass.

### GitHub Actions job summary
When running in CI, recul writes a markdown audit table to the job summary. In monorepo mode each workspace package gets its own section.

### Settings table
The settings block is now rendered as a table with dynamic column widths.
