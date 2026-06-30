---
title: Pi Review Agent
date: 2026-06-30 22:44:32 +00:00
tags:
  - sun-praise
  - GitHub Actions
draft: false
repo: https://github.com/sun-praise/pi-review-agent
marketplace: https://github.com/marketplace/actions/pi-review-agent
version: v1.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sun-praise/pi-review-agent** to version **v1.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pi-review-agent) to find the latest changes.

## What's Changed

## [1.3.0] - 2026-06-30

### Added

- **PR context injection**: reviewers now see the PR's title, body, author,
  base/head branch, changed-files list, conversation comments, formal
  reviews (APPROVE / REQUEST_CHANGES / COMMENT), and inline review comments
  — prepended to every reviewer's prompt as a `<pull_request_context>`
  block. Reviewers no longer review in a vacuum; they can read *why* the PR
  was made and what humans/bots already said about it. Modeled on opencode's
  `buildPromptDataForPR`. New action input `include-pr-context` (default
  `true`); set `false`/`0` to disable.
- **Pagination**: list endpoints follow the GitHub `Link rel=next` header up
  to 300 items per section, so >100-file PRs are no longer silently truncated.
- **Best-effort fetch**: any context-fetch failure (fork-PR 403, missing
  token, network blip) logs a warning and continues with diff-only review.
- **Self-filtering**: comments/reviews carrying the `<!-- pi-review-agent -->`
  marker are dropped before formatting, so a re-review doesn't feed the
  reviewer its own prior output.
- **Honest truncation counts**: `dropped` reflects the true total minus the
  cap; when the pagination ceiling itself is hit, the output flags
  "real total higher" so the LLM knows the count is a floor.

### Changed

- PR body is byte-capped (8 KB default) with continuation lines indented, so
  long issue templates no longer consume the context window and multi-line
  bodies stay parseable.
- PR number source unified: `index.ts` passes the already-parsed `--pr` /
  `PI_REVIEW_PR` value into the context fetch instead of re-parsing
  `GITHUB_REF`, eliminating a divergent-source footgun.

### Fixed

- `SELF_MARKER` exact match (was a prefix substring that could false-positive
  on human comments mentioning `pi-review-agent-example`).


