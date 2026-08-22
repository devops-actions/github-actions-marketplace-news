---
title: Npx Confusion Guard
date: 2026-08-22 13:50:12 +00:00
tags:
  - yourllmstxt
  - GitHub Actions
draft: false
repo: https://github.com/yourllmstxt/npx-confusion-guard
marketplace: https://github.com/marketplace/actions/npx-confusion-guard
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action, npx-confusion-guard, prevents attackers from claiming public npm names that match the binaries your packages export. It scans package.json files in a workspace and checks whether corresponding unscoped public npm names are claimed. The action reports potential issues via SARIF findings and can optionally reserve unclaimed binaries for manual reservation.
---


Version updated for **https://github.com/yourllmstxt/npx-confusion-guard** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/npx-confusion-guard) to find the latest changes.

## Action Summary

This GitHub Action, npx-confusion-guard, prevents attackers from claiming public npm names that match the binaries your packages export. It scans package.json files in a workspace and checks whether corresponding unscoped public npm names are claimed. The action reports potential issues via SARIF findings and can optionally reserve unclaimed binaries for manual reservation.

## What's Changed

Initial release of Npx Confusion Guard.

- Scans package.json bin declarations for public npm name collisions
- Produces SARIF for GitHub Code Scanning
- Can reserve unclaimed names using a customer-owned npm account
