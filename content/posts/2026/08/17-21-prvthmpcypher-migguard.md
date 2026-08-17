---
title: migguard
date: 2026-08-17 21:48:55 +00:00
tags:
  - prvthmpcypher
  - GitHub Actions
draft: false
repo: https://github.com/prvthmpcypher/migguard
marketplace: https://github.com/marketplace/actions/migguard
version: v0.1.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  `migguard` is a command-line tool that automates the detection of database migration conflicts before merging branches. It supports multiple ORM frameworks such as Django, Alembic, Prisma, Rails, and Knex. The tool helps teams avoid inconsistent database schemas by detecting conflicting migration heads or timestamp inconsistencies in pull requests.
---


Version updated for **https://github.com/prvthmpcypher/migguard** to version **v0.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/migguard) to find the latest changes.

## Action Summary

`migguard` is a command-line tool that automates the detection of database migration conflicts before merging branches. It supports multiple ORM frameworks such as Django, Alembic, Prisma, Rails, and Knex. The tool helps teams avoid inconsistent database schemas by detecting conflicting migration heads or timestamp inconsistencies in pull requests.

## What's Changed

### migguard v0.1.0

Catch database migration conflicts before the merge, not after the database is broken.

#### Key Features
- 🔍 **Framework Auto-Detection**: Instant zero-config detection of Django, Alembic, Prisma, Rails, and Knex.
- 🌳 **Engine A (DAG Traversal)**: Per-app leaf node detection for Django and Alembic. Handles tuple merge points and squashed migrations without false positives.
- ⏱️ **Engine B (Timestamp Comparison)**: Git merge-base timestamp comparison for Prisma, Rails, and Knex with duplicate & out-of-order detection.
- ⚡ **CI & Pre-Commit Ready**: Includes native GitHub Action and pre-commit hook configurations.
- 🛡️ **Zero Database Connection**: Completely local and offline analysis derived purely from files and git history.
