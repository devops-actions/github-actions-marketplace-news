---
title: Miso PR Review
date: 2026-06-12 22:59:24 +00:00
tags:
  - misospace
  - GitHub Actions
draft: false
repo: https://github.com/misospace/pr-reviewer-action
marketplace: https://github.com/marketplace/actions/miso-pr-review
version: v1.2.8
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/misospace/pr-reviewer-action** to version **v1.2.8**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/miso-pr-review) to find the latest changes.

## What's Changed

Feature-bearing 1.2.x release. All changes are additive with zero default-behavior change; 1.3.0 remains reserved for native tool calling (#197) and 1.4.x for Forgejo support (#229) — this release lands *infrastructure* for both lines that nothing invokes yet.

## Features

- **`force_review` input** (#232, refs #231): bypass the diff-unchanged guard for on-demand re-reviews when the diff is unchanged but something the fingerprint can't see has changed (a model repointed behind a stable alias, updated standards). Ships with `scripts/parse_review_command.sh` — a tested authorization gate for a comment-triggered `/ai-review` command that requires the commenter to hold `write`/`admin` via the collaborators API (author_association alone is never trusted).
- **`platform` input + platform seam** (#236, refs #221/#229): every host-forge API call now routes through `scripts/platform_api.sh` / `pr_reviewer/platform.py`. `auto` (default) detects from `GITHUB_SERVER_URL`; the github backend reproduces the exact pre-seam `gh` invocations (byte-identical output, verified by a 32-case command-line suite). Forgejo mode delegates core PR I/O to the new backend and fails loudly on not-yet-implemented operations.
- **Forgejo REST backend for core PR I/O** (#234, refs #222): `pr_reviewer/forgejo_backend.py`, field shapes live-verified against a real Forgejo instance (Codeberg), including correct fork detection via `head.repo.full_name` (fails closed on deleted forks).

## Internal (inert until 1.3.0)

- **SSE tool-call reassembly** (#233, refs #201): streamed tool-call deltas for both API formats reassemble into the OpenAI non-streaming shape; `function.arguments` is always the JSON-encoded string.
- **Multi-turn conversation builder** (#235, refs #202): append-only neutral state with OpenAI/Anthropic wire rendering, per-API tool schemas, and a verdict-turn mode that drops tools and stays wire-valid on both APIs.

With no new inputs set, output is byte-identical to v1.2.7.
