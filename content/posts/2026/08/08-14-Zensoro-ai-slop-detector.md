---
title: AI Slop PR Guard
date: 2026-08-08 14:19:49 +00:00
tags:
  - Zensoro
  - GitHub Actions
draft: false
repo: https://github.com/Zensoro/ai-slop-detector
marketplace: https://github.com/marketplace/actions/ai-slop-pr-guard
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action uses pure regular expression structural features to score PR/Issue bodies, flagging suspected AI-generated content with a label and scored comment. It labels without automatically closing issues unless opted in. The action is designed to reduce false positives by subtracting human signals such as referencing issue numbers or short bodies.
---


Version updated for **https://github.com/Zensoro/ai-slop-detector** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-slop-pr-guard) to find the latest changes.

## Action Summary

This GitHub Action uses pure regular expression structural features to score PR/Issue bodies, flagging suspected AI-generated content with a label and scored comment. It labels without automatically closing issues unless opted in. The action is designed to reduce false positives by subtracting human signals such as referencing issue numbers or short bodies.

## What's Changed

## v1.0.0 — AI Slop PR Guard

**The $0 AI-slop guard for open-source maintainers.** Pure regex, zero dependencies, label-only by default.

### What it does
- Scores PR/Issue bodies on open; flags probable AI-generated slop with a label + scored comment
- Never auto-closes unless you opt in; members/bots never flagged

### Reliability
- API retry/backoff on 429/5xx, graceful non-fatal error handling
- Short bodies (<20 chars) skipped

### Accuracy
- Human signals (issue references) subtract from the score — fewer false positives

### Docs
- Real demo screenshot, FAQ, bilingual README
- Issue/PR templates + GitHub Sponsors funding

### Signals (measured on GH Archive 2025-07/08)
| Signal | AI PRs | Human PRs |
|---|---|---|
| `## Test` headers | 78.3% | 0.8% (~98x) |
| `##` section headers | 95.1% | 8.2% (~11.6x) |
| ✅ emoji | 17.9% | 0% |

### Install
```yaml
- uses: Zensoro/ai-slop-detector@v1
```

