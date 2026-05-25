---
title: pgrls — Postgres RLS linter
date: 2026-05-25 14:37:11 +00:00
tags:
  - pgrls
  - GitHub Actions
draft: false
repo: https://github.com/pgrls/pgrls-action
marketplace: https://github.com/marketplace/actions/pgrls-postgres-rls-linter
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pgrls/pgrls-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pgrls-postgres-rls-linter) to find the latest changes.

## Action Summary

The `pgrls-action` GitHub Action integrates the `pgrls` static analyzer into CI workflows to automatically lint live PostgreSQL databases for issues related to Row-Level Security (RLS) policies, such as tenant scoping errors, security vulnerabilities, and performance pitfalls. This action helps prevent policy misconfigurations from being deployed by failing builds when problems are detected and supports features like automated fixes for certain rules and GitHub code scanning integration. It is ideal for teams aiming to strengthen database security and ensure policy correctness as part of their development pipeline.

## What's Changed

Documentation refresh — no behavior change. The action keeps installing the latest pgrls from PyPI by default, so v1 consumers already get pgrls 0.6.1 + SEC033 with no version pin change.

## What's new on the Marketplace listing

- **Tile description** (from `action.yml`): now reads *"Lint Postgres Row-Level Security policies with pgrls — 44 rules covering broken row scoping, inverted auth checks, write-side holes, and performance traps. 12 rules with mechanical auto-fixes."*
- **README** opens with the 44-rule / 12-fixer / MIT call-out and a new "New in pgrls 0.6.1 — SEC033" section above the fold, explaining the user_metadata bypass and how pinning \`pgrls/pgrls-action@v1\` already covers it.

## Compatibility

Same inputs, same defaults, same exit behavior as v1.0.0. \`pgrls/pgrls-action@v1\` continues to track this and future patch releases automatically.

## Underlying pgrls release

- pgrls 0.6.1: https://github.com/pgrls/pgrls/releases/tag/v0.6.1
- PyPI: https://pypi.org/project/pgrls/0.6.1/
