---
title: Claude BugBot
date: 2026-02-27 05:52:52 +00:00
tags:
  - rekpero
  - GitHub Actions
draft: false
repo: https://github.com/rekpero/claude-bugbot-github-action
marketplace: https://github.com/marketplace/actions/claude-bugbot
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/rekpero/claude-bugbot-github-action** to version **v1.0.2**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-bugbot) to find the latest changes.

## Action Summary

The Claude BugBot GitHub Action automates the process of analyzing pull request diffs for bugs, logic errors, security vulnerabilities, and other critical issues, providing inline review comments directly on affected lines. It leverages the Claude Code model for fast and accurate bug detection without middleware, eliminating the need for additional subscriptions or IDE dependencies when used with a Claude Pro or Max plan. This action is particularly useful for streamlining PR reviews by focusing solely on real bugs while ignoring non-critical issues like code style or formatting.

## Release notes

# Release v1.0.2

## Fixed

- **Open threads not resolved when PR has no new bugs** — When Claude reported no new bugs (`bugs: []`), the "no bugs found" example template in the prompt showed `"resolved_thread_ids": []`, causing Claude to copy it verbatim and return an empty list regardless of whether previously-reported bugs were actually fixed. The template now shows a semantic placeholder (`"<threadId of each thread now fixed>"`) and adds an explicit note that `resolved_thread_ids` must be evaluated independently of `bugs` — an empty `bugs` array is not a reason to leave `resolved_thread_ids` empty.

- **Threads not resolved when fixed file is absent from the diff** — The prompt instruction "if a thread's bug is untouched by the diff, omit it from `resolved_thread_ids`" caused Claude to conservatively skip resolution whenever the bug's file did not appear in the diff (e.g. a bug fixed indirectly via a shared function or caller). Resolution rules are now explicit: if the bug's file is in the diff and the bug is gone → resolve; if the file is in the diff and the bug remains → keep open; if the file is NOT in the diff, use broader judgment and resolve if the PR addresses the root cause elsewhere or nothing related looks broken.

- **Silent failure when Claude returned `bugId` instead of `threadId`** — The `resolved_thread_ids` field in the prompt schema used placeholder names (`"threadId1"`, `"threadId2"`) that did not distinguish between the `threadId` (GitHub GraphQL node ID, e.g. `PRRT_kwDO...`) and `bugId` (`file:line`) fields present in the open-threads JSON. Claude occasionally placed `bugId` values in `resolved_thread_ids`, causing the `resolveReviewThread` GraphQL mutation to fail silently (logged as `console.warn`). The prompt now explicitly states: `resolved_thread_ids must contain the "threadId" field value (the GitHub GraphQL node ID, e.g. "PRRT_kwDO...") — NOT the "bugId" field value.`

