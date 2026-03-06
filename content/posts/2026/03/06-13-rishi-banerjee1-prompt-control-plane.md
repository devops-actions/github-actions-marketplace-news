---
title: Prompt Control Plane
date: 2026-03-06 13:46:14 +00:00
tags:
  - rishi-banerjee1
  - GitHub Actions
draft: false
repo: https://github.com/rishi-banerjee1/prompt-control-plane
marketplace: https://github.com/marketplace/actions/prompt-control-plane
version: v5.3.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/rishi-banerjee1/prompt-control-plane** to version **v5.3.2**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prompt-control-plane) to find the latest changes.

## Action Summary

The **Prompt Control Plane GitHub Action** helps automate the evaluation and optimization of AI prompts within CI/CD workflows. It provides functionality to classify, score, enforce policies, optimize, and audit prompt quality, ensuring high standards and reducing issues in prompt-based AI systems. This action is ideal for maintaining consistent prompt quality, estimating costs, and automating approval processes in development pipelines.

## Release notes

## What Changed

### Enterprise Console (`admin.html`)
- Fixed nav structure to match standard pattern (was using `<ul>/<li>` instead of `<div>/<a>`)
- Corrected audit file path: `audit.jsonl` → `audit.log` (matches actual `AUDIT_FILENAME` in source)
- Added missing `save_custom_rules` event type to audit log filter dropdown
- Standardized footer to match all other pages (added GitHub, npm, Legal links)

### Documentation Fixes
- **CI commands**: Fixed incorrect `npx pcp-engine pcp check` → `pcp check` (the MCP server binary doesn't accept CLI subcommands)
- **Provider count**: features.html SVG corrected from "5 providers" → "4 providers"
- **Pricing date**: models.html updated from "February 2026" → "March 2026"
- **Audit file references**: Fixed across docs.html, admin.html, and CLAUDE.md
- **Schema.org**: Removed misleading `"price": "0"` from Enterprise tier

### Video v2
- Scene crossfade transitions (0.8s)
- Upbeat C-major background music (replacing somber C-minor drone)
- Honest cost comparison (Haiku vs GPT-4o = genuine 63% savings)
- Replaced "832 Tests Passing" with "10 Models" in closing stats

### Verified
- 832 tests pass, 0 failures
- All install commands validated against `package.json`
- All tier limits validated against `PLAN_LIMITS` in source
- GitHub Action, npm package, and floating `v5` tag all updated

**Full Changelog**: https://github.com/rishi-banerjee1/prompt-control-plane/compare/v5.3.1...v5.3.2
