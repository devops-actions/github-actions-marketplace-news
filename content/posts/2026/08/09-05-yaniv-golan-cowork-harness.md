---
title: cowork-harness
date: 2026-08-09 05:41:52 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.21.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action is a tool designed to automate and test Claude Cowork skills without using the actual Desktop application. It mimics the runtime environment closely, allowing developers to run tests across various scenarios in a headless manner, including CI pipelines. The action supports both protocol-only and live test tiers, requiring different setups for token-based or desktop-based testing.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.21.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

This GitHub Action is a tool designed to automate and test Claude Cowork skills without using the actual Desktop application. It mimics the runtime environment closely, allowing developers to run tests across various scenarios in a headless manner, including CI pipelines. The action supports both protocol-only and live test tiers, requiring different setups for token-based or desktop-based testing.

## What's Changed


### Fixed

- **The agent-image pin silently skipped the full-parity variant.** `doctor` picked the local registry
  digest by matching only the ghcr-qualified repository (`ghcr.io/owner/name@sha256:…`). Docker records a
  RepoDigest per repository the image is known by, and that set is not predictable: `cowork-agent-full:2`
  carries only the bare `cowork-agent-full@sha256:…`. The ghcr-only filter missed it, the image was
  reported as a local build, and the pin check quietly did nothing for every full-parity user — a skipped
  check reads exactly like a passing one. Both forms are now matched, with the ghcr-qualified digest
  preferred when they disagree.
- **A `main` CI run could be cancelled, making a good commit unpublishable.** `ci.yml` cancelled
  in-progress runs for any ref; `require-ci-success` requires `conclusion == success` for the SHA it
  checks, and `cancelled` is not it. Merging two PRs minutes apart left the earlier merge commit
  unpublishable. Cancellation now applies to pull-request refs only.

### Changed

- **The freshness check's "works offline" property is now a guard, not a claim.** It was argued from the
  absence of a registry call, and an absence cannot fail when someone reintroduces one. A test now asserts
  the path contains exactly one spawn — the local `image inspect` — and no registry command. Comments are
  stripped before the check, so the guard cannot be satisfied by deleting its own rationale.
- **`publish-image.yml` gains a `dry_run` input** (maintainer-facing): it runs the CI gate and the
  immutable-tag collision guard, then stops before building or pushing. The guard's *refusal* path was
  otherwise untestable without risking a repointed `:2-r<N>`, which is the one thing a digest pin cannot
  survive.



## What's Changed
* release: 1.21.1 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/112


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1...v1.21.1
