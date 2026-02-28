---
title: Hosho Prompt Reviewer
date: 2026-02-28 05:36:49 +00:00
tags:
  - HOSHO-AI
  - GitHub Actions
draft: false
repo: https://github.com/HOSHO-AI/Hosho-prompt-optimization-public
marketplace: https://github.com/marketplace/actions/hosho-prompt-reviewer
version: v1.15.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/HOSHO-AI/Hosho-prompt-optimization-public** to version **v1.15.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hosho-prompt-reviewer) to find the latest changes.

## Action Summary

The "Hosho Prompt Reviewer" GitHub Action evaluates AI agent prompts against six research-backed prompt engineering quality factors, such as structure, context, and model-specific alignment. It identifies weaknesses, provides actionable fixes with before/after examples, and automatically delivers detailed reviews via pull request comments or job summaries. This action simplifies prompt optimization, ensuring adherence to best practices and improving prompt effectiveness for AI models like GPT, Claude, and Gemini.

## Release notes

Add draft PR filter to example workflow template

- Add `types: [opened, ready_for_review]` to prevent re-runs on every push
- Add `if: github.event.pull_request.draft == false` to skip draft PRs
- Reduces unnecessary workflow invocations for repos with active draft PRs
