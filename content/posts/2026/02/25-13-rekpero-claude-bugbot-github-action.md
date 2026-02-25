---
title: Claude BugBot
date: 2026-02-25 13:26:38 +00:00
tags:
  - rekpero
  - GitHub Actions
draft: false
repo: https://github.com/rekpero/claude-bugbot-github-action
marketplace: https://github.com/marketplace/actions/claude-bugbot
version: v1.0.0-beta.8
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/rekpero/claude-bugbot-github-action** to version **v1.0.0-beta.8**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-bugbot) to find the latest changes.

## Action Summary

The Claude BugBot GitHub Action is an automated tool that analyzes pull request (PR) changes to detect bugs, logic errors, and security vulnerabilities, posting detailed inline review comments on the affected lines. It eliminates the need for a separate Cursor subscription by directly leveraging Claude Code models (Sonnet, Opus, or Haiku), providing fast and cost-effective bug analysis for users with Claude Pro or Max plans. This action automates code review, streamlining the identification and resolution of critical issues in PRs while excluding non-critical concerns like style or formatting.

## Release notes

## Changed

- **Stall timeout raised from 60s to 3 minutes** — Claude sonnet analyzing a real diff can legitimately take 1–2+ minutes before producing its first output token (especially with `--output-format json` which may buffer until the full response is ready). The 60s threshold was killing the process mid-analysis. 3 minutes gives normal runs enough headroom while still catching genuinely stuck processes.
- **Idle heartbeat threshold raised from 15s to 30s** — Reduces log noise during the first 30s of normal startup before the heartbeat countdown begins.
