---
title: Agentura Eval
date: 2026-04-06 14:04:58 +00:00
tags:
  - SyntheticSynaptic
  - GitHub Actions
draft: false
repo: https://github.com/SyntheticSynaptic/agentura
marketplace: https://github.com/marketplace/actions/agentura-eval
version: v0.7.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/SyntheticSynaptic/agentura** to version **v0.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentura-eval) to find the latest changes.

## Action Summary

Agentura is a GitHub Action designed to automatically test and validate the behavior of AI agents during development. It identifies regressions or improvements in the agent's performance by comparing its behavior against predefined baselines after every code change, ensuring issues like accuracy drops, behavior changes, or performance regressions are caught before merging. The action supports various evaluation strategies, such as semantic similarity, conversational consistency, and performance monitoring, and provides detailed results directly in pull requests to streamline testing and maintain AI reliability.

## What's Changed

## Cross-Run Trend Analysis (`agentura trend`)

Per-run contract evaluation catches failures in the moment. This release
adds a layer that catches slow degradation across runs — the kind that
per-run gates miss entirely.
```bash
agentura trend --window 20
```
```
RUN TREND  (last 20 runs)

agent_id        triage-agent
direction       degrading  ▼
slope           -2.3% / run
regression      YES

run                  date         pass_rate  flags
run_abc123...        2026-03-15   0.95       0
run_def456...        2026-03-22   0.91       1
run_ghi789...        2026-03-29   0.80       3

⚠️  Pass rate trending down. Run `agentura report` for full audit.
```

Gate CI on trend regression:
```bash
agentura trend --window 20 --fail-on-regression
# exits 1 when slope < -0.01/run
```

The trend section also appears automatically in `agentura report` —
inline SVG sparkline in HTML, plain text table in markdown.

---

## PCCP Readiness Signals now slope-powered

The PCCP Readiness Signals section in `agentura report` previously
derived pass rate status from a single run. It now uses the OLS slope
across your run history:

| Slope | Signal |
|---|---|
| ≥ 0 | PASS |
| < -0.005 | WARN |
| < -0.01 | FAIL |

This makes the signal meaningful to a compliance team: not just
"did it pass today" but "is it getting worse."

---

## PDF Export for `agentura report`
```bash
agentura report --format pdf --out audit.pdf
```

Renders the existing HTML report to PDF via headless Chromium. A4
format, print backgrounds, 15mm margins. Same sections as HTML —
eval record, contract summary, trend analysis, PCCP signals, trace
sample, system record.

If Chromium is not installed:
```bash
npx puppeteer browsers install chrome
```

---

## Fixes

- **punycode DEP0040** — root cause resolved via groq-sdk upgrade
- **llm_judge default model** — updated to `claude-haiku-4-5-20251001`
- **Groq semantic_similarity** — now fails with a clear error instead
  of silently returning incorrect scores:
  `"Groq does not support embeddings. Use openai, anthropic, or gemini
  for semantic_similarity, or switch to fuzzy_match."`
