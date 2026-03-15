---
title: Decision Guardian
date: 2026-03-15 05:57:58 +00:00
tags:
  - DecispherHQ
  - GitHub Actions
draft: false
repo: https://github.com/DecispherHQ/decision-guardian
marketplace: https://github.com/marketplace/actions/decision-guardian
version: v1.2.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/DecispherHQ/decision-guardian** to version **v1.2.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/decision-guardian) to find the latest changes.

## Action Summary

Decision Guardian is a GitHub Action and CLI tool that automatically surfaces relevant architectural decisions on pull requests or during local development, helping teams retain critical context and prevent knowledge loss. By analyzing changes to protected files against predefined decision records, it provides context-aware PR comments or outputs, ensuring developers understand the rationale behind past decisions. Its key capabilities include flexible file matching, high performance for large repositories, and robust security features, making it an effective solution for managing and communicating technical decisions.

## Release notes

## What's Changed

### 🐛 Bug Fixes
- **BUG-001**: Fixed all shipped templates using wrong JSON schema — templates now produce matches correctly
- **BUG-002**: `string` mode now accepts singular `pattern` as alias for `patterns` array instead of silently degrading to glob-only match
- **BUG-003**: `json_path` mode now correctly detects nested key changes made in-place using context lines
- **BUG-004**: `--fail-on-error` now correctly exits 1 on rule parse failures
- **BUG-006**: `content_rules` array now supports AND logic via `content_match_mode: "all"`
- **BUG-008**: Duplicate decision IDs now warned and deduplicated — first occurrence wins
- **BUG-009**: Decisions with only exclusion patterns in `Files` now emit a warning
- **BUG-010**: Invalid `line_range` (`start > end`) now throws a parse error instead of degrading to glob-only match
- **BUG-011**: Missing external rules file now throws a parse error instead of degrading to glob-only match
- **BUG-012**: Empty decision files now emit a warning instead of silently succeeding

### ✨ New Features
- **`content_match_mode`**: Added `"any" | "all"` to `FileRule` — enables AND logic across `content_rules` within a single file rule. Default is `"any"` — no breaking change.

---

## Upgrade

### GitHub Action
```yaml
- uses: DecispherHQ/decision-guardian@v1.2.0
# or stay on the floating tag (already updated)
- uses: DecispherHQ/decision-guardian@v1
```

### CLI
```bash
npx decision-guardian@latest
```

---

**Full Changelog**: https://github.com/DecispherHQ/decision-guardian/compare/v1.1.0...v1.2.0
