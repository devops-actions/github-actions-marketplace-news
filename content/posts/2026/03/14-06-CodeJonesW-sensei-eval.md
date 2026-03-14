---
title: sensei-eval
date: 2026-03-14 06:05:23 +00:00
tags:
  - CodeJonesW
  - GitHub Actions
draft: false
repo: https://github.com/CodeJonesW/sensei-eval
marketplace: https://github.com/marketplace/actions/sensei-eval
version: v0.8.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/CodeJonesW/sensei-eval** to version **v0.8.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sensei-eval) to find the latest changes.

## Action Summary

The `sensei-eval` GitHub Action and TypeScript library streamline the evaluation of AI-generated educational content by performing deterministic checks and leveraging LLM scoring. It automates the detection of content quality regressions in CI workflows, enabling teams to maintain consistent prompt quality. Key features include baseline generation, regression detection, deterministic quick checks, and integration with CI pipelines to ensure scalable and cost-efficient quality control.

## Release notes

## Summary
- **Judge usage tracking**: `Judge.score()` now returns optional `usage` (`input_tokens`, `output_tokens`) alongside score results. `createJudge` passes through `response.usage` from the Anthropic API.
- **EvalResult aggregation**: `EvalRunner` aggregates token usage across all judge-scored criteria (including inline rubrics) into `EvalResult.usage`. Omitted when no judge calls are made (e.g. `quickCheck`).
- **Default model change**: `createJudge` default model changed from `claude-sonnet-4` to `claude-haiku-4-5-20251001` — better default for cost-sensitive eval workloads. Callers can still override via `opts.model`.

## Test plan
- [x] Existing judge tests updated with `usage` in mock responses
- [x] New runner tests verify usage aggregation from LLM criteria
- [x] New runner test verifies usage aggregation from inline rubrics
- [x] New runner test verifies `usage` is undefined for deterministic-only evals
- [x] All 216 tests pass

🤖 Generated with [Claude Code](https://claude.com/claude-code)
