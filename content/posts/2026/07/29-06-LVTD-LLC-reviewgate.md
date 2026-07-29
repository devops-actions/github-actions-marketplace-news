---
title: ReviewGate
date: 2026-07-29 06:52:32 +00:00
tags:
  - LVTD-LLC
  - GitHub Actions
draft: false
repo: https://github.com/LVTD-LLC/reviewgate
marketplace: https://github.com/marketplace/actions/reviewgate
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  ReviewGate is a GitHub Actions-based tool that automates PR reviews by using OpenRouter's API key. It provides a 0-5 confidence score, a canonical PR summary comment, and structured JSON output. ReviewGate does not repair code but focuses on improving the quality of pull requests based on user feedback and model evaluation.
---


Version updated for **https://github.com/LVTD-LLC/reviewgate** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reviewgate) to find the latest changes.

## Action Summary

ReviewGate is a GitHub Actions-based tool that automates PR reviews by using OpenRouter's API key. It provides a 0-5 confidence score, a canonical PR summary comment, and structured JSON output. ReviewGate does not repair code but focuses on improving the quality of pull requests based on user feedback and model evaluation.

## What's Changed

## Highlights

- Reviewer/provider failures no longer become fake `0/5` code-quality outcomes.
- Inconclusive runs emit `status: review_error`, `score: null`, and sanitized
  typed `angle_errors` with explicit retryability.
- Canonical summaries preserve the latest valid score across inconclusive
  reruns, including migration from legacy summary state.
- Failed GitHub Checks expose the typed reviewer errors so agents can decide
  whether to retry without first downloading the artifact.

## Artifact contract migration

This release introduces the version 2 artifact schema at
`schemas/reviewgate-review-output-v2.schema.json`. Consumers of v0.2.0 and later
must accept a nullable top-level score and the `review_error` status. The
original `schemas/reviewgate-review-output.schema.json` remains the immutable
v0.1.x contract.

## Retry behavior

Timeouts, transport failures, empty output, malformed output, and transient
provider failures are retryable. Permanent HTTP 4xx responses are not retryable,
except 408 and 429. Provider diagnostics are sanitized before publication.

## Validation

CI, the complete Rust workspace suite, fixture generation, both public schemas,
skill validation, clippy, formatting, the site build, Rust dependency audit,
and a two-iteration Greptile review all passed. Greptile finished at 5/5 with
zero unresolved comments.

**Full Changelog**: https://github.com/LVTD-LLC/reviewgate/compare/v0.1.13...v0.2.0

