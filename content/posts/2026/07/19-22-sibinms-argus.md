---
title: Argus PR Review
date: 2026-07-19 22:01:26 +00:00
tags:
  - sibinms
  - GitHub Actions
draft: false
repo: https://github.com/sibinms/argus
marketplace: https://github.com/marketplace/actions/argus-pr-review
version: v1.2.4
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Argus is a GitHub Action that automates the process of code reviews using AI. It runs multiple specialized AI reviewers in parallel, providing a more comprehensive view than relying on a single model. The action uses an evidence-based curator to verify findings before posting review comments on pull requests, ensuring only valid issues are highlighted. This approach helps in finding more real bugs while minimizing false positives.
---


Version updated for **https://github.com/sibinms/argus** to version **v1.2.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/argus-pr-review) to find the latest changes.

## Action Summary

Argus is a GitHub Action that automates the process of code reviews using AI. It runs multiple specialized AI reviewers in parallel, providing a more comprehensive view than relying on a single model. The action uses an evidence-based curator to verify findings before posting review comments on pull requests, ensuring only valid issues are highlighted. This approach helps in finding more real bugs while minimizing false positives.

## What's Changed

Pin the Action to this tag:

    - uses: sibinms/argus@v1.2.4

## What's new since v1.2.3

**Reviewing**
- **Precision overhaul** of the lenses and curator: a finding must now assert a real problem (not narrate a change), the contracts lens is scoped to genuine public/consumer-facing surfaces, and the curator can drop pure narration and mis-scoped-impact findings. Cut self-review noise dramatically.

**Posting — the "moderator"**
- Idempotent posting: **one rolling summary** comment edited in place, each finding posted **once** (drift-proof fingerprint), addressed threads **resolved**, a hard **`max_inline_comments`** cap (default 10), and no new review when nothing changed — a PR can't fill up with comments.
- Inline comments only ever attach to lines in the diff (fixes 422 "line could not be resolved").
- **Opt-in real approvals** via `approve_reviews` (default off); falls back to a comment where the repo hasn't enabled Actions approvals, so a clean PR never fails.

**Providers**
- **OpenRouter** documented as a first-class provider (any litellm provider works: Anthropic, OpenAI, Gemini, OpenRouter, ...).
- Timeout on the LLM call; salvage JSON when a model wraps it in prose.

**Docs & project**
- Branded, theme-aware architecture diagram in the README.
- 62 tests; lint, type-check, security (Bandit + pip-audit + CodeQL) all green.

This entire release was reviewed and **approved by Argus itself** (PR #1).
