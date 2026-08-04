---
title: AGENTS.md Lint (Schliff)
date: 2026-08-04 22:13:50 +00:00
tags:
  - Zandereins
  - GitHub Actions
draft: false
repo: https://github.com/Zandereins/schliff
marketplace: https://github.com/marketplace/actions/agents-md-lint-schliff
version: v8.10.1
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  Schliff is a tool that evaluates the quality and coherence of AGENTS.md files used to drive AI tools like Cursor, Codex, Copilot, and Claude Code. It provides deterministic scores based on an explicit rubric, ensuring consistent evaluation across different machines. The action automates this process by scoring `AGENTS.md` files and allows for reproducible results through versioned rubrics.
---


Version updated for **https://github.com/Zandereins/schliff** to version **v8.10.1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agents-md-lint-schliff) to find the latest changes.

## Action Summary

Schliff is a tool that evaluates the quality and coherence of AGENTS.md files used to drive AI tools like Cursor, Codex, Copilot, and Claude Code. It provides deterministic scores based on an explicit rubric, ensuring consistent evaluation across different machines. The action automates this process by scoring `AGENTS.md` files and allows for reproducible results through versioned rubrics.

## What's Changed

**The hosted playground, leaderboard and badge endpoint have been retired.** The CLI, the GitHub Action, the pre-commit hook and the Claude Code skill are unaffected and continue to be maintained.

This release exists for one reason: `pyproject.toml` sets `readme = "README.md"`, so the PyPI project page kept advertising services that no longer answer. The wheel itself is functionally unchanged from 8.10.0.

## Removed — the hosted surfaces

`schliff-playground.vercel.app` and `schliff-leaderboard.vercel.app` now serve a static retirement notice and hold no functions and no environment variables. The Redis instance behind the leaderboard's rate limiter has been deleted.

**The reason is not the one this started as.** The trigger was a provider-identification duty, which for a non-monetised open-source demo is genuinely disputed. The load-bearing reason is the **data-protection information duty**, which attaches to *processing* rather than to how an operator presents themselves — visitor IPs used as rate-limit keys are processing, and no address, wording change or legal opinion discharges it. It is a permanent operating obligation, and it was being paid for surfaces with **no demonstrable demand**: web analytics was never enabled on either project, and a code search for both URLs returned references in three repositories, all maintainer-owned.

**Badges already embedded in a README do not break.** `/api/badge` still answers — as a static shields endpoint reporting `retired` in grey. Both Vercel projects are kept rather than deleted, deliberately: a released `*.vercel.app` subdomain is re-registrable, and this project's own Action had already written the playground URL into third-party pull requests.

The application code and its tests stay in the repository. Full rationale and the rejected alternatives — a service address, a static client-side rebuild, deleting the projects — are in [`docs/adr/0008-retire-hosted-surfaces.md`](https://github.com/Zandereins/schliff/blob/main/docs/adr/0008-retire-hosted-surfaces.md).

## Fixed — the documented CI recipe

If you copied the GitHub Action example from the README, **please re-check it against the new one.**

- **It granted no permissions while the feature it documents needs one.** `comment-on-pr` defaults to `true` and the comment step needs `pull-requests: write`. In repositories whose default token is read-only the documented feature failed silently; in repositories with a read-write default the workflow ran with more privilege than it needed. The example now carries the minimal set.
- **Added the missing warning against `pull_request_target`.** It is exactly the trigger you reach for when fork-PR comments fail, and it pairs a write-scoped token with a checkout of untrusted code. On a fork PR the read-only token is the *intended* degradation — score and exit code still work, only the comment is skipped.
- **The example pinned `actions/checkout@v4`** while every workflow in this repository pins by commit SHA. It now uses the same SHA those workflows already trust.

## Changed — where a model is involved, and where it is not

The README now states it plainly instead of leaving it to be inferred. Scoring calls **no** model, and core schliff is literally zero-dependency — `pyproject.toml` declares no `dependencies` at all. The two opt-in extras that do call one run **from your machine with your own API key**; this project operates no inference service, holds no key of yours, and receives nothing you score. Without the extra installed those paths refuse to run rather than degrading silently, and `schliff evolve --budget 0` never imports the LLM path at all. The install table now names the actual packages (`anthropic`, `pydantic`, `litellm`) instead of saying "LLM client".

## Verification

- 1939 tests pass on 3.10 / 3.11 / 3.12 / 3.13 and macOS; `ruff==0.15.8` and markdownlint clean
- `python -m build` + `twine check`: both artifacts PASSED
- The built wheel, installed into a clean non-editable venv, loads from `site-packages` and reports `8.10.1`; all four fixes from 8.10.0 re-verified inside that artifact
- `install.sh` reports `Schliff v8.10.1`; the README hero block reproduces byte-for-byte against the real CLI

**Full changelog:** https://github.com/Zandereins/schliff/compare/v8.10.0...v8.10.1

