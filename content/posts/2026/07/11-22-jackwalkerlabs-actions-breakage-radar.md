---
title: Actions Breakage Radar
date: 2026-07-11 22:25:38 +00:00
tags:
  - jackwalkerlabs
  - GitHub Actions
draft: false
repo: https://github.com/jackwalkerlabs/actions-breakage-radar
marketplace: https://github.com/marketplace/actions/actions-breakage-radar
version: v1.1.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/jackwalkerlabs/actions-breakage-radar** to version **v1.1.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/actions-breakage-radar) to find the latest changes.

## What's Changed

Parser compatibility patch for valid GitHub Actions YAML forms.

- Supports bare-dash step mappings where uses appears on the following line
- Supports quoted jobs, steps, runs-on, and uses keys
- Adds non-null repository and branch report-output coverage
- 34 tests pass; live 3-repository validation remains 12 workflows and 23 migration warnings with zero failures

Use the stable major tag: jackwalkerlabs/actions-breakage-radar@v1
