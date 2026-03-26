---
title: Agentura Eval
date: 2026-03-26 22:02:36 +00:00
tags:
  - SyntheticSynaptic
  - GitHub Actions
draft: false
repo: https://github.com/SyntheticSynaptic/agentura
marketplace: https://github.com/marketplace/actions/agentura-eval
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/SyntheticSynaptic/agentura** to version **v0.2.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentura-eval) to find the latest changes.

## Action Summary

Agentura is a CI/CD evaluation platform designed for testing and validating AI agents. It helps identify and prevent regressions before deployment by providing detailed insights into test case failures, improvements, and performance metrics using various evaluation strategies such as semantic similarity scoring, LLM-based judgment, and tool use validation. The platform supports self-hosting, works with any agent framework, and automates regression tracking, ensuring reliability and compliance in AI system development.

## Release notes

## What's new in v0.2.0

### Regression Diff
See exactly which cases flipped between runs — not just aggregate scores.
Baseline snapshots stored in `.agentura/baseline.json`.

### Semantic Similarity Scorer
Stop failing cases that are semantically correct.
Auto-detects OPENAI_API_KEY, ANTHROPIC_API_KEY, or GEMINI_API_KEY.
Falls back to token overlap when no key is available.

### LLM Judge Reliability
Run the judge N times and take majority vote.
Agreement rate reported per suite — low agreement triggers a warning.

### Tool-Call Eval Strategy
Test whether your agent called the right tool with the right arguments.
Not just what it said — what it did.

### Multi-Turn Eval Support
Test conversational agents across full dialogue threads.
Score specific turns, pass full history to the agent.

### Dataset Versioning and Audit Manifests
`--locked` mode exits 1 if datasets changed since baseline.
Every run writes `.agentura/manifest.json` with dataset hashes,
CLI version, git sha, and per-suite results.
Designed for regulated environments requiring audit trails.

## Install

npx agentura@latest run --local

## Upgrade

npm install -g agentura@latest
