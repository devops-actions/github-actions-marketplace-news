---
title: Agentura Eval
date: 2026-04-03 13:45:11 +00:00
tags:
  - SyntheticSynaptic
  - GitHub Actions
draft: false
repo: https://github.com/SyntheticSynaptic/agentura
marketplace: https://github.com/marketplace/actions/agentura-eval
version: v0.6.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/SyntheticSynaptic/agentura** to version **v0.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentura-eval) to find the latest changes.

## Action Summary

Agentura is a GitHub Action designed to test and validate AI agent behavior by comparing expected outputs to actual performance on every pull request. It automates the detection of regressions, improvements, and other changes in areas like accuracy, quality, tool usage, and performance before merging, ensuring reliable updates and reducing the risk of unnoticed issues. Key capabilities include baseline comparisons, multi-turn conversation testing, and support for various evaluation strategies such as semantic similarity, LLM-based judgments, and cost/latency guardrails.

## What's Changed

## Runtime Contract Enforcement in `agentura trace`

Contracts now run in production, not just at PR time.

When `agentura.yaml` is present, `agentura trace` evaluates all 
contracts on every call and writes results to the trace JSON:
```bash
cd examples/triage-agent
agentura trace --input "45-year-old male, productive cough, fever 38.9C"
```

Output includes a `CONTRACT CHECK` section after the trace:
```
CONTRACT CHECK

clinical_action_boundary   PASS
confidence_floor           FAIL   escalation_required
                                  confidence 0.43 < threshold 0.75
```

- `contract_results` written to trace JSON for audit trail
- `--no-contracts` flag to opt out per call
- Exits `1` only on `hard_fail` — `escalation_required` and 
  `soft_fail` do not block execution
- Works without `--agent` if the current directory config 
  resolves the agent

---

## PCCP Readiness Signals in `agentura report`

The placeholder PCCP statement is replaced with a real signals 
section computed from local eval evidence:

| Signal | Status | Detail |
|---|---|---|
| Eval coverage | PASS | 47 unique cases in period |
| Baseline stability | PASS | No case regressions detected |
| Contract enforcement | PASS | Contracts active, 0 hard_fail |
| Drift status | WARN | Reference snapshot exists, drift within threshold |
| Model version consistency | PASS | Same model across all runs |

Each signal shows PASS / WARN / FAIL with a one-line explanation. 
If a signal cannot be computed from available evidence, it shows 
"Insufficient data" rather than guessing.

---

## Markdown Export for `agentura report`
```bash
# existing HTML (unchanged)
agentura report --since 2026-03-01 --out audit.html

# new markdown export
agentura report --since 2026-03-01 --format md --out audit.md
```

The markdown report contains the same sections as HTML — eval 
record, contract summary, PCCP signals, drift table, trace sample, 
system record. Drift sparkline replaced with a plain text table. 
Renders correctly on GitHub.

Useful for: attaching to PRs, sharing in Slack, committing audit 
records to a governance repo.
