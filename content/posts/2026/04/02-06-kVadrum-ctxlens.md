---
title: ctxlens Context Check
date: 2026-04-02 06:33:37 +00:00
tags:
  - kVadrum
  - GitHub Actions
draft: false
repo: https://github.com/kVadrum/ctxlens
marketplace: https://github.com/marketplace/actions/ctxlens-context-check
version: v1.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/kVadrum/ctxlens** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ctxlens-context-check) to find the latest changes.

## Action Summary

**ctxlens** is a token budget analyzer designed to help developers optimize their AI model context usage by analyzing token consumption across codebases. It automates the identification of token-heavy files, evaluates compatibility with various model context limits, and provides actionable insights like token savings from changes or removing comments. Fully offline and privacy-focused, it supports tasks such as real-time monitoring, gating pull requests based on token budgets, and comparing tokenizers for different models.

## What's Changed

## Patch

- Prettified timestamps across all output formats (`04.01.2026 | 14:22:00` instead of ISO 8601)
- Split GitHub Action into separate install/run steps for clear error attribution
- Excluded `action.yml` and `.github/` from npm package via `.npmignore`

## Install

```bash
npx ctxlens scan
```
