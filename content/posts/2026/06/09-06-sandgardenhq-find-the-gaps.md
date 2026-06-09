---
title: Find the Gaps
date: 2026-06-09 06:57:43 +00:00
tags:
  - sandgardenhq
  - GitHub Actions
draft: false
repo: https://github.com/sandgardenhq/find-the-gaps
marketplace: https://github.com/marketplace/actions/find-the-gaps
version: v0.18.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/sandgardenhq/find-the-gaps** to version **v0.18.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/find-the-gaps) to find the latest changes.

## What's Changed

## Highlights

Two LLM-reliability fixes, both shaking out from real-world Gemini runs.

**Unknown models report as unknown, not as a tool-use failure.** Selecting an unrecognized model on a known provider now gives a clear "we've never heard of this model" error instead of a misleading capability rejection.

**Bifrost retries are enabled, so a single Gemini rate-limit no longer aborts an entire analyze.** Transient 429/503s now back off and retry instead of killing the run.

### Unknown-model errors

Specifying an unrecognized model on a known provider (e.g. `--llm-typical=gemini/gemini-3.1-flash`) was rejected by the typical-tier tool-use gate with `does not support tool use` — conflating "this model can't do tool use" with "we've never heard of this model," because `ResolveCapabilities` returns `ToolUse:false` for both the unknown-model fallback and the genuinely-known self-hosted `ollama`/`lmstudio` `*` wildcard rows.

- `validateTierConfigs` now distinguishes the two via a new `isKnownModel` helper.
- An unrecognized model reports `unknown model %q for provider %q (valid models: ...)`.
- The wildcard rows keep the original tool-use message; existing ollama-in-typical-tier behavior is unchanged.

### Retries on rate limits / overload

Gemini's "experiencing high demand" 503s (and any 429) aborted the entire drift pass on the first occurrence — even at `--workers=1` — because the app copied `schemas.DefaultNetworkConfig` (`MaxRetries=0`) and only overrode the timeout, so Bifrost's built-in retry-with-backoff layer never engaged. With nothing completing, the incremental drift-cache persister had nothing to save either.

- Retries are now enabled in `GetConfigForProvider` (`MaxRetries=6`, `1s→30s` backoff). Bifrost already handles 429/503 + rate-limit messages and respects context cancellation. This benefits every LLM call site uniformly; worker defaults are untouched.
- New `wrapBifrostError` classifies rate-limit / overload conditions (429/503, Bifrost's `IsRateLimitErrorMessage`, plus overload phrases it misses like "high demand") and wraps them with a sentinel `ErrRateLimited` and an actionable message naming the provider, model, and resume path.
- `isResumableLLMError` wires `ErrRateLimited` into the analyze restart-hint branch, so a rate-limit abort tells the user to wait and re-run — completed features are already cached.

## What's Changed
* fix(llm): report unknown tier models as unknown, not a tool-use error by @britt in https://github.com/sandgardenhq/find-the-gaps/pull/111
* fix(llm): enable Bifrost retries so Gemini rate limits don't abort analyze by @britt in https://github.com/sandgardenhq/find-the-gaps/pull/112


**Full Changelog**: https://github.com/sandgardenhq/find-the-gaps/compare/v0.18.0...v0.18.1

