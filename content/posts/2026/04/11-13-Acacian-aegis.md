---
title: Aegis AI Agent Security Gate
date: 2026-04-11 13:41:03 +00:00
tags:
  - Acacian
  - GitHub Actions
draft: false
repo: https://github.com/Acacian/aegis
marketplace: https://github.com/marketplace/actions/aegis-ai-agent-security-gate
version: v0.9.4
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Acacian/aegis** to version **v0.9.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aegis-ai-agent-security-gate) to find the latest changes.

## Action Summary

Agent-Aegis is a governance layer for AI agents that provides a unified runtime to standardize and enforce essential governance features such as prompt-injection blocking, PII masking, policy enforcement, trust delegation, and tamper-evident auditing across 12 popular AI frameworks. It simplifies the implementation of these governance primitives by auto-instrumenting existing agent frameworks without requiring code changes, enabling developers to ensure compliance and security while reducing complexity. The action addresses challenges like inconsistent governance implementations and enhances trust, transparency, and control in AI-driven systems.

## What's Changed

## What's New

### \`aegis check drift\` CLI

Offline entropy-based drift detector for saved agent traces. Same signal that \`auto_instrument()\` exposes at runtime, now runnable on any JSONL trace from LangSmith, OTel, or custom loggers.

\`\`\`bash
aegis check drift --trace path/to/trace.jsonl
aegis check drift --trace trace.jsonl --baseline gpt-4o-retail.json
aegis check drift --trace trace.jsonl --json --strict
\`\`\`

**Privacy invariant**: reads only the \`tool_name\` field — never args, CoT, or prompts — so enterprise users can score prod traces without exfiltrating PII. Stdlib-only (Counter + math.log, no numpy).

### Research: 1,960 Tau-Bench Agent Trajectories

Measured tool distribution drift on [sierra-research/tau-bench](https://github.com/sierra-research/tau-bench/tree/main/historical_trajectories) public trajectories. **39.8% of 812 scored trajectories show measurable collapse** (Δ entropy ≥ 0.3 nats). Cross-model gap on the same retail task family: Sonnet 3.5 New 48.2% vs GPT-4o 28.1% (**1.7× ratio**, n=599). Distribution is bimodal — agents either stay open or fall off a cliff.

- Post: https://acacian.github.io/aegis/research/tau-bench-tool-distribution-drift/
- Reproduces in ~30 seconds on a laptop (stdlib only)

### 4 pillars of differentiation

Unlike LLM-as-judge approaches (Patronus, Braintrust) and fine-tuned classifiers (Galileo, Maxim), the \`check drift\` metric is simultaneously:

1. **Deterministic** — no second LLM judges the first, two runs give bit-identical results
2. **Privacy-preserving** — tool names only, no prompt content ever read
3. **Cross-model comparable** — normalized Δ on the same scale across GPT-4o and Sonnet
4. **30-second reproducible** — 120 lines of stdlib Python, no numpy or GPU

### Other

- 15 new tests in \`tests/cli/test_check.py\` including a hard privacy-invariant assertion (PII planted in fixture traces must never appear in any output)
- \`ScholarlyArticle\` JSON-LD schema for \`/research/*\` pages, sitemap tier 0.8, \`llms.txt\` canonical facts section for LLM crawlers

**Full Changelog**: https://github.com/Acacian/aegis/compare/v0.9.3...v0.9.4
