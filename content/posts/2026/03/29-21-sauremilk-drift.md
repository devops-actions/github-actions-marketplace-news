---
title: Drift — Architectural Erosion Check
date: 2026-03-29 21:50:23 +00:00
tags:
  - sauremilk
  - GitHub Actions
draft: false
repo: https://github.com/sauremilk/drift
marketplace: https://github.com/marketplace/actions/drift-architectural-erosion-check
version: v0.10.7
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sauremilk/drift** to version **v0.10.7**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/drift-architectural-erosion-check) to find the latest changes.

## Action Summary

Drift is a deterministic static analysis tool designed to identify architecture erosion caused by AI-generated code in Python repositories. It automates the detection of issues like pattern fragmentation, boundary violations, and structural hotspots that weaken codebases while passing tests. By providing actionable insights and a "drift score," it helps teams maintain structural integrity and improve code quality in AI-accelerated environments without relying on large language models (LLMs).

## What's Changed

Compact JSON release for agent/CI efficiency.

Highlights:
- Added --compact mode for drift analyze --format json and drift check --format json.
- Added deduplicated indings_compact and decision-first compact_summary in JSON output.
- Updated API output docs and JSON contract tests.
- Included conda recipe and telemetry/api updates from current workspace changes.
