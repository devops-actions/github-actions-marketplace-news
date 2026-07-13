---
title: Livvie Code Review
date: 2026-07-13 00:15:42 +00:00
tags:
  - 4itworks
  - GitHub Actions
draft: false
repo: https://github.com/4itworks/livvie_code_review
marketplace: https://github.com/marketplace/actions/livvie-code-review
version: v2
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/4itworks/livvie_code_review** to version **v2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/livvie-code-review) to find the latest changes.

## What's Changed

## v2 Release

- Retry empty LLM response bodies; classify retries by HTTP status
- Stop truncating large patches; skip oversized diffs to preserve line mapping
- Track failed file fetches and exclude from review
- Reject files exceeding per-file token budget instead of overflowing batches
- Remove outer pipeline concurrency wrapper to avoid double-gating
- Track failed batches separately and build rawFindings only from successes
- Add string-literal-aware JSON repair and stricter finding validation
- Half-open circuit breaker single-flight probe
- Template-literal handling in suggestion balance check
- Cross-file context truncation with marker token reservation
- Add configurable inputs: cross-file-budget, safety-margin, circuit-breaker-threshold
- Require node >=24
