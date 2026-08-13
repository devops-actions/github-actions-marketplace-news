---
title: Gemini AI Triage Bot
date: 2026-08-13 22:14:11 +00:00
tags:
  - sysv86
  - GitHub Actions
draft: false
repo: https://github.com/sysv86/ai-triage-bot
marketplace: https://github.com/marketplace/actions/gemini-ai-triage-bot
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action "AI Triage Bot" automates issue and pull request triaging using Gemini, a language model. It checks code claims against actual code to label issues (`bug`, `enhancement`, etc.) and pull requests (`good-pr`, `needs-work`) with comments. It also detects duplicates and floods, implements antispam and anti-abuse measures, and has optional features for GitHub Discussions Q&A, AI Agent PRs/issues opening, commit review, and workflow dispatch.
---


Version updated for **https://github.com/sysv86/ai-triage-bot** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gemini-ai-triage-bot) to find the latest changes.

## Action Summary

The GitHub Action "AI Triage Bot" automates issue and pull request triaging using Gemini, a language model. It checks code claims against actual code to label issues (`bug`, `enhancement`, etc.) and pull requests (`good-pr`, `needs-work`) with comments. It also detects duplicates and floods, implements antispam and anti-abuse measures, and has optional features for GitHub Discussions Q&A, AI Agent PRs/issues opening, commit review, and workflow dispatch.

## What's Changed

- fix(action): unique marketplace name and short description for validation (9cadc73)
- feat: move action.yml to repo root for GitHub Marketplace listing (937cab8)
- test(config): make env-dependent config tests runner-deterministic (2b7cd7f)
- feat: publish AI Triage Bot — Gemini-powered issue/PR triage GitHub Action (d122cac)
