---
title: HumaneProxy Safety Benchmark
date: 2026-07-05 21:55:23 +00:00
tags:
  - Vishisht16
  - GitHub Actions
draft: false
repo: https://github.com/Vishisht16/Humane-Proxy
marketplace: https://github.com/marketplace/actions/humaneproxy-safety-benchmark
version: v0.5.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Vishisht16/Humane-Proxy** to version **v0.5.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/humaneproxy-safety-benchmark) to find the latest changes.

## What's Changed

### Highlights

- 🔭 **OpenTelemetry distributed tracing** (#7) — export pipeline traces to Jaeger, Grafana Tempo, or Datadog via the new `[telemetry]` extra. Every request produces a `pipeline.classify` span with privacy-safe attributes (category, score, stage reached, message hash — never raw text). Zero overhead when disabled.
- 🌍 **Region-aware care response** — set `safety.categories.self_harm.region: "IN"` (any ISO country code) to surface that country's crisis resources first, while always keeping the full international list.
- ☎️ **Crisis helplines for new countries** (#26) — Japan, South Korea, Spain, Italy, Mexico, New Zealand and more join the existing US/IN/GB/AU/CA/DE/FR/BR/ZA resources.
- 🗄️ **Storage-backend consistency** (#37) — the admin API, CLI, and MCP tools now route through the storage factory instead of raw SQLite, so Redis and PostgreSQL deployments see the same data everywhere.
- 📊 **Query upgrades** — escalation queries support date filtering (`date_from`/`date_to`) and sorting across all three backends.

### Fixed

- Multimodal content arrays: `/chat` extracts text from OpenAI-style content parts and no longer errors on string or malformed message content (#44, #45, #48).
- Empty `/chat` request bodies return a clean 400 (#41).
- CodeQL SQL-injection alerts resolved with statically generated SQL templates; timezone conversion and CSV `triggers` serialization fixed in escalation export.

### Security

- Admin Bearer-token comparison hardened against timing attacks with `hmac.compare_digest` (#18, #21).
- HTTP MCP hardened: binds to `127.0.0.1` by default, warns on public binds without a token, supports Bearer auth via `HUMANE_PROXY_ADMIN_KEY`, and bounds audit-log queries (#17).

### Docs & Tests

- Mermaid.js architecture diagram, README table of contents, corrected Stage-1 transition labels.
- New test coverage: Unicode/leet-speak heuristic edge cases, pipeline config validation, malformed payloads, decay-weighted-mean edge cases.

**Full Changelog**: https://github.com/Vishisht16/Humane-Proxy/compare/v0.4.0...v0.5.0
