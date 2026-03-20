---
title: Hosho Prompt Reviewer
date: 2026-03-20 05:50:30 +00:00
tags:
  - HOSHO-AI
  - GitHub Actions
draft: false
repo: https://github.com/HOSHO-AI/Hosho-prompt-optimization-public
marketplace: https://github.com/marketplace/actions/hosho-prompt-reviewer
version: v1.28.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/HOSHO-AI/Hosho-prompt-optimization-public** to version **v1.28.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hosho-prompt-reviewer) to find the latest changes.

## Action Summary

The "Hosho Prompt Reviewer" GitHub Action evaluates AI agent prompts against established prompt engineering best practices. It automates the process of analyzing prompts across six quality factors, providing detailed feedback, ratings, and actionable fixes to improve clarity, structure, and alignment with model-specific guidelines. The action supports workflows by generating review summaries in pull requests and offering on-demand detailed evaluations, streamlining the refinement of AI prompts for enhanced performance.

## Release notes

## What's new

- **Custom principles in improve mode** — `/hosho-improve` now includes a Custom Principles row in the factor table and detailed findings in the appendix, with score computed from principle pass rate (excluded from overall score)
- **Underlined finding titles** in the appendix for better readability
- **Uppercase factor headers** in appendix sections
- **Removed duplicate issue text** that repeated the finding title
