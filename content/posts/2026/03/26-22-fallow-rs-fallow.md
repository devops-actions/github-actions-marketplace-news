---
title: Fallow - Codebase Health
date: 2026-03-26 22:04:10 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.2.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.2.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a tool designed to analyze TypeScript and JavaScript codebases for unused code, code duplication, and complexity hotspots. It automates the detection of issues like dead code, duplicate code blocks, and overly complex functions, helping developers optimize and maintain cleaner codebases. With fast, Rust-native performance and no required configuration, it simplifies code analysis and refactoring tasks.

## Release notes

## Smarter refactoring targets

Refactoring targets now help you find **quick wins first**. Three new capabilities make targets more actionable:

### Efficiency scoring

Targets are sorted by **efficiency** (`priority / effort`) instead of raw priority. A low-effort, high-priority target ranks above a high-effort, high-priority one — exactly what you need for sprint planning.

```
● Refactoring targets (93)
  16 low effort · 34 medium · 43 high

   32.6  pri:32.6    playground/entrypoints/a0.js
         circular dep · effort:low · confidence:high  Break import cycle

   12.8  pri:38.3    packages/vite/src/node/config.ts
         circular dep · effort:high · confidence:high  Break import cycle — 53 dependents
```

### Confidence levels

Each recommendation now includes a **confidence** level:
- **high** — deterministic graph/AST analysis (dead code, circular deps, complexity)
- **medium** — heuristic thresholds (fan-in/fan-out coupling)
- **low** — depends on git history quality (churn-based)

### Adaptive thresholds

Fan-in and fan-out thresholds adapt to your project's distribution using percentiles (p95/p90/p75) instead of hardcoded constants. Small projects and large monorepos both get meaningful recommendations. The computed thresholds are exposed in JSON output via `target_thresholds` for CI integration.

### Output polish

- **Human**: efficiency as primary score, labeled `effort:`/`confidence:` metadata, effort summary line
- **Compact**: underscore category labels (`circular_dep`, `dead_code`) for reliable parsing
- **Markdown**: reduced from 7 to 5 columns for GitHub PR readability
- **SARIF**: priority, efficiency, and confidence in message text

### Bug fixes

- Cycle path evidence no longer contains duplicates when files participate in multiple cycles
- GitLab CI template uses Alpine image and detects package manager correctly
- Benchmark alert thresholds corrected for `customBiggerIsBetter`
- SARIF version redaction in test fixtures
- MCP analyze tool description matches `dead-code` command

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.1.0...v2.2.0
