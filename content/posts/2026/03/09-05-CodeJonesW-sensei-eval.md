---
title: sensei-eval
date: 2026-03-09 05:57:59 +00:00
tags:
  - CodeJonesW
  - GitHub Actions
draft: false
repo: https://github.com/CodeJonesW/sensei-eval
marketplace: https://github.com/marketplace/actions/sensei-eval
version: v0.5.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/CodeJonesW/sensei-eval** to version **v0.5.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sensei-eval) to find the latest changes.

## Action Summary

The `sensei-eval` GitHub Action is designed to evaluate AI-generated educational content using deterministic checks and LLM-based scoring. It automates the detection of prompt quality regressions in CI workflows by comparing content against predefined baselines and identifying any significant score drops. This tool streamlines the quality assurance process for AI-generated content, providing both detailed evaluations and quick checks to ensure consistency and maintain high-quality outputs.

## Release notes

## Summary
- Add `InlineRubric` type and `rubrics` field on `EvalInput` — users can now pass LLM judge rubrics at eval time without pre-registering content types
- Make `contentType` optional — when omitted, universal deterministic checks run + any inline rubrics
- When both `contentType` and `rubrics` are provided, registered criteria + inline rubrics run together
- Add `job` content type preset (relevance, persuasiveness, completeness)
- Add `insight` content type preset (accuracy, actionability, depth)
- Add length limits for job [200-4000] and insight [300-5000]

## Why
The package was tightly coupled to pre-defined content types. Adding a new use case (like job applications) required publishing a new package version. Now consumers can define their own evaluation rubrics at runtime — the package handles the scoring mechanics, users define what "good" means.

## Breaking changes
None — `contentType` is optional but all existing code passes it. `EvalResult.contentType` is now `string | undefined` but existing consumers already have the value.

## Test plan
- [x] `npm run build` passes
- [x] All 213 existing tests pass
- [ ] Verify inline rubrics are converted to LLM criteria and scored
- [ ] Verify universal deterministic checks run even without contentType
- [ ] Verify error when no criteria and no rubrics provided

🤖 Generated with [Claude Code](https://claude.com/claude-code)
