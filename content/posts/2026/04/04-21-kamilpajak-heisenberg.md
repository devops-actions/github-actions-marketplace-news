---
title: Heisenberg CI Failure Analysis
date: 2026-04-04 21:41:06 +00:00
tags:
  - kamilpajak
  - GitHub Actions
draft: false
repo: https://github.com/kamilpajak/heisenberg
marketplace: https://github.com/marketplace/actions/heisenberg-ci-failure-analysis
version: v0.6.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/kamilpajak/heisenberg** to version **v0.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/heisenberg-ci-failure-analysis) to find the latest changes.

## Action Summary

Heisenberg is a GitHub Action that uses AI to analyze CI/CD failures, focusing on Playwright and other workflows. It automates root-cause analysis by reading logs, artifacts, traces, and source code to identify the reasons behind test failures, pinpoint bug locations, and suggest actionable fixes. By clustering errors and providing detailed structured reports, it streamlines debugging and accelerates issue resolution in continuous integration pipelines.

## What's Changed

## What's New

### Dynamic Pattern Recognition (Phase 2)
Vector similarity search for historical failure patterns using pgvector. Auto-embeds RCAs on analysis creation, enables "similar to analysis #X" queries and free-text pattern search.

### Confidence Calibration
Post-LLM pipeline that applies hard caps when the diagnosis contradicts deterministic signals (blast radius, diff-fault intersection, hidden infra evidence). Reduces false positives when root cause is external to the repository.

### Run Status Validation
Prevents analyzing in-progress CI runs. Hybrid approach: allows in-progress runs with completed failed jobs (Azure manual approval stages, GitHub matrix partial failures).

### Eval Framework
- Multi-provider eval support (GitHub + Azure)
- Redesigned ground truth model with confidence ranges and partial matching
- Ground truth mining script with LLM verification

See [CHANGELOG.md](CHANGELOG.md) for full details.
