---
title: pgfence
date: 2026-03-06 20:59:00 +00:00
tags:
  - flvmnt
  - GitHub Actions
draft: false
repo: https://github.com/flvmnt/pgfence
marketplace: https://github.com/marketplace/actions/pgfence
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/flvmnt/pgfence** to version **v0.3.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pgfence) to find the latest changes.

## Action Summary

pgfence is a CLI tool designed to analyze SQL migrations for PostgreSQL databases prior to deployment, ensuring safety and minimizing downtime. It identifies the lock modes and risk levels of DDL statements, highlights potential issues, and provides optimized rewrite sequences to safely execute migrations without impacting production systems. This tool automates the detection of risky operations, helping developers avoid unexpected database locks and improve migration reliability.

## Release notes

## VS Code Extension

pgfence now runs inside your editor. Install from the [VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=flvmnt.pgfence) or search "pgfence" in the Extensions panel.

- **Inline diagnostics**: lock modes, risk levels, and policy violations as you type
- **Quick fixes**: one-click safe rewrite replacements (lightbulb menu)
- **Hover info**: lock mode, blocked operations, and safe alternatives
- **Status bar**: error/warning count for the current file

The extension is a thin client that discovers `@flvmnt/pgfence` from your project's `node_modules`. One source of truth for CLI and editor.

## LSP Server

New `pgfence lsp` command starts the Language Server Protocol server over stdio. The VS Code extension uses this, but any LSP-compatible editor can too.

## New Rules

| Rule | Risk | Description |
|------|------|-------------|
| `ban-char-field` | LOW | Flag `char(n)`/`character(n)`, prefer `text` |
| `prefer-identity` | LOW | Flag `serial`/`bigserial`, prefer `IDENTITY` (PG10+) |
| `drop-database` | CRITICAL | `DROP DATABASE` is irreversible |
| `ban-alter-domain-add-constraint` | HIGH | Validates against all tables using the domain |
| `ban-create-domain-with-constraint` | LOW | Domains with constraints have poor migration support |

## Parser Improvements

- Character-level source offsets (`startOffset`/`endOffset`) with correct UTF-8 byte-to-char conversion
- Policy violations now carry `statementIndex` for precise source mapping

## Stats

- 42 check patterns (up from 37)
- 306 tests (up from 286)
- 54 items across 4 risk levels on the homepage

## Install

```bash
npm install -D @flvmnt/pgfence@0.3.0
code --install-extension flvmnt.pgfence
```

**Full Changelog**: https://github.com/flvmnt/pgfence/compare/v0.2.4...v0.3.0
