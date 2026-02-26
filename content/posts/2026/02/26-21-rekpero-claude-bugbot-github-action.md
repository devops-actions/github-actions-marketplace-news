---
title: Claude BugBot
date: 2026-02-26 21:31:08 +00:00
tags:
  - rekpero
  - GitHub Actions
draft: false
repo: https://github.com/rekpero/claude-bugbot-github-action
marketplace: https://github.com/marketplace/actions/claude-bugbot
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/rekpero/claude-bugbot-github-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-bugbot) to find the latest changes.

## Action Summary

The Claude BugBot GitHub Action is a tool that automates bug detection in pull requests by analyzing code changes using the Claude Code model. It identifies real bugs, such as logic errors, security vulnerabilities, and resource leaks, and posts inline review comments directly on the affected lines. This action eliminates the need for additional subscriptions like Cursor BugBot, offering a cost-effective and efficient solution for developers with a Claude Pro or Max plan.

## Release notes

# Release v1.0.0

First stable release of Claude BugBot. The beta cycle hardened auth, diff delivery, CI environment compatibility, and thread lifecycle management. This release represents the production-ready state of all those subsystems.

## Features

- **Automated bug detection** — Uses Claude Code CLI to analyze PR diffs for bugs, logic errors, security vulnerabilities, race conditions, null/undefined dereferences, off-by-one errors, and resource leaks. Only added/modified lines are analyzed — no noise from unchanged code.
- **Inline PR review comments** — Findings are posted directly on the affected diff lines in the GitHub review interface, with severity-coded emoji (🔴 critical, 🟠 high, 🟡 medium, 🔵 low). Bugs that cannot be mapped to a diff line fall back to a summary section in the review body.
- **Semantic thread resolution** — On each new commit, open BugBot threads from previous runs are fetched and passed to Claude alongside the new diff. Claude semantically determines which bugs were fixed and returns their GitHub thread IDs in `resolved_thread_ids`. Resolved threads are auto-dismissed via the GraphQL `resolveReviewThread` mutation. This is robust to Claude rephrasing bug titles across runs.
- **Duplicate suppression** — Bugs that still have an open thread from a previous run are skipped when posting the new review, so the same issue is never commented twice.
- **Additional locations** — When a bug pattern appears in multiple files within the diff, all locations are listed in the inline comment with clickable GitHub links to the exact line.
- **Dual auth support** — Works with a Claude Max/Pro subscription OAuth token (`claude setup-token`) or a standard Anthropic API key. Auth is verified with a live API call before analysis begins; credentials are logged in masked form for easy debugging.
- **PAT support for thread resolution** — `github-token` accepts a Personal Access Token with `repo` scope as an alternative to the default `GITHUB_TOKEN`, for repos where the integration token lacks `pull-requests: write`.
- **Diff-aware line validation** — Unified diff hunk headers are parsed to build a map of valid commentable lines per file. Only lines that exist in the right-side diff are used for inline comments.
- **Large diff handling** — Diffs exceeding 200KB are truncated with a notice to keep latency and cost reasonable.
- **Temp-file diff delivery** — The diff is written to a temp file and the path is referenced in the prompt. Claude reads it via its native file tool, avoiding stdin and argument-size limitations that caused hangs in earlier approaches.
- **Retry logic** — Up to 3 spawn attempts with SIGKILL on timeout. A 5-second pause separates retries.
- **10-minute analysis timeout** — Hard per-attempt limit; generous enough for large diffs analyzed by Sonnet.
- **CI environment hardening** — Passes `CI=true`, `NO_COLOR=1`, `TERM=dumb`, and `CLAUDE_NO_TELEMETRY=1` to suppress interactive prompts, update checks, and color codes that can hang headless runners.
- **Fallback comment mode** — If the GitHub review API rejects inline comments, BugBot retries as a plain PR issue comment so findings are never silently lost.
- **Configurable model** — Supports `sonnet`, `opus`, and `haiku` via the `model` input. Defaults to `sonnet`.
- **Bot PR skipping** — Example workflow excludes Dependabot PRs by default.
- **Composite action** — Runs as a composite GitHub Action (no Docker required); installs Claude Code CLI via npm on the runner.

## Inputs

| Input | Default | Description |
|---|---|---|
| `claude-setup-token` | — | OAuth token from `claude setup-token` |
| `anthropic-api-key` | — | Anthropic API key (alternative auth) |
| `model` | `sonnet` | Claude model to use (`sonnet`, `opus`, `haiku`) |
| `github-token` | `github.token` | GitHub token for posting reviews and resolving threads |

## How It Works

1. Verifies auth with a live API call before doing anything else
2. Reads PR metadata from the GitHub Actions event payload
3. Fetches the PR diff via `gh pr diff`
4. Parses the diff to build a map of valid commentable lines per file
5. Fetches all open BugBot review threads from previous runs on this PR
6. Writes the diff to a temp file; runs Claude with the diff path and open threads in the prompt
7. Claude analyzes the diff for new bugs and determines which previously-reported bugs were fixed
8. Resolves threads Claude identified as fixed via GitHub GraphQL
9. Posts a PR review with inline comments on new bugs (skipping any that still have open threads)
