---
title: Audison Code Auditor
date: 2026-05-30 21:44:47 +00:00
tags:
  - wdnmd1265
  - GitHub Actions
draft: false
repo: https://github.com/wdnmd1265/Audison
marketplace: https://github.com/marketplace/actions/audison-code-auditor
version: V2,3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/wdnmd1265/Audison** to version **V2,3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/audison-code-auditor) to find the latest changes.

## Action Summary

This GitHub Action, *audison*, is designed to enhance the reliability of AI-generated code by automating a rigorous review process that involves multiple AI models. It employs two independent models for code review and a third model to adversarially attack the code, identifying vulnerabilities like security flaws or logical errors through cross-verification. This approach addresses the limitations of single-model reviews by uncovering blind spots and providing a transparent, evidence-based trust assessment, streamlining the process of ensuring code quality and security.

## What's Changed

## v2.3.3 (2026-05-30)

### New

**Community Infrastructure**
- CODE_OF_CONDUCT.md — Contributor Covenant 2.1
- SECURITY.md — Vulnerability reporting policy
- Issue templates upgraded to .yml form format
- config.yml — Disable blank issues

**GitHub Action — Published to Marketplace**
- action.yml — Composite action with 9 provider API Key inputs
- scripts/action_entry.py — JSON structured output
- Auto-detect PR changed files
- fail_on config (reject/review/never)
- PR comment + Job Summary dual-mode

### Usage

```yaml
- uses: wdnmd1265/audison@v2.3.3
  with:
    api_key_openai: ${{ secrets.OPENAI_API_KEY }}
    fail_on: reject
```
