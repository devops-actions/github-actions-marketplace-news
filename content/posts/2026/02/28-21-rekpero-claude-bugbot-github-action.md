---
title: Claude BugBot
date: 2026-02-28 21:17:21 +00:00
tags:
  - rekpero
  - GitHub Actions
draft: false
repo: https://github.com/rekpero/claude-bugbot-github-action
marketplace: https://github.com/marketplace/actions/claude-bugbot
version: v1.0.4
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/rekpero/claude-bugbot-github-action** to version **v1.0.4**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-bugbot) to find the latest changes.

## Action Summary

The Claude BugBot GitHub Action is an automated tool that analyzes pull request (PR) diffs to detect bugs, logic errors, and potential vulnerabilities, posting inline review comments directly on affected lines of code. It leverages the Claude Code model for fast and accurate analysis without the need for middleware or additional subscriptions, making it a cost-effective alternative to Cursor BugBot for users with Claude Pro or Max plans. This action streamlines code reviews by focusing on real issues, enhancing efficiency and code quality.

## Release notes

## Fixed

- **JSON parse failures now trigger retries instead of immediate CI failure** — Claude Code CLI occasionally responds with natural-language preamble (e.g. `"After reading through the full diff, here is my analysis:"`) instead of the requested bare JSON, causing `parseResponse` to throw `"Could not extract JSON from Claude's response"`. Previously this error propagated straight to the top-level handler and failed the job. `parseResponse` is now called inside the `runClaude` retry loop: if parsing fails on an attempt, a warning is logged and the full Claude invocation is retried up to `MAX_ATTEMPTS` (3) times before giving up.

- **BugBot analysis failure no longer fails the CI job** — The top-level `main().catch()` handler previously called `process.exit(1)`, causing the GitHub Actions job to report `Process completed with exit code 1` and block the PR status check whenever BugBot encountered any unrecoverable error. Changed to `process.exit(0)` so a BugBot failure is visible in the logs but does not mark the job as failed or block merging.
