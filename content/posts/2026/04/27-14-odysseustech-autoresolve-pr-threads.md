---
title: Auto-Resolve Bot Review Threads
date: 2026-04-27 14:35:05 +00:00
tags:
  - odysseustech
  - GitHub Actions
draft: false
repo: https://github.com/odysseustech/autoresolve-pr-threads
marketplace: https://github.com/marketplace/actions/auto-resolve-bot-review-threads
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/odysseustech/autoresolve-pr-threads** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/auto-resolve-bot-review-threads) to find the latest changes.

## Action Summary

This GitHub Action, `autoresolve-pr-threads`, automates the resolution of outdated or addressed review comments left by bots on pull requests. It uses a deterministic series of checks and an AI-powered classifier to identify whether comments are still relevant based on code changes, helping to reduce clutter and ensure unresolved conversations reflect actionable feedback. The action operates safely by default in a dry-run mode, logging decisions without modifying threads unless explicitly configured otherwise.

## What's Changed

- Merge pull request #1 from odysseustech/dev (1a4856b)
- fix: change dry-run default from true to false (bb36f96)
- fix: use PullRequestContext type in index.ts, add empty-comments gate test (86eb87e)
- feat: add pr-number input for workflow_dispatch manual runs (4bdcd7e)
- feat: add action.yml, README, and bundled dist (92bd7fa)
- feat(orchestration): wire fetch → gates → classify → resolve pipeline (9890ce7)
- feat(classifier): add Haiku 4.5 thread classifier with fail-safe UNCLEAR (8870f32)
- feat(gates): add 7-gate deterministic chain with full coverage (dc1c954)
- feat(github): add GraphQL client for review threads (7239657)
- feat(git): add git wrapper for file/line access at refs (2637014)
