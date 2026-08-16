---
title: Hyperlocalise CI
date: 2026-08-16 06:11:13 +00:00
tags:
  - hyperlocalise
  - GitHub Actions
draft: false
repo: https://github.com/hyperlocalise/hyperlocalise
marketplace: https://github.com/marketplace/actions/hyperlocalise-ci
version: v1.9.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of localizing applications using Hyperlocalise, a tool that integrates local-first CLI tools with CI automation and storage adapters. It solves problems related to managing translations within the engineering workflow instead of alongside it. Key capabilities include running localization tasks, evaluating translation quality, syncing with storage, reporting status, and providing workflows for generating localizations and handling CI processes.
---


Version updated for **https://github.com/hyperlocalise/hyperlocalise** to version **v1.9.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hyperlocalise-ci) to find the latest changes.

## Action Summary

This GitHub Action automates the process of localizing applications using Hyperlocalise, a tool that integrates local-first CLI tools with CI automation and storage adapters. It solves problems related to managing translations within the engineering workflow instead of alongside it. Key capabilities include running localization tasks, evaluating translation quality, syncing with storage, reporting status, and providing workflows for generating localizations and handling CI processes.

## What's Changed

## v1.9.0

`run` and `eval` can now use **OpenRouter** and **Vercel AI Gateway** as LLM providers. This release also fails closed on incomplete OpenAI-compatible completions, tightens Crowdin upload/error handling, and speeds up planning, scoring, and several file parsers.

**Full changelog:** https://github.com/hyperlocalise/hyperlocalise/compare/v1.8.28...v1.9.0

### Breaking changes

None.

### Features

- Add **Vercel AI Gateway** as an LLM provider for `run` and `eval`. Set `llm.profiles.<name>.provider` to `ai_gateway` and export `AI_GATEWAY_API_KEY`. Model IDs such as `openai/gpt-5.6-luna` pass through to `https://ai-gateway.vercel.sh/v1`. Image localization stays OpenAI-only. [#1848](https://github.com/hyperlocalise/hyperlocalise/pull/1848)
- Add **OpenRouter** as an LLM provider (`openrouter`). Auth via `OPENROUTER_API_KEY`; override the base URL with `OPENROUTER_BASE_URL`. Model IDs pass through unchanged. [#1804](https://github.com/hyperlocalise/hyperlocalise/pull/1804)

### Fixes

- Reject incomplete or failed OpenAI-compatible completions instead of writing truncated translations. Fail closed on choice-level errors, `finish_reason` of `error` / `length` / `content_filter`, and `tool_calls` / `function_call`. Transient 502/503/504 errors stay retryable. [#1810](https://github.com/hyperlocalise/hyperlocalise/pull/1810)
- Send the raw filename in the Crowdin `Crowdin-API-FileName` header instead of query-escaping it, so names with spaces are not mangled. [#1839](https://github.com/hyperlocalise/hyperlocalise/pull/1839)
- Align Crowdin `SourceStringsUpload` attributes with API v2 (`fileId`, `maxLen`, `omitempty` on optional fields). [#1823](https://github.com/hyperlocalise/hyperlocalise/pull/1823)
- Surface Crowdin 400 error payloads instead of a generic status message, and allow the documented project-level notification roles. [#1801](https://github.com/hyperlocalise/hyperlocalise/pull/1801)

### Performance

- Faster SHA-512 lock fingerprinting during planning (`hex.EncodeToString` instead of `fmt.Sprintf("%x")`): about **28%** faster on large catalogs, **11%** fewer allocations. [#1753](https://github.com/hyperlocalise/hyperlocalise/pull/1753)
- ICU parser plain-text fast path: about **19%** faster and **60%** fewer allocations on keys with no placeholders. [#1775](https://github.com/hyperlocalise/hyperlocalise/pull/1775)
- JS/TS locale module parser: about **35%** faster parse and **60%** fewer allocations; marshal about **30%** faster. [#1799](https://github.com/hyperlocalise/hyperlocalise/pull/1799)
- Mozilla Fluent parser: about **45%** fewer allocations via capacity hints and indent/comment fast paths. [#1786](https://github.com/hyperlocalise/hyperlocalise/pull/1786)
- Zero-allocation brace-placeholder scanner in eval scoring (replaces regex). [#1821](https://github.com/hyperlocalise/hyperlocalise/pull/1821)
- Lower allocation cost when building the selection catalog (pre-sized maps, `slices.SortFunc`). [#1809](https://github.com/hyperlocalise/hyperlocalise/pull/1809)
- Segment profile validation fast paths and slice capacity hints. [#1837](https://github.com/hyperlocalise/hyperlocalise/pull/1837)

### Tests

- Env loader, CLI telemetry, sync risk detection, SHA-512 fingerprint oracles, and brace-placeholder scanner coverage. [#1824](https://github.com/hyperlocalise/hyperlocalise/pull/1824) [#1811](https://github.com/hyperlocalise/hyperlocalise/pull/1811) [#1788](https://github.com/hyperlocalise/hyperlocalise/pull/1788) [#1774](https://github.com/hyperlocalise/hyperlocalise/pull/1774) [#1836](https://github.com/hyperlocalise/hyperlocalise/pull/1836)
- Parser coverage for Apple `.stringsdict`, CSV, Liquid target fallback, Fluent attribute indents, JS/TS locale edges, and the ICU plain-text fast path. [#1838](https://github.com/hyperlocalise/hyperlocalise/pull/1838) [#1755](https://github.com/hyperlocalise/hyperlocalise/pull/1755) [#1802](https://github.com/hyperlocalise/hyperlocalise/pull/1802) [#1798](https://github.com/hyperlocalise/hyperlocalise/pull/1798) [#1808](https://github.com/hyperlocalise/hyperlocalise/pull/1808) [#1784](https://github.com/hyperlocalise/hyperlocalise/pull/1784)
- Incomplete LLM completion and locale-path helper regressions. [#1820](https://github.com/hyperlocalise/hyperlocalise/pull/1820)

### Maintenance

- Bump Go dependencies (OpenAI SDK `v3.50.0`, WorkOS `v10.1.1`, OpenTelemetry `v1.45.0`). [#1751](https://github.com/hyperlocalise/hyperlocalise/pull/1751)
