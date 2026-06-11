---
title: Miso PR Review
date: 2026-06-11 07:24:26 +00:00
tags:
  - misospace
  - GitHub Actions
draft: false
repo: https://github.com/misospace/pr-reviewer-action
marketplace: https://github.com/marketplace/actions/miso-pr-review
version: v1.2.4
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/misospace/pr-reviewer-action** to version **v1.2.4**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/miso-pr-review) to find the latest changes.

## What's Changed

Feature-bearing 1.2.x release (1.3.0 remains reserved for the native tool-calling work tracked in #197). Backward-compatible: no new inputs — the thread-lifecycle features are gated by the existing `inline_findings` input and engage automatically on incremental reviews.

## Features

- **Inline finding threads are resolved when the finding is fixed** (#208): every inline comment now carries a hidden content fingerprint of its finding. When a later incremental review's carry-forward concludes a carried finding is resolved (the model answers it `resolved` — the same fail-closed rule that drives the verdict), the matching open review thread is resolved via the GraphQL `resolveReviewThread` mutation. Authors see live thread state instead of stale open conversations. Threads are matched by marker, never by author (#190); all API failures (e.g. read-only fork tokens) warn and never fail the publish.
- **Still-open findings reply on their existing thread instead of duplicating** (#209): a carried finding that survives the review (`still_open` / `not_verifiable_from_delta` / unanswered) gets a short follow-up reply on its existing thread, stamped with the head SHA so re-runs never stack duplicates, and capped by `inline_findings_max`. The comment builder suppresses fresh anchored comments for findings that already have a live thread — one conversation per finding across N pushes. Findings the model marked `resolved` no longer produce fresh anchored comments either. A still-open finding whose thread disappeared falls back to a fresh comment as before.

## Fixes

- **Carry-forward now engages in `publish_mode: comment`** (#212): the comment-mode publish step never passed `FINDINGS` into the metadata marker, so `open_findings` was always empty and the fail-closed carry-forward (#193) silently never ran in that mode. Incremental scope and skip-on-unchanged were unaffected; the findings safety net now works in all three publish modes.

## Internal

- CI dogfooding pins bumped and smart-model vars wired explicitly (#199, #200).
