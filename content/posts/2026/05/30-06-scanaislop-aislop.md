---
title: aislop Quality Gate
date: 2026-05-30 06:32:03 +00:00
tags:
  - scanaislop
  - GitHub Actions
draft: false
repo: https://github.com/scanaislop/aislop
marketplace: https://github.com/marketplace/actions/aislop-quality-gate
version: v0.9.6
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/scanaislop/aislop** to version **v0.9.6**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aislop-quality-gate) to find the latest changes.

## Action Summary

**aislop** is a GitHub Action and CLI tool that detects and remediates suboptimal code patterns often introduced by AI coding agents, such as unnecessary comments, unused code, and risky shortcuts. It automates code quality checks across seven languages, assigns a quality score (0-100) to every change, and provides functionality for scanning, reporting, and auto-fixing issues. Designed for fast, deterministic results without relying on runtime AI models, it helps teams maintain clean, high-quality codebases and integrates easily into CI pipelines.

## What's Changed

Patch release. Precision fixes for the `hardcoded-id` / `hardcoded-url` rules introduced in 0.9.5 (which over-flagged on real codebases), plus a `hallucinated-import` alias fix.

### Fixed
- **`ai-slop/hardcoded-id`** no longer flags env-var-name literals passed to config helpers (`optional("STRIPE_PRICE_ID", "")`), readable kebab/snake slugs and storage keys (rule keys, `STORAGE_KEY` values, CSS classes), or identifiers in DB migration files. Now requires a digit-bearing opaque token, so genuine provider/project IDs (`price_1Oabc…`, AWS keys, OAuth client IDs) are still caught.
- **`ai-slop/hardcoded-url`** no longer flags `localhost` / loopback URLs (dev defaults).
- **`ai-slop/hallucinated-import`** now recognises `psycopg2` as provided by `psycopg2-binary` (community-reported, #130).

Full notes in [CHANGELOG.md](https://github.com/scanaislop/aislop/blob/main/CHANGELOG.md).


## What's Changed
* fix(ai-slop): hardcoded-id/url false positives + release 0.9.6 by @heavykenny in https://github.com/scanaislop/aislop/pull/149
* fix(ai-slop): recognize psycopg2 provided by psycopg2-binary (#130) by @heavykenny in https://github.com/scanaislop/aislop/pull/151
* Release 0.9.6: promote develop to main by @heavykenny in https://github.com/scanaislop/aislop/pull/150


**Full Changelog**: https://github.com/scanaislop/aislop/compare/v0.9.5...v0.9.6
