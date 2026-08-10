---
title: Auto-generate PR Description
date: 2026-08-10 21:14:58 +00:00
tags:
  - yuri-val
  - GitHub Actions
draft: false
repo: https://github.com/yuri-val/auto-pr-description-action
marketplace: https://github.com/marketplace/actions/auto-generate-pr-description
version: v1.7.0
dependentsNumber: "2"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action uses OpenAI's language models to automatically generate detailed and context-aware pull request descriptions. It enhances collaboration by providing clear and concise summaries that capture ticket links, intent, and previous discussions, while handling rate limiting and retries. The action supports customizable configurations and outputs the generated description for easy review and updating in PRs.
---


Version updated for **https://github.com/yuri-val/auto-pr-description-action** to version **v1.7.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/auto-generate-pr-description) to find the latest changes.

## Action Summary

This GitHub Action uses OpenAI's language models to automatically generate detailed and context-aware pull request descriptions. It enhances collaboration by providing clear and concise summaries that capture ticket links, intent, and previous discussions, while handling rate limiting and retries. The action supports customizable configurations and outputs the generated description for easy review and updating in PRs.

## What's Changed

Changes in this Release:
- feat: use PR description and comments as context, not just the diff (#7)

* feat: feed the PR's description and comments to the model, not just the diff

The description was generated from the diff alone, so every regeneration on a new
push discarded the human context: ticket links, deployment notes, decisions taken in
review. The current body was read only to archive it as a comment, and comments were
never read at all.

The user message is now three labelled sections — <diff>, <current_description>,
<comments> — and the system prompt states how each is to be used: the diff is the
source of truth for what changed, the description and comments supply intent.
Human-authored facts (ticket links, test plans, rollout notes) are preserved; a
previously auto-generated body is rewritten rather than edited in place.

Comments cover issue comments, review bodies and inline review comments (carrying
file:line so they tie back to the diff). Collection is best-effort and paginated: a
token without the read scope logs and falls back to diff-only.

Budgets bound the request (100k diff / 5k description / 20k comments, 2k per comment)
with explicit truncation markers.

Pure assembly logic moved to context.js so it is testable without @actions/* or
network; 14 unit tests added (node --test) plus 'npm test'.

* test: point this repo's own workflow at feat/pr-context for an end-to-end run

Temporary — reverted before merge.

* ci: run unit tests and verify dist/ is not stale on every PR

* fix(ci): let the shell expand the test glob

Quoted, the pattern reaches node verbatim; Node 20 on the runner does not expand
globs itself (Node 21+ does), so the run failed with 'Could not find tests/*.test.js'.

* revert: point this repo's workflow back at @v1 after the end-to-end run

