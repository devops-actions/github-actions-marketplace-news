---
title: GHAGGA Code Review
date: 2026-03-08 05:50:08 +00:00
tags:
  - JNZader
  - GitHub Actions
draft: false
repo: https://github.com/JNZader/ghagga
marketplace: https://github.com/marketplace/actions/ghagga-code-review
version: v2.2.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/JNZader/ghagga** to version **v2.2.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghagga-code-review) to find the latest changes.

## Action Summary

GHAGGA is an AI-powered code review tool that automates the analysis of pull requests by combining static analysis tools (Semgrep, Trivy, CPD), project memory, and intelligent multi-agent systems to provide structured review comments with findings, severity, and actionable suggestions. It addresses the challenges of ensuring secure, high-quality code by leveraging advanced AI models and learning from past reviews, while supporting multiple providers and distribution modes (SaaS, GitHub Action, CLI). Key features include project memory, multi-model voting, and encrypted API key management for enhanced security and flexibility.

## Release notes

## 🎣 Git Hooks Integration

Run GHAGGA automatically on every commit — no CI required.

- **`ghagga hooks install`** — Install pre-commit and commit-msg hooks
- **`ghagga hooks uninstall`** — Clean removal with backup restore
- **`ghagga hooks status`** — Check installed hooks and health
- **`--staged`** — Review only staged files (pre-commit mode)
- **`--quick`** — Skip AI review for instant static analysis
- **`--commit-msg`** — Validate commit message format
- **`--exit-on-issues`** — Non-zero exit on findings (blocks commit)
- Safe coexistence with existing hooks (marker-based install/uninstall)
- `core.hooksPath` detection and support
- `GHAGGA_HOOK_ARGS` env var for custom arguments

## 🧠 Engram Memory Adapter

Share code review memory across tools via [Engram](https://github.com/ckreiling/engram).

- **`--memory-backend engram`** — Use Engram instead of SQLite
- Full `MemoryStorage` interface implementation via HTTP API
- Bidirectional schema mapping (GHAGGA ↔ Engram)
- Graceful fallback to SQLite if Engram is unavailable
- Configurable via env vars: `ENGRAM_API_URL`, `ENGRAM_AGENT_ID`, `ENGRAM_TIMEOUT`
- 91.61% Stryker mutation score

## 📊 Test Coverage

**1,940 tests** across the monorepo:
| Package | Tests |
|---------|-------|
| `packages/db` | 118 |
| `packages/core` | 675 |
| `apps/cli` (ghagga) | 272 |
| `apps/server` | 413 |
| `apps/action` | 195 |
| `apps/dashboard` | 267 |

## 📦 Install / Update

```bash
npm install -g ghagga@2.2.0
```

**Full Changelog**: https://github.com/JNZader/ghagga/compare/v2.1.0...v2.2.0
