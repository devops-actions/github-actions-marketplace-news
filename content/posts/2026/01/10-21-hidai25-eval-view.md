---
title: EvalView - AI Agent Testing
date: 2026-01-10 21:23:53 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.2.0
dependentsNumber: "?"
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.2.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Action Summary

EvalView is a GitHub Action designed to detect and prevent regressions in AI agents during development and CI workflows. It identifies issues such as changes in tool usage, output discrepancies, increased costs, and latency spikes by comparing current agent behavior against a baseline. This tool automates regression testing, ensuring that agents maintain consistent performance and functionality before deployment.

## Release notes

## What's New

This release introduces flexible sequence evaluation modes, industry-standard reliability metrics, and test suite categorization - inspired by [Anthropic's agent evaluation best practices](https://www.anthropic.com/research/agent-eval).

### Flexible Sequence Evaluation

The sequence evaluator was too strict - exact matching penalized agents for finding valid alternative paths. Now defaults to **subsequence matching** which verifies critical tools appear in order without failing on extras.

Three modes available:
- `subsequence` (default): Expected tools in order, extras allowed
- `exact`: Legacy strict matching  
- `unordered`: Just check tools were called

```yaml
# Per-test override
adapter_config:
  sequence_mode: unordered
```

### Reliability Metrics: pass@k & pass^k

Industry-standard metrics now in statistical summaries:

- **pass@k**: "Will it work if I give it a few tries?" (probability of at least 1 success)
- **pass^k**: "Will it work reliably every time?" (probability of ALL trials succeeding)

```
Reliability Metrics:
  pass@10:       99.9% (usually finds a solution)
  pass^10:       2.8% (unreliable)
```

### Suite Types: Capability vs Regression

Tag tests to distinguish expected failures from critical regressions:

```yaml
name: complex-reasoning
suite_type: capability  # Expected to fail sometimes (hill climbing)

name: login-flow  
suite_type: regression  # Must pass (safety net)
```

Console output now shows:
- `🚨 REGRESSION` for regression test failures (red alert)
- `⚡ CLIMBING` for capability test failures (expected, yellow)

---

**Full Changelog**: https://github.com/hidai25/eval-view/compare/v0.1.5...v0.2.0
