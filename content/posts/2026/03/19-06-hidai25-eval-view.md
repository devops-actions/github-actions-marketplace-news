---
title: EvalView - AI Agent Testing
date: 2026-03-19 06:01:03 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.5.3
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.5.3**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Action Summary

EvalView is a GitHub Action designed for regression testing AI agents by automating the detection of behavioral changes and performance degradations. It captures and compares agent outputs, tool usage, and execution sequences against golden baselines, allowing developers to identify silent regressions such as altered tool paths or reduced output quality. This action ensures broken agents are caught before production, providing robust monitoring and traceability.

## Release notes

## HTML Report Redesign

**Overview tab** — Compact KPI strip replaces 6-card hero grid. Removed duplicate Agent Model/Token Usage cards and Distribution donut. Full-width score chart. No-judge notice when hallucination/safety checks are skipped.

**Execution Trace tab** — Adaptive collapse: ≤4 tests all expanded, 5+ only first. Larger chevron buttons.

**Diffs tab** — Collapsible items (passed collapsed, changes expanded). Removed duplicate tool tags. Lazy-rendered trajectory diagrams behind toggle. Baseline→current score display (`86.0 → 87.5 +1.5`). Tooltips on lexical/semantic similarity.

**Timeline tab** — KPI summary strip. Side-by-side latency + cost charts. Color-coded bars by test.

**All tabs** — Larger Mermaid diagram fonts. Removed SVG max-height cap.
