---
title: AEDSC — Solidity security scan
date: 2026-05-28 22:57:36 +00:00
tags:
  - Pazificateur69
  - GitHub Actions
draft: false
repo: https://github.com/Pazificateur69/aedsc-action
marketplace: https://github.com/marketplace/actions/aedsc-solidity-security-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Pazificateur69/aedsc-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aedsc-solidity-security-scan) to find the latest changes.

## Action Summary

This GitHub Action automates security scanning for Solidity smart contracts in pull requests using Slither, a popular static analysis tool. It identifies and ranks vulnerabilities (HIGH, MEDIUM, LOW, INFO) in `.sol` files, posts findings as a sticky PR comment, and optionally blocks merges for high-severity issues. The action runs entirely within the GitHub Actions environment, ensuring privacy, and offers configurable options for fail conditions, versioning, and optional external analysis.

## What's Changed

Initial release of aedsc-action — Solidity security scan as a GitHub Action.
  
  **What it does**
  - Runs Slither on every `pull_request` event
  - Posts a sticky PR comment with findings ranked H / MED / LOW / INFO
  - Updates the same comment on subsequent pushes (no spam)
  - Configurable fail-on threshold (`high` / `medium` / `low` / `never`)
  
  **Usage**
  ```yaml
  - uses: Pazificateur69/aedsc-action@v1
  
  See README (https://github.com/Pazificateur69/aedsc-action) for all inputs and outputs.


