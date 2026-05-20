---
title: aislop Quality Gate
date: 2026-05-20 07:00:38 +00:00
tags:
  - scanaislop
  - GitHub Actions
draft: false
repo: https://github.com/scanaislop/aislop
marketplace: https://github.com/marketplace/actions/aislop-quality-gate
version: v0.9.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/scanaislop/aislop** to version **v0.9.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aislop-quality-gate) to find the latest changes.

## Action Summary

**Aislop** is a GitHub Action designed to enforce engineering standards and act as a quality gate for AI-generated code. It scans codebases to identify and score issues such as dead code, unused imports, oversized functions, and other potential artifacts left by AI tools, providing deterministic analysis using regex and AST without relying on large language models. The action automates tasks like code scanning, auto-fixing issues, and integrating feedback workflows with various coding agents, helping developers maintain clean, high-quality code across multiple languages.

## What's Changed

Patch fix for a regression introduced during the 0.9.1 merge.

## Install

```bash
npx aislop@0.9.2 scan .
# or globally:
npm i -g aislop@0.9.2
```

## Fixed

**Restore `isBuildCacheFile` in the source-file filter (#117).** PR #113 added an exclusion for Vite config-bundle cache artifacts (`*.timestamp-NNN-XXX.{js,mjs,cjs}`). PR #47's `--include` rewrite of the filter chain dropped the call from the source-file walk, so repos that commit those cache files (e.g. `vite.config.ts.timestamp-…mjs` from Storybook) surfaced three spurious `ai-slop/hallucinated-import` errors per scan. Restored the call and added a regression test that creates real Vite cache filenames plus one false-match to guard against future filter rewrites.

See [`CHANGELOG.md`](https://github.com/scanaislop/aislop/blob/main/CHANGELOG.md#092-2026-05-19) for the full entry.


## What's Changed
* fix(scan): restore isBuildCacheFile in the source-file filter chain by @heavykenny in https://github.com/scanaislop/aislop/pull/117
* chore: release v0.9.2 by @heavykenny in https://github.com/scanaislop/aislop/pull/118
* release: promote develop → main (v0.9.2) by @heavykenny in https://github.com/scanaislop/aislop/pull/119


**Full Changelog**: https://github.com/scanaislop/aislop/compare/v0.9.1...v0.9.2
