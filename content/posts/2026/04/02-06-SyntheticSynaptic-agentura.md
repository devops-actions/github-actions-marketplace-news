---
title: Agentura Eval
date: 2026-04-02 06:32:43 +00:00
tags:
  - SyntheticSynaptic
  - GitHub Actions
draft: false
repo: https://github.com/SyntheticSynaptic/agentura
marketplace: https://github.com/marketplace/actions/agentura-eval
version: v0.5.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/SyntheticSynaptic/agentura** to version **v0.5.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentura-eval) to find the latest changes.

## Action Summary

Agentura is a GitHub Action designed to test and validate the performance of AI agents by comparing their behavior against predefined baselines during each pull request. It automates the detection of regressions, improvements, and deviations in areas like accuracy, tone, tool usage, and performance, ensuring that changes to code, prompts, or model updates do not negatively impact the agent's behavior. Key capabilities include customizable evaluation strategies, multi-turn conversational testing, and integration with GitHub for seamless feedback on pull requests.

## What's Changed

## Confidence Propagation Across Multi-Turn Evals

Multi-turn evals now track accumulated confidence across conversation 
turns instead of scoring each turn independently. A failure early in 
a conversation degrades the confidence score for subsequent turns — 
which is how real agent reliability actually compounds.

This ships as `heuristic_v1` and is applied automatically to all 
multi-turn eval runs. No config changes required.

How it works:
```
Turn 1: score 0.95 → confidence 0.95
Turn 2: score 0.80 → confidence 0.76 (carries forward)
Turn 3: hard_fail → hard_fail multiplier ×0.50 → confidence 0.38
         → escalation_required fires
```

When accumulated confidence drops below the contract threshold, 
`escalation_required` fires on the run — even if individual turns 
would have passed in isolation.

---

## Contract Violations in Audit Report

`agentura report` now includes a **Contract Summary** section.

Every contract that was active during the eval period appears in the 
report with:

- Contract name and version
- Assertion results (pass / fail / escalation_required)
- Observed values that triggered violations
- Failure mode applied

This closes the loop between `agentura run` and `agentura report` — 
contracts now produce evidence that compliance teams can read, not 
just CI gates that block merges.
```bash
agentura report --since 2026-03-01 --out audit.html
```

The contract summary section appears after the eval record and 
before the drift report.

---

## Realistic Triage Demo

The triage demo has been updated with natural language inputs that 
reflect how a real clinical triage agent is actually prompted — not 
toy fixture strings.
```bash
cd examples/triage-agent
npx agentura run --local
```

The demo fires:
- One `hard_fail` on an out-of-scope action
- One `escalation_required` when accumulated confidence 
  drops below threshold across turns

The demo is the fastest way to understand how contracts and 
confidence propagation interact.

---

## Provider Support

All five providers are now consistent across every eval surface:

| Provider | `llm_judge` | `semantic_similarity` | `consensus` | `trace` |
|---|---|---|---|---|
| Anthropic | ✅ | ✅ | ✅ | ✅ |
| OpenAI | ✅ | ✅ | ✅ | ✅ |
| Gemini | ✅ | ✅ | ✅ | ✅ |
| Groq | ✅ | ✅ | ✅ | ✅ |
| Ollama | ✅ | ✅ | ✅ | ✅ |

---

**Full changelog:** [CHANGELOG.md](CHANGELOG.md)

**Upgrading from 0.4.x:** No breaking changes. All existing 
`agentura run`, `trace`, `consensus`, and `report` workflows 
are unchanged. Confidence propagation and contract reporting 
are additive.
