---
title: EvalView - AI Agent Testing
date: 2026-04-23 05:55:46 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.7.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Action Summary

EvalView is an open-source GitHub Action designed to detect and manage silent regressions in the behavior of AI agents, such as changes in tool usage, output quality, or decision-making processes. It automates tasks like tracking behavior drift, classifying changes, and facilitating safe auto-healing of issues, providing graded confidence levels instead of binary alarms to distinguish between provider/model updates and actual regressions. This tool empowers developers and teams to ensure their AI agents continue to function correctly and reliably without requiring extensive resources.

## What's Changed

Minor release — 33 commits since 0.6.2, 14 new user-facing features.

## Highlights

- **Aider CLI adapter** — drive Aider as an EvalView adapter
- **Autopr loop** — prod-incident → regression-test → PR, closed loop
- **Flake quarantine** — known-flaky tests don't block CI, with governance metadata
- **Release verdict + `evalview since`** — graded ship/hold verdict + change brief
- **`progress` / `drift` / `slack-digest`** — investigative loop commands
- **Noise confirmation gate + `--strict` bypass** — two-cycle rule before alerting
- **Slow-agent warning** — real wall-clock latency regression detection
- **Observability signals** — trust score, tool-loop, brittle-recovery, gaming checks
- **Improvement recommendation engine** — prioritized stabilize / tighten / add-check suggestions
- **Simulation harness + decision-rationale (schema v2)** — scripted multi-turn scenarios, machine-readable reasons
- **`snapshot --json`** — CI-friendly, hardened for edge cases
- **`check --explain`** — deep trace narrative for root-cause hypotheses
- **Token cost breakdown in `check`** — input/output/cached tokens + cost delta vs baseline
- **Skill-doctor char-budget refinement** — disable-model-invocation skills excluded

Plus ~10 fixes (mypy narrowing, dogfood hardening, slack-digest type errors, noise strict-bucket leak, snapshot `--json` CI hardening) and README/CLI doc improvements.

## Install

```bash
pip install evalview==0.7.0
# or
npm install evalview@0.7.0
```

Full changelog: https://github.com/hidai25/eval-view/blob/v0.7.0/CHANGELOG.md
