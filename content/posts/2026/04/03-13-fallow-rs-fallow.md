---
title: Fallow - Codebase Health
date: 2026-04-03 13:46:20 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.11.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.11.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, "Fallow," is a Rust-based codebase analyzer designed for TypeScript and JavaScript projects. It automates the detection of dead code, code duplication, complexity issues, and architectural violations, providing quick and actionable insights to optimize and maintain code quality. Key capabilities include sub-second analysis, zero configuration, automated dead code removal, duplication detection, and health audits for efficient development workflows.

## What's Changed

## Group dead code by team ownership or directory

The last Tier 1 feature is here: `--group-by owner|directory` partitions all analysis output into labeled groups for team-level triage, dashboards, and operational workflows.

### `--group-by owner` — CODEOWNERS integration

Group issues by team using your existing `.github/CODEOWNERS` file:

```bash
fallow check --group-by owner
```

```
7 groups: @types-team 174 · @community 57 · @preact-core 29 · @compat-team 25 · ...

@types-team (174 issues: 8 files · 9 exports · 115 types · 40 unresolved imports) — matched by *.ts, *.tsx
● Unused files (8)
  compat/test/ts/forward-ref.tsx
  ...

@community (57 issues: 18 files · 27 exports · 12 unlisted deps)
● Unused files (18)
  ...
```

- **Auto-probes** `CODEOWNERS`, `.github/CODEOWNERS`, `.gitlab/CODEOWNERS`, `docs/CODEOWNERS`
- **Last-match-wins** pattern matching (gitignore-style globs)
- **First owner** on multi-owner lines is the assigned owner
- **Rule annotations** show which CODEOWNERS pattern matched (e.g., `matched by *.tsx`)
- **Summary line** at top shows all groups sorted by issue count
- **Breakdown headers** show per-type counts (`3 files · 21 exports · 1 dep`)
- **Doc URL dedup** — each explanation link appears once across all groups

### `--group-by directory` — no CODEOWNERS needed

Group by first path component for quick structural triage:

```bash
fallow check --group-by directory
```

Works on any project without setup. Great for monorepos where directory = package.

### All 6 output formats

| Format | Grouping style |
|--------|---------------|
| Human | Colored group headers with summary + breakdown |
| JSON | `{ "grouped_by": "owner", "groups": [{key, total_issues, ...}] }` |
| Compact | Tab-prefixed lines: `@team\tunused-file:path` |
| Markdown | `## @team (N issues)` sections |
| SARIF | `properties.owner` on each result |
| CodeClimate | `owner` field on each issue |

### MCP + Config

- **MCP**: `group_by: "owner" | "directory"` parameter on the `analyze` tool
- **Config**: optional `codeowners` field in `.fallowrc.json` for custom CODEOWNERS path

### Also in this release

- **GitHub Action review comments** now filtered to PR diff hunks, preventing `ARG_MAX` crashes on large PRs (50+ files)
- Improved review comment hunk filtering UX and robustness

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.10.1...v2.11.0
