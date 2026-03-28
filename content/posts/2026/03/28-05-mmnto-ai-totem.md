---
title: Totem Shield
date: 2026-03-28 05:58:12 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/totem1.5.10
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/totem@1.5.10**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a GitHub Action designed to prevent recurring coding mistakes by transforming lessons from code reviews into enforceable project-specific rules. It automates the detection of errors, captures lessons in plain English, and generates deterministic constraints that block non-compliant code from being pushed. This self-healing system reduces repetitive review feedback and enforces consistent coding standards, making it particularly effective for governing AI coding agents and human developers alike.

## Release notes

### Patch Changes

-   990c3bf: Incremental shield, totem status/check, docs staleness fix.
    -   feat: incremental shield validation — delta-only re-check for small fixes (#1010)
    -   feat: totem status + totem check commands (#951)
    -   fix: totem docs staleness — aggressive rewrite of stale roadmap sections (#1024)
    -   fix: mermaid lexer error in architecture diagram
    -   chore: MCP add_lesson rate limit bumped to 25 per session
    -   chore: 364 compiled rules, 966 lessons, 2,000 tests

