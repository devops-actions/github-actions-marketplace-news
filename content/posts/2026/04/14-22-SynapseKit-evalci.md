---
title: EvalCI by SynapseKit
date: 2026-04-14 22:20:03 +00:00
tags:
  - SynapseKit
  - GitHub Actions
draft: false
repo: https://github.com/SynapseKit/evalci
marketplace: https://github.com/marketplace/actions/evalci-by-synapsekit
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/SynapseKit/evalci** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalci-by-synapsekit) to find the latest changes.

## Action Summary

EvalCI is a GitHub Action designed to automate the evaluation of pull requests using Language Model (LLM) quality gates. It discovers and executes test cases tagged with `@eval_case`, assesses their performance against user-defined criteria (e.g., minimum score thresholds), posts a formatted results table as a PR comment, and blocks merging if quality metrics fall below the specified thresholds. The action simplifies LLM testing workflows by integrating directly with GitHub Actions, requiring no external infrastructure, and supporting multiple LLM providers.

## What's Changed

## EvalCI v1.0.0

LLM quality gates for every PR — zero infra, 2-minute setup, works with any LLM provider.

### Features
- Run `@eval_case` suites automatically on every pull request
- Block merge if quality drops below threshold
- Post formatted results table as a PR comment (score, cost, latency per case)
- Works with 30+ LLM providers via SynapseKit
- Zero infrastructure — runs entirely in GitHub Actions

### Usage
```yaml
- uses: SynapseKit/evalci@v1
  with:
    path: tests/evals
    threshold: "0.80"
  env:
    OPENAI_API_KEY: ${{ secrets.OPENAI_API_KEY }}
```

### What's included
- Apache 2.0 license
- Issue templates (bug report, feature request)
- Discussion template
- PR template
- CONTRIBUTING.md, SECURITY.md, CHANGELOG.md

See [README](https://github.com/SynapseKit/evalci#readme) for full documentation.
