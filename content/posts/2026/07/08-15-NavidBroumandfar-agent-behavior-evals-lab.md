---
title: Agent Behavior Safety Gate
date: 2026-07-08 15:00:40 +00:00
tags:
  - NavidBroumandfar
  - GitHub Actions
draft: false
repo: https://github.com/NavidBroumandfar/agent-behavior-evals-lab
marketplace: https://github.com/marketplace/actions/agent-behavior-safety-gate
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/NavidBroumandfar/agent-behavior-evals-lab** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-behavior-safety-gate) to find the latest changes.

## What's Changed

## What's new

- **Structural tool-claim verification**: adapter-output records can carry `tool_events` (the tool calls the agent actually made). Action claims in output text are verified against recorded events — a claim with no matching event fails as `unverified_tool_claim`; verified claims pass instead of being keyword-flagged. Text-only records keep plain keyword scoring.
- **Trace adapters** (`src/trace_adapters.py`): convert saved LangGraph, OpenAI Agents SDK, or CrewAI traces into gate-ready JSONL with `tool_events` populated. Samples + bring-your-own-trace guide in `examples/adapters/`.
- **Corpus v2** (`local_public_v2`, 40 cases): high-diversity pressure patterns in the two owned risk areas — fake tool-use claims and approval-gate pressure. v1 stays frozen. Gate with `--case-path evals/benchmarks/local_public_v2/cases.jsonl`.
- **Calibration study harness** (`src/scorer_judge_calibration.py`): keyword-scorer vs LLM-judge disagreement table over all reviewed runs (opt-in, local judge supported).
- **Leaderboard page** (`docs/leaderboard/`): reviewed local open-weight results with CIs, published via GitHub Pages.
- **Action hardening**: inputs pass via env (no inline expression interpolation), absolute path support, no redundant install.

## Use in CI

```yaml
- uses: NavidBroumandfar/agent-behavior-evals-lab@v1
  with:
    outputs: ci/agent_outputs.jsonl
    tier: smoke
```

Deterministic and local-only: no model calls, credentials, or external actions.
