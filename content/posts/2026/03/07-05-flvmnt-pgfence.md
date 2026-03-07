---
title: pgfence
date: 2026-03-07 05:56:48 +00:00
tags:
  - flvmnt
  - GitHub Actions
draft: false
repo: https://github.com/flvmnt/pgfence
marketplace: https://github.com/marketplace/actions/pgfence
version: v0.3.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/flvmnt/pgfence** to version **v0.3.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pgfence) to find the latest changes.

## Action Summary

pgfence is a CLI tool designed to analyze SQL migration files for PostgreSQL before deployment, identifying potential risks such as lock modes, blocked operations, and performance bottlenecks. It provides insights into the lock semantics of DDL statements, assesses their risk levels, and offers safe rewrite strategies to minimize downtime and prevent production issues. This action automates migration safety checks, addressing the hidden challenges of ORMs and ensuring database changes are efficient and reliable.

## Release notes

### Bug fixes

- **CREATE INDEX safe rewrite**: Quick fix no longer uses `(...)` placeholder for columns. Now derives the safe SQL from the original statement, preserving columns, WHERE clause, UNIQUE keyword, and USING clause.
- **LSP initializationOptions**: Server now reads config from `initializationOptions` at startup instead of using defaults until the first `workspace/didChangeConfiguration` event.

### Docs

- CLAUDE.md: added LSP server and VS Code extension architecture section.
- Removed em dashes from CLAUDE.md.
