---
title: Hosho Prompt Reviewer
date: 2026-02-28 21:17:49 +00:00
tags:
  - HOSHO-AI
  - GitHub Actions
draft: false
repo: https://github.com/HOSHO-AI/Hosho-prompt-optimization-public
marketplace: https://github.com/marketplace/actions/hosho-prompt-reviewer
version: v1.16.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/HOSHO-AI/Hosho-prompt-optimization-public** to version **v1.16.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hosho-prompt-reviewer) to find the latest changes.

## Action Summary

The *Hosho Prompt Reviewer* GitHub Action evaluates AI agent prompts against prompt engineering best practices from leading model providers (e.g., GPT, Claude, Gemini) by analyzing six key quality factors. It automates prompt reviews by identifying weaknesses, offering specific feedback, and providing actionable before/after fixes. The action supports both pull request reviews and on-demand evaluations, streamlining prompt optimization and improving alignment with model-specific guidelines.

## Release notes

## Output format redesign

- **Top 3 edits** summary at the top with anchor links to detailed findings
- **Severity-sorted** What Changed section (negative → mixed → positive)
- **"Existing prompt:" / "Suggested edit:"** labels on code snippets
- **"Detailed findings"** heading for the full findings section
- Removed collapse wrapper for better readability
- Support for new API fields: `targetModelFamily`, `targetModelName`, `changeSummary`, `changeDetails`

## API compatibility

Requires API v1.16+ (output format changes, batch recommendation improvements, dead code cleanup).
