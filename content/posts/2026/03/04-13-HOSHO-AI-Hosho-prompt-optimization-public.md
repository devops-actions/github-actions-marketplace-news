---
title: Hosho Prompt Reviewer
date: 2026-03-04 13:32:47 +00:00
tags:
  - HOSHO-AI
  - GitHub Actions
draft: false
repo: https://github.com/HOSHO-AI/Hosho-prompt-optimization-public
marketplace: https://github.com/marketplace/actions/hosho-prompt-reviewer
version: v1.21.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/HOSHO-AI/Hosho-prompt-optimization-public** to version **v1.21.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hosho-prompt-reviewer) to find the latest changes.

## Action Summary

The Hosho Prompt Reviewer GitHub Action evaluates AI agent prompts against research-backed prompt engineering best practices to identify weaknesses and provide actionable fixes, including before/after snippets. It automates prompt quality assessments by analyzing factors like scope, structure, context, constraints, output validation, and model-specific alignment, offering feedback directly in pull requests or the Actions tab. This tool streamlines the improvement of prompts, ensuring they align with guidelines for optimal AI performance.

## Release notes

- PR Rationale column in factor table (shows changeRationale per factor)
- Remove "mixed" from changeSummary effects — LLM splits into positive/negative
- Renamed revert section: "SUGGESTED FIXES BEFORE MERGING"
- "Fix N:" numbering for suggested fixes
- Finding references use (N) instead of #N to avoid GitHub auto-linking
- Cleaned up dead hasMixed code in formatVerdict
