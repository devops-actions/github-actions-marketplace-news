---
title: Agentura Eval
date: 2026-03-27 21:44:06 +00:00
tags:
  - SyntheticSynaptic
  - GitHub Actions
draft: false
repo: https://github.com/SyntheticSynaptic/agentura
marketplace: https://github.com/marketplace/actions/agentura-eval
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/SyntheticSynaptic/agentura** to version **v0.3.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentura-eval) to find the latest changes.

## Action Summary

Agentura is a CI/CD evaluation platform designed to test AI agents, ensuring consistent and accurate performance before deployment to production. It automates the detection of regressions, evaluates agents across various scenarios (e.g., multi-turn conversations, tool usage, semantic accuracy), and generates governance-ready audit reports for compliance. The tool supports multiple frameworks, is open-source, and integrates seamlessly with GitHub for streamlined testing workflows.

## Release notes

# Agentura v0.3.0 — Agent Governance Runtime

This release ships four new capability layers that transform Agentura 
from a pre-deployment eval tool into a full agent governance runtime 
covering the complete AI lifecycle: before you ship, at runtime, after 
execution, and over time.

---

### What's new

#### 🔀 Heterogeneous consensus runtime (`agentura consensus`)
Route any agent input to multiple model families simultaneously and 
vote on the best response. Disagreement between models is surfaced as 
an explicit safety flag rather than silently discarded.

The key design decision: consensus only works if the models are 
genuinely different. Running three instances of the same model catches 
nothing — they share the same failure modes. Agentura's consensus 
runner is designed for heterogeneous model families (Anthropic, OpenAI, 
Google) with different training distributions and different systematic 
errors.
```yaml
consensus:
  models:
    - provider: anthropic
      model: claude-sonnet-4-6
    - provider: openai
      model: gpt-4o
    - provider: google
      model: gemini-pro
  agreement_threshold: 0.80
  on_disagreement: flag
```

- Majority vote for factual outputs, centroid selection for open-ended
- Configurable agreement threshold with disagreement flagging
- Degraded-mode handling when one provider is unavailable
- Full integration with eval suites via `type: consensus` strategy

---

#### 🔍 Production trace layer (`agentura trace`)
Every agent action, tool call, data access, and decision is logged to 
a structured trace file. Traces are the audit record that connects what 
your agent was supposed to do with what it actually did.
```bash
agentura trace --agent ./agent.ts --input "summarize patient history"
agentura trace diff  
```

- Structured JSON trace schema with tool call records and timing
- PII redaction via `--redact` flag for sensitive environments
- Eval failures automatically captured as traces for review
- `trace diff` computes semantic similarity and tool call delta between 
  any two runs

---

#### 📊 Frozen reference snapshots and drift detection 
(`agentura reference`)
Pin a reference version of your agent and detect behavioral drift 
against it across model upgrades, prompt changes, and policy updates.
```bash
agentura reference snapshot --label "v1.0-pre-prompt-change"
agentura reference diff --against v1.0-pre-prompt-change
agentura run --local --drift-check
```

- Semantic drift score, tool call drift, and latency delta vs reference
- Configurable thresholds that fail CI when drift exceeds bounds
- Drift history table across all reference comparisons
- Manifest integration: drift summary written to every run's audit record
