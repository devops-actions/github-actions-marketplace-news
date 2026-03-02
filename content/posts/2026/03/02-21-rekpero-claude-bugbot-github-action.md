---
title: Claude BugBot
date: 2026-03-02 21:30:35 +00:00
tags:
  - rekpero
  - GitHub Actions
draft: false
repo: https://github.com/rekpero/claude-bugbot-github-action
marketplace: https://github.com/marketplace/actions/claude-bugbot
version: v1.0.5
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/rekpero/claude-bugbot-github-action** to version **v1.0.5**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-bugbot) to find the latest changes.

## Action Summary

The Claude BugBot GitHub Action automatically analyzes pull request (PR) diffs using Anthropic's Claude Code model to detect bugs, logic errors, and other issues, and posts inline review comments on affected lines. It streamlines code review by automating bug detection without requiring a Cursor subscription, making it a cost-effective solution for developers already using Claude Pro or Max plans. Key capabilities include handling large diffs, focusing on real bugs (ignoring style or formatting issues), and integrating seamlessly into any repository without IDE dependencies.

## Release notes

### Changed

- **Analysis timeout raised from 10 minutes to 30 minutes** — `ANALYSIS_TIMEOUT_MS` increased from `10 * 60_000` to `30 * 60_000`. Large or complex diffs can legitimately require more than 10 minutes for Claude to fully analyze; the previous limit caused premature SIGKILL and retry cycles on heavier PRs.
