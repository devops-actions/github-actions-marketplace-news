---
title: Hosho Prompt Reviewer
date: 2026-02-27 21:26:42 +00:00
tags:
  - HOSHO-AI
  - GitHub Actions
draft: false
repo: https://github.com/HOSHO-AI/Hosho-prompt-optimization-public
marketplace: https://github.com/marketplace/actions/hosho-prompt-reviewer
version: v1.14.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/HOSHO-AI/Hosho-prompt-optimization-public** to version **v1.14.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hosho-prompt-reviewer) to find the latest changes.

## Action Summary

The "Hosho Prompt Reviewer" GitHub Action evaluates AI prompts against research-backed best practices in prompt engineering, analyzing six quality factors such as scope, structure, and model-specific alignment. It identifies weaknesses, provides actionable fixes with before/after examples, and automates prompt reviews by posting detailed feedback on pull requests or summarizing results in the Actions tab. This tool streamlines prompt optimization and ensures adherence to high-quality standards for generating effective AI prompts.

## Release notes

## Simplified finding output

- Title now includes line reference in brackets: `1. Issue title (line 32-37)`
- Removed separate observation/description line below title (was redundant)
- Cleaned up unused `promptFile` parameter threading
