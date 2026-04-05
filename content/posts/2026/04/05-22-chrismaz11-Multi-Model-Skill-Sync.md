---
title: Cross Model Skill Sync
date: 2026-04-05 22:01:12 +00:00
tags:
  - chrismaz11
  - GitHub Actions
draft: false
repo: https://github.com/chrismaz11/Multi-Model-Skill-Sync
marketplace: https://github.com/marketplace/actions/cross-model-skill-sync
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/chrismaz11/Multi-Model-Skill-Sync** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cross-model-skill-sync) to find the latest changes.

## Action Summary

The `cross-model-skill-sync` GitHub Action automates the validation and synchronization of AI-related configuration files within a repository, ensuring alignment with a canonical project specification. It identifies discrepancies (drift) between the source spec and derived artifacts such as model adapters, governance documents, and agent policies, and can refresh outdated or missing files accordingly. Additionally, it generates a JSON report to support downstream workflows and improve visibility into repository status.

## What's Changed

## What's changed

- **Node 24** — workflow and all bundled actions now run on Node.js 24
- **Job summary** — every run writes a summary table (mode, drift status, checks passed, errors, PR link) to the workflow summary page
- **Fix** — PR body YAML syntax error that blocked `refresh` mode PR creation

## Upgrading

Users pinned to `@v1` get these changes automatically. To pin to this exact version use `@v1.1.0`.
