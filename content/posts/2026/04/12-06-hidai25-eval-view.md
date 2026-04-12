---
title: EvalView - AI Agent Testing
date: 2026-04-12 06:25:34 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.6.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.6.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Action Summary

EvalView is an open-source GitHub Action designed to detect silent regressions in AI agents by monitoring and analyzing changes in their behavior, tool usage, and outputs. It automates tasks such as behavior snapshotting, drift detection, change classification, and safe auto-healing, enabling developers to identify and address issues caused by model updates or system changes before they impact users. Its key capabilities include tracking behavior consistency, distinguishing between provider/model drift and system regressions, and streamlining the evaluation-review-deployment cycle for AI agents.

## What's Changed

## What's new

### `evalview model-check` — closed-model drift detection

Detect silent drift in closed-weight models (Anthropic in v1; OpenAI/Mistral/Cohere in v1.1) by running a small structural canary suite directly against the provider.

- Two-anchor comparison (reference + previous)
- Dry-run cost estimation
- Per-provider fingerprint strength labeling
- Custom suites via `--suite`
- Suite-hash enforcement for rotation safety
- Pinned `temperature=0.0` / `top_p=1.0` for stable drift signal

### Bundled canary suite

15 structural prompts across four scorer families: tool choice, JSON schema, refusal, exact match. Versioned, hash-pinned, rotated via held-out companion suite.

### New internals

- `DriftKind` + `DriftConfidence` enums — unified drift taxonomy
- `model_snapshots` — timestamped store with auto-pin first-run reference and pruning
- `model_check_scoring` — pure-function structural scorers (no LLM judge dependency)
- `model_provider_runner` — single-shot completions with per-provider fingerprint capture
- `anthropic` adapter registered in `adapter_factory`
- `TraceDiff` gains `drift_kind` and `drift_confidence` fields

### Tests

80 net new tests covering snapshot store (16), structural scorers (29), canary suite loader (13), and command integration (22) — all mocked, no real API calls in CI.

---

**Install / upgrade:**

```bash
pip install evalview==0.6.2
```

**Full changelog:** https://github.com/hidai25/eval-view/blob/main/CHANGELOG.md
