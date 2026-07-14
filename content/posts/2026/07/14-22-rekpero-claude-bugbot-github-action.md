---
title: Claude BugBot
date: 2026-07-14 22:43:35 +00:00
tags:
  - rekpero
  - GitHub Actions
draft: false
repo: https://github.com/rekpero/claude-bugbot-github-action
marketplace: https://github.com/marketplace/actions/claude-bugbot
version: v1.0.12
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  This GitHub Action automates automated PR bug analysis using Claude Code CLI, providing inline review comments on exact lines where issues are detected. It runs directly on top of Claude Code and is free to use with any Claude Pro or Max subscription without paying for a Cursor subscription. The action focuses only on real bugs and handles large diffs gracefully by truncating at 200KB.
---


Version updated for **https://github.com/rekpero/claude-bugbot-github-action** to version **v1.0.12**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-bugbot) to find the latest changes.

## Action Summary

This GitHub Action automates automated PR bug analysis using Claude Code CLI, providing inline review comments on exact lines where issues are detected. It runs directly on top of Claude Code and is free to use with any Claude Pro or Max subscription without paying for a Cursor subscription. The action focuses only on real bugs and handles large diffs gracefully by truncating at 200KB.

## What's Changed

## Fixed

- **Analysis failed when Claude narrated its findings as prose instead of JSON** — Running as an agent with codebase access, Claude would frequently finish the review correctly (even identifying a real bug) but return a natural-language write-up rather than the required JSON object. `parseResponse` found no JSON to extract and threw `Could not extract JSON from Claude's response`; the retry loop then re-ran the *identical* tool-using prompt, which deterministically produced prose again, so all 3 attempts failed the same way and the completed review was discarded. Two-part fix: (1) a `JSON_ONLY_SYSTEM_PROMPT` is now appended via `--append-system-prompt` on the analysis call — a system-prompt contract is followed far more reliably than the same instruction buried at the end of a long agentic user turn; (2) when parsing still fails, a new `reformatToJson` helper makes a cheap single-turn call (`--max-turns 1`, fast `REFORMAT_MODEL`, no tool use) that repackages the prose write-up into the required schema, recovering the review instead of throwing it away. Only if that recovery also fails does the loop fall back to re-running the full analysis. Verified end-to-end against the exact prose from a failing production run — the rate-limiter regression it had described in prose was recovered as well-formed JSON.

## Changed

- **Single source of truth for the response schema** — The JSON schema block is now emitted by a shared `jsonSchema(hasOpenThreads)` helper used by both `buildPrompt` and `reformatToJson`, so the recovery pass always targets the identical shape the analysis was asked for.
- **`analyze.mjs` is importable for testing** — `main()` now runs only when the file is executed directly (`node analyze.mjs`), guarded by an `import.meta.url` check, and the core functions are exported. Production invocation is unchanged.
