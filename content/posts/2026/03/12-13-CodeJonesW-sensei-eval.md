---
title: sensei-eval
date: 2026-03-12 13:36:04 +00:00
tags:
  - CodeJonesW
  - GitHub Actions
draft: false
repo: https://github.com/CodeJonesW/sensei-eval
marketplace: https://github.com/marketplace/actions/sensei-eval
version: v0.6.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/CodeJonesW/sensei-eval** to version **v0.6.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sensei-eval) to find the latest changes.

## Action Summary

The `sensei-eval` GitHub Action evaluates AI-generated educational content for quality using both deterministic checks and LLM-based scoring. It automates the detection of prompt quality regressions in CI workflows, enabling consistent content evaluation and quality assurance. Key capabilities include baseline generation, regression detection, and flexible configuration for content types, topics, and difficulty levels.

## Release notes

## Summary
- Updates `@anthropic-ai/sdk` from `^0.72.1` to `^0.78.0`
- Fixes compatibility with Cloudflare Workers where the older SDK version fails with connection errors
- All 213 tests pass

## Test plan
- [x] `npm run build` succeeds
- [x] `npm test` — all 213 tests pass
- [ ] Verify integration tests still pass in CI

🤖 Generated with [Claude Code](https://claude.com/claude-code)
