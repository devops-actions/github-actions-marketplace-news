---
title: Fallow - Codebase Health
date: 2026-03-30 22:20:18 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.7.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.7.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a Rust-native tool for analyzing TypeScript and JavaScript codebases to identify dead code, duplicated code, and complexity hotspots. It automates the detection of unused exports, dependencies, and files, highlights duplicate and overly complex code, and provides actionable insights to improve code quality. With sub-second performance and zero configuration, it helps developers streamline refactoring and maintain cleaner, more efficient codebases.

## What's Changed

## Features

### Structured fix suggestions in JSON output

Every issue in `--format json` output now includes an `actions` array with machine-actionable remediation hints. AI agents and tooling can programmatically determine how to fix each issue without understanding fallow's internals.

```json
{
  "path": "src/utils.ts",
  "export_name": "helperFn",
  "line": 10,
  "actions": [
    {
      "type": "remove-export",
      "auto_fixable": true,
      "description": "Remove the `export` keyword from the declaration"
    },
    {
      "type": "suppress-line",
      "auto_fixable": false,
      "description": "Suppress with an inline comment above the line",
      "comment": "// fallow-ignore-next-line unused-export"
    }
  ]
}
```

- **14 fix action types** in kebab-case (`remove-export`, `delete-file`, `remove-dependency`, `remove-enum-member`, `remove-class-member`, `resolve-import`, `install-dependency`, `remove-duplicate`, `move-to-dev`, `refactor-cycle`)
- **`auto_fixable` flag** on every action — `true` means `fallow fix` handles it automatically
- **Optional `note` field** on non-auto-fixable items explaining why manual review is needed
- **Context-aware suppress** — inline comments for source-level issues, `add-to-config` with concrete package name for dependency-level issues
- **Re-export warnings** — `remove-export` actions on re-exported symbols include a note about verifying public API surface
- **`scope: "per-location"`** on `duplicate_exports` suppress to signal multi-file scope
- No schema version bump (additive change)

### Pre-commit hook setup (`fallow init --hooks`)

Scaffold a git pre-commit hook that catches dead code before it merges.

```bash
fallow init --hooks                  # auto-detect base branch
fallow init --hooks --base develop   # use custom base branch
```

- **Hook manager detection**: husky > lefthook > bare `.git/hooks`
- **Binary guard**: skips gracefully if fallow is not installed
- **Auto-detects default branch** via `git symbolic-ref`
- **Input validation** on `--base` prevents shell injection
- Success message includes `git commit --no-verify` for bypass

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.6.0...v2.7.0
