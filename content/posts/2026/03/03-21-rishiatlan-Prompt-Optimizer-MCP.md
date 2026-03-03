---
title: Prompt Lint
date: 2026-03-03 21:28:01 +00:00
tags:
  - rishiatlan
  - GitHub Actions
draft: false
repo: https://github.com/rishiatlan/Prompt-Optimizer-MCP
marketplace: https://github.com/marketplace/actions/prompt-lint
version: v4.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/rishiatlan/Prompt-Optimizer-MCP** to version **v4.1.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prompt-lint) to find the latest changes.

## Action Summary

The GitHub Action "Prompt Control Plane" optimizes and standardizes AI prompt workflows by enforcing quality checks, scoring structure, and providing cost estimates before execution. It automates model routing based on task complexity, compresses irrelevant context, and ensures human-in-the-loop approval for ambiguous prompts. This action reduces costs, improves prompt clarity, and enhances overall efficiency in AI-driven tasks.

## Release notes

## Added — Enterprise Console Integration
- **Tool 20 — `save_custom_rules`** (FREE, Enterprise-only): Deploy custom governance rules built in the Enterprise Console directly to Prompt Control Plane. Validates all rules, sorts deterministically, writes with secure file permissions, and returns a rule-set hash for reproducibility.
- **Enterprise Console → Product bridge**: Build rules in the visual editor, click "Copy & Deploy", paste into any MCP-connected AI assistant — rules are active on the next optimization. Works with any LLM, not just Claude.

## Changed — Documentation & Governance
- **"Enterprise Features" section** in README: consolidated Enterprise Console, Policy Enforcement, Policy-Locked Configuration, Hash-Chained Audit Trail, Custom Governance Rules, Session Lifecycle, and Reproducible Exports into a dedicated section with pricing table rows.
- **Terminology**: "Tamper-evident" → "Hash-chained" across all 15 public docs. Product-facing language, not attack-implying.
- **Content filter**: Stripped all internal source paths, function names, type names, test counts, and implementation details from README, CHANGELOG, and all website pages.
- **Roadmap leak removed**: Phase A/B migration plans removed from public documentation.
- **Tool count**: Updated to 20 across all public docs.
- **Enterprise features on website**: Added Enterprise Console card, updated Custom Rules deploy flow, added `save_custom_rules` to tool tables.

## Notes
- **No breaking changes** to existing 19 MCP tools, CLI, or programmatic API.
- New tool is FREE and unlimited (Enterprise tier required).
- Architecture constraint preserved: **zero LLM calls inside. Deterministic. Offline. Reproducible.**

**Full Changelog**: https://github.com/rishiatlan/Prompt-Optimizer-MCP/blob/main/CHANGELOG.md
