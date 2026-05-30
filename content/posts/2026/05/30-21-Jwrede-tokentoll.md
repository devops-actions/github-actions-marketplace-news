---
title: tokentoll LLM Cost Diff
date: 2026-05-30 21:46:17 +00:00
tags:
  - Jwrede
  - GitHub Actions
draft: false
repo: https://github.com/Jwrede/tokentoll
marketplace: https://github.com/marketplace/actions/tokentoll-llm-cost-diff
version: v0.8.3
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/Jwrede/tokentoll** to version **v0.8.3**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tokentoll-llm-cost-diff) to find the latest changes.

## Action Summary

**tokentoll** is a GitHub Action designed to prevent unexpected cost increases associated with Large Language Model (LLM) API usage. It statically analyzes Python, JavaScript, and TypeScript code in pull requests to detect LLM API calls, evaluates them against user-defined cost policies, and provides a PASS/WARN/FAIL verdict along with detailed feedback. This tool automates the monitoring of LLM-related expenses, ensuring budget adherence and preventing costly regressions from being merged into production.

## What's Changed

## Bug fix

Refactors that shifted call sites by more than 10 lines were reported as REMOVED plus ADDED pairs even when the call shape did not change. On gpt-researcher's open PRs this produced 5 to 10 noisy entries netting to zero monthly delta, which is the worst-case PR comment.

The diff engine now does an identity-shape pre-pass that pairs calls with matching `sdk`, `call_type`, `model`, `model_is_literal`, `max_tokens`, and `raw_expression` in order, regardless of line distance. The existing line-proximity matcher still runs for remaining calls so model swaps within plus or minus 10 lines still surface as MODIFIED.

## Verified against gpt-researcher

Five open PRs that previously surfaced phantom +/- noise are now clean. Two of them (#1671, #1756) correctly report a small handful of genuinely removed call sites at the end of `base.py`.

## Upgrade

```bash
pip install -U tokentoll
```

GitHub Action consumers on `@v0.8.3` or `@main` pick up the new pin automatically.
