---
title: MigrationPilot
date: 2026-02-25 13:26:54 +00:00
tags:
  - mickelsamuel
  - GitHub Actions
draft: false
repo: https://github.com/mickelsamuel/migrationpilot
marketplace: https://github.com/marketplace/actions/migrationpilot
version: v1.4.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 22
---


Version updated for **https://github.com/mickelsamuel/migrationpilot** to version **v1.4.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **22**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/migrationpilot) to find the latest changes.

## Action Summary

MigrationPilot is a static analysis tool designed to evaluate PostgreSQL schema migrations for safety and performance risks before deployment. It analyzes SQL migrations using the PostgreSQL parser, applies 80 safety rules to detect and classify potential issues, scores overall risk, and provides safer alternatives where applicable. By automating migration checks and integrating into CI/CD pipelines (e.g., as a GitHub Action), it prevents dangerous operations, ensures smoother deployments, and enhances database reliability.

## Release notes

## What's New

### 80 Safety Rules
- 32 new rules (MP049-MP080) covering partitions, pgvector, RLS, triggers, sequences, TOAST compression, XID wraparound, and more
- 77 free rules, 3 production-context rules (Pro tier)

### VS Code Extension
- On-save diagnostics for SQL files
- Hover tooltips with safe alternatives
- 12 quick fixes (one-click auto-fix)
- Configurable PG version, severity levels, and rule exclusions

### Enterprise Features
- Team management with org seats and member tracking
- Policy enforcement (required rules, severity floors, blocked patterns)
- SSO authentication (device code flow, API key auth)

### Advanced Analysis
- Trigger cascade analysis
- Schema state simulation (in-memory DDL replay)
- Cross-migration dependency graph with cycle detection
- Sequence overflow monitoring
- Migration duration prediction with table stats calibration
- Lock queue simulation with connection modeling
- Expand-contract migration template generator

### New CLI Commands
- `template` — generate expand-contract migration templates
- `predict` — estimate migration duration
- `team` — manage org seats and members
- `login` / `logout` — SSO authentication
- `policy` — enforce team policies

### Additional
- MCP server with 4 tools for AI assistant integration
- WASM browser playground at /playground
- 5 config presets (recommended, strict, ci, startup, enterprise)
- Schema drift detection and historical trend analysis
- Security hardened: AES-256-GCM auth encryption, config validation, webhook sanitization
- 975 tests across 54 files

**Full Changelog**: https://github.com/mickelsamuel/migrationpilot/compare/v1.2.0...v1.4.0
