---
title: tokentoll LLM Cost Diff
date: 2026-05-29 22:47:59 +00:00
tags:
  - Jwrede
  - GitHub Actions
draft: false
repo: https://github.com/Jwrede/tokentoll
marketplace: https://github.com/marketplace/actions/tokentoll-llm-cost-diff
version: v0.8.2
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/Jwrede/tokentoll** to version **v0.8.2**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tokentoll-llm-cost-diff) to find the latest changes.

## Action Summary

**Summary:**  
The `tokentoll` GitHub Action acts as a cost control gate for large language model (LLM) API usage in Python, JavaScript, and TypeScript projects. It analyzes pull requests for LLM-related code changes, evaluates them against user-defined cost policies, and posts a PASS/WARN/FAIL verdict directly on the PR, optionally blocking merges for policy violations. This automates the detection and prevention of LLM cost regressions, helping teams maintain budget compliance and control API usage costs in CI/CD workflows.

## What's Changed

Two small fixes surfaced while building the [live demo repo](https://github.com/Jwrede/tokentoll-demo).

## Fixes

### PASS verdict is now visible on configured-policy projects

Previously the PASS verdict was silent: a PR that satisfied every budget got a quiet cost-diff comment with no indication the policy gate had even run. That looked the same as a project with no policy at all.

Now: when `.tokentoll.yml` has a policy block, PASS renders a verdict banner with a positive subtitle:

```md
## tokentoll verdict: PASS

All configured budgets and rules were satisfied.

---
```

When no policy is configured, the comment stays neutral (no banner). FAIL behavior is unchanged.

### `calls-per-month` action input no longer silently overrides `.tokentoll.yml`

The action's input previously defaulted to `\"1000\"`, which always overrode the `calls_per_month` setting in `.tokentoll.yml`. Workflows that set the value explicitly were fine; workflows that relied on the YAML for traffic assumptions were quietly using 1000 instead.

Now the default is empty and the CLI flag is only passed when the input is non-empty. Workflows that explicitly set `calls-per-month` keep working unchanged.

## Tests

145 passing (was 141). Four new tests cover the verdict-rendering paths.

## Upgrade

```bash
pip install --upgrade tokentoll
```

```yaml
- uses: Jwrede/tokentoll@v0.8.2
```

No schema or CLI changes.
