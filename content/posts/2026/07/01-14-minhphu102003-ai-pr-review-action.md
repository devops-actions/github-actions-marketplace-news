---
title: Synaptic PR Review
date: 2026-07-01 14:57:25 +00:00
tags:
  - minhphu102003
  - GitHub Actions
draft: false
repo: https://github.com/minhphu102003/ai-pr-review-action
marketplace: https://github.com/marketplace/actions/synaptic-pr-review
version: v0.0.19
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/minhphu102003/ai-pr-review-action** to version **v0.0.19**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/synaptic-pr-review) to find the latest changes.

## What's Changed

## v0.0.19

### Context Files Support
- Auto-detect architecture docs, CLAUDE.md, AGENTS.md, SOUL.md, MEMORY.md, README as review context
- User can specify custom context files via `context_files` input (comma-separated paths)
- Smart budget: context files only fetched when diff < 70K chars (15K budget for context)
- LLM receives context in `<context>` block alongside the diff for better-informed reviews

### Inline Comments for OpenCode Engine
- OpenCode engine now posts inline resolvable review comments via post-processing step
- `post_inline.py` extracts issues JSON from OpenCode review and posts as PR review comments
- Summary comment updated to remove duplicate key issues section

### Improvements
- Only warn for user-specified context paths, not auto-detect
- Diff size check for OpenCode engine before fetching context files
