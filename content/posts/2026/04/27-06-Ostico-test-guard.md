---
title: Test Adequacy Guard
date: 2026-04-27 06:36:42 +00:00
tags:
  - Ostico
  - GitHub Actions
draft: false
repo: https://github.com/Ostico/test-guard
marketplace: https://github.com/marketplace/actions/test-adequacy-guard
version: v1.4.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Ostico/test-guard** to version **v1.4.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/test-adequacy-guard) to find the latest changes.

## Action Summary

Test-Guard is a GitHub Action designed to evaluate whether a pull request (PR) includes adequate test coverage for the changes made, going beyond basic code coverage percentages. It automates the process by combining diff coverage analysis, heuristic test-file matching across multiple programming languages, and AI-powered per-file evaluation to provide a definitive pass/fail verdict on testing adequacy. This action helps teams ensure robust testing practices and streamline code review by identifying untested or inadequately tested changes.

## What's Changed

## 🧪 Test-Guard

**A GitHub Action that gates pull requests on test adequacy.** Three layers — coverage analysis, heuristic file matching across 19 languages, and AI-powered per-file evaluation — so untested code stops slipping through review.

### Quick Start

```yaml
- uses: ostico/test-guard@v1
  with:
    coverage-file: coverage.xml
```

No external API keys needed — uses the GitHub Models API with your existing `GITHUB_TOKEN`.

---

## What's New in v1.4

### 🎯 TL;DR Verdict at the Top
Reports now open with a one-line outcome so you know the result instantly:

```
✅ PASS — All changes are adequately tested.
⚠️ WARNING — Test coverage has minor gaps — review recommended.
❌ FAIL — Insufficient test coverage — tests must be added or updated.
```

### 🏷️ Human-Readable Layer Names
No more internal jargon. Reports now say **Coverage Analysis**, **Test File Matching**, and **Per-File Evaluation** instead of Layer 1/2/3.

### 🧹 Cleaner Pipeline
- Non-source files (configs, docs, lockfiles) are pre-filtered before reaching Layer 1 — no more vacuous "100% coverage" on files that were never in the coverage report.
- Honest messaging when no source files appear in coverage data.

### ✂️ Concise AI Reasons
AI verdicts now produce short, actionable reasons (max 15 words per file) instead of lengthy explanations.

### 💚 Sponsor Support
GitHub Sponsors and PayPal donation links added.

---

## Changelog

- ✨ `feat(report)`: TL;DR outcome line at top of report
- ✨ `feat(report)`: human-readable layer names, dropped "(advisory)" suffix
- ✨ `feat(pipeline)`: pre-filter non-source files before Layer 1
- ✨ `feat(report)`: honest L1 message when no source files in coverage
- ✨ `feat(prompt)`: concise AI reasons (max 15 words)
- 📝 `docs(readme)`: updated example output for v1.4 format
- 💚 `docs`: GitHub Sponsors + PayPal donation links

**Full Changelog**: https://github.com/Ostico/test-guard/compare/v1.3.5...v1.4.1
