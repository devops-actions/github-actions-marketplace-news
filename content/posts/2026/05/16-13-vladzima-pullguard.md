---
title: PullGuard PR Risk
date: 2026-05-16 13:56:54 +00:00
tags:
  - vladzima
  - GitHub Actions
draft: false
repo: https://github.com/vladzima/pullguard
marketplace: https://github.com/marketplace/actions/pullguard-pr-risk
version: v1
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/vladzima/pullguard** to version **v1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pullguard-pr-risk) to find the latest changes.

## Action Summary

PullGuard is a GitHub Action designed to help open-source maintainers assess the risk of pull request reviews. It automates the detection of common issues, such as missing tests, risky refactors, or weak PR descriptions, and can independently comment, label, or close pull requests based on repository policies. By flagging review-risk patterns, PullGuard streamlines PR evaluation, saving maintainers time and effort.

## What's Changed

Initial stable PullGuard action release.

PullGuard is a free BYOK GitHub Action for OSS maintainers. It scores pull request review risk and can comment, label, or close PRs based on repository policy.

Highlights:
- OpenAI and Anthropic BYOK support
- Comment, label, and always-run trigger modes
- `/pullguard` comment trigger with per-run flags
- Codebase-aware analysis by default
- Risk labels, including `needs-human-review` at score 50+
- Optional auto-close threshold for very high-risk PRs
- Short structured PR comments with review-risk score, main concerns, and review-first files
- Setup wizard via `npx pullguard init`

Note: PullGuard is early work. Score calibration is still being adjusted against real OSS PRs, and feedback on false positives, false negatives, and confusing comments is very welcome.
