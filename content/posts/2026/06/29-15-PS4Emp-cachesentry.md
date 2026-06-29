---
title: CacheSentry
date: 2026-06-29 15:14:12 +00:00
tags:
  - PS4Emp
  - GitHub Actions
draft: false
repo: https://github.com/PS4Emp/cachesentry
marketplace: https://github.com/marketplace/actions/cachesentry
version: v0.3.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/PS4Emp/cachesentry** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cachesentry) to find the latest changes.

## What's Changed

# CacheSentry v0.3.0

CacheSentry v0.3.0 introduces major runtime observability enhancements, validating offline CI protections against live API signals, and adds the first iteration of the CacheSentry Runtime Agent.

## New Features
- **Runtime Agent / LiteLLM Callback Plugin:** A new LiteLLM callback that acts as the first layer of the CacheSentry runtime agent. It asynchronously records structural cacheability metrics using bounded ephemeral state and safely extracts telemetry without keeping raw messages.
- **Runtime Validation Pack:** Validates offline structural predictions against observed runtime provider signals. It correlates projected cache reuse (prefix diff) with actual `cached_tokens` reported by APIs (LiteLLM, OpenTelemetry GenAI, OpenAI traces).
- **Live OpenAI Cached_Tokens Validation:** Added evidence that CacheSentry's projected metrics successfully correlate with live OpenAI responses. Controlled tests show that early dynamic fields (UUIDs) drop `cached_tokens` to 0, while stable prompts retain maximum cache reuse.

## Security & Privacy Audit
A stringent security and privacy audit was performed on the codebase:
- CacheSentry enforces strict privacy: **No raw prompts, raw responses, headers, API keys, Authorization values, or provider responses are stored.**
- The `RuntimeAgent` now utilizes a recursive privacy sanitizer (`cachesentry/runtime_agent/privacy.py`) that strictly drops API keys, secrets, bearer tokens, and headers from metadata.
- All docs and examples were scrubbed of any realistic-looking placeholder secrets.
- No API keys are required for standard CI testing, and no live APIs are called by default.

## Caveats
- **No Guaranteed Savings:** CacheSentry detects structural cacheability regressions (stable prefixes vs. dynamic fields). It does not guarantee exact cache hits, cost savings, or latency reduction in production, as runtime caching depends on provider-specific isolation, eviction, TTL, and routing policies.

## GitHub Marketplace Readiness
This release brings CacheSentry to full GitHub Marketplace readiness with a certified `action.yml` configuration and standard SARIF integration!
