---
title: tokentoll LLM Cost Diff
date: 2026-05-04 14:45:34 +00:00
tags:
  - Jwrede
  - GitHub Actions
draft: false
repo: https://github.com/Jwrede/tokentoll
marketplace: https://github.com/marketplace/actions/tokentoll-llm-cost-diff
version: v0.6.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Jwrede/tokentoll** to version **v0.6.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tokentoll-llm-cost-diff) to find the latest changes.

## Action Summary

**tokentoll** is a CLI tool and GitHub Action designed to analyze code for Large Language Model (LLM) API calls, estimate their associated costs, and highlight cost impacts of code changes directly in pull requests or the terminal. It helps developers identify potential cost implications, such as increased API expenses due to model changes or new calls, during the code review process. Key features include static analysis of various LLM SDKs, cost estimation, and detailed cost comparisons between commits or branches.

## What's Changed

## Summary

Reverts the v0.6.0 special-case that skipped `AzureChatOpenAI(deployment_name=...)` calls. The skip was inconsistent: every other dynamic model gets a per-SDK default with a `(default)` label, only Azure was being silently dropped. v0.6.1 restores symmetry and adds an opt-in for users who want stricter behavior.

## Changes

### New: `skip_dynamic_models` config option

Set in `.tokentoll.yml` to suppress cost estimates for any call whose model name cannot be resolved statically:

```yaml
skip_dynamic_models: true
```

Also supported as a per-path override:

```yaml
overrides:
  - path: src/azure/
    skip_dynamic_models: true
```

When enabled, dynamic-model calls are still detected and listed but reported with no cost rather than priced against a default.

### LangChain detector

`AzureChatOpenAI(deployment_name=...)` and `AzureChatOpenAI(azure_deployment=...)` calls without an explicit `model=` argument now flow through the standard dynamic-default path (priced as `gpt-4o (default)` unless overridden). Use the new `skip_dynamic_models` option to suppress these.

## Upgrade

```yaml
- uses: Jwrede/tokentoll@v0.6.1
```

```bash
pip install --upgrade tokentoll
```
