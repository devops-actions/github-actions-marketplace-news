---
title: Test Adequacy Guard
date: 2026-04-29 14:41:23 +00:00
tags:
  - Ostico
  - GitHub Actions
draft: false
repo: https://github.com/Ostico/test-guard
marketplace: https://github.com/marketplace/actions/test-adequacy-guard
version: v1.4.2
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/Ostico/test-guard** to version **v1.4.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/test-adequacy-guard) to find the latest changes.

## Action Summary

Test-Guard is a GitHub Action designed to evaluate whether a pull request (PR) includes adequate test coverage, going beyond simple coverage percentages. It combines diff coverage analysis, heuristic test-file matching across multiple programming languages, and AI-powered per-file evaluation to provide a definitive pass/fail assessment for each modified file in a PR. By automating the detection of untested changes and offering precise insights, it streamlines code review processes and ensures robust testing practices.

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

## What's Fixed in v1.4.2

### 🔧 Token Budget Constants (Bug 1)

GitHub Models free-tier enforces an **8,000-token hard limit**, but the previous constants allowed batches up to ~7,991 tokens — right at the edge, causing sporadic `413 Request body too large` errors in CI.

**Fixed constants:**

| Constant | Before | After |
|----------|--------|-------|
| `_CHARS_PER_TOKEN` | 4 | **3** |
| `_INPUT_TOKEN_LIMIT` | 8,192 | **8,000** |
| `_SYSTEM_OVERHEAD_TOKENS` | 700 | **800** |
| `_SAFETY_FACTOR` | 0.80 | **0.85** |

New budget: **6,120 tokens / 18,360 chars** per batch — well within the 8,000-token limit.

### 🔄 413 Model Fallback (Bug 2)

When a batch still exceeds the token limit after truncation retry, the model loop now **falls back to the next model** (e.g. `gpt-4.1-mini` → `gpt-4.1-nano`) instead of stopping with a SKIP verdict. Previously only `403 Forbidden` triggered model escalation; now `413` does too.

---

## Changelog

- 🐛 `fix`: correct token budget constants for GitHub Models 8,000-token limit
- 🐛 `fix`: escalate to fallback model on 413 after truncation retry fails

**Full Changelog**: https://github.com/Ostico/test-guard/compare/v1.4.1...v1.4.2
