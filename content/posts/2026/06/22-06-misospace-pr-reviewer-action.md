---
title: Miso PR Review
date: 2026-06-22 06:49:53 +00:00
tags:
  - misospace
  - GitHub Actions
draft: false
repo: https://github.com/misospace/pr-reviewer-action
marketplace: https://github.com/marketplace/actions/miso-pr-review
version: v2.0.1
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/misospace/pr-reviewer-action** to version **v2.0.1**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/miso-pr-review) to find the latest changes.

## What's Changed

A small hardening patch on the 2.0 line. **No functional change for GitHub consumers** — on the supported path runtime behavior is identical to v2.0.0. This release is regression guards, docs, and two Forgejo-only correctness fixes. `@v2` now points here.

## Forgejo correctness (the only runtime changes; the GitHub path is byte-identical)

- **`platform_compare` now forwards `--jq`** on the Forgejo backend — it was silently dropped, so a `--jq` projection returned the whole compare object instead of the field. The `--jq` passthrough is now a single shared helper used by both `platform_pr_get` and `platform_compare` (#344).
- **The incremental-diff fetch only runs for a real `http(s)://` compare URL.** Forgejo's compare object omits `url`, so the fetch now skips cleanly instead of attempting a doomed request (#344).

## Hardening and docs

- **Outbound-HTTP User-Agent regression guard** (#345): `web_fetch` / `web_search` / `fetch_url` are now asserted to send a non-default `User-Agent`. urllib's default UA is what tripped the konflate Cloudflare bot fence; a future helper that forgets the header now fails in CI instead of in production.
- **Adversarial-fixture convention documented** (#345): every sanitizer/fence must have a test that feeds the boundary token itself, not just benign input.
- **Seam divergence + versioning notes refreshed** (#344, #346): the known Forgejo/GitHub shape differences are documented in the platform seam header, and the versioning convention reflects the current floating-major-tag scheme.

## Upgrading

Drop-in for any v2 consumer — `@v2` and `@v2.0.0` pins need no changes. The `v1` tag is unaffected.

**Full changelog:** https://github.com/misospace/pr-reviewer-action/compare/v2.0.0...v2.0.1

