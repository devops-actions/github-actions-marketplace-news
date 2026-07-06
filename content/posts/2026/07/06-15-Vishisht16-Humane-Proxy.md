---
title: HumaneProxy Safety Benchmark
date: 2026-07-06 15:20:43 +00:00
tags:
  - Vishisht16
  - GitHub Actions
draft: false
repo: https://github.com/Vishisht16/Humane-Proxy
marketplace: https://github.com/marketplace/actions/humaneproxy-safety-benchmark
version: v0.5.6
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Vishisht16/Humane-Proxy** to version **v0.5.6**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/humaneproxy-safety-benchmark) to find the latest changes.

## What's Changed

This release rolls up the 0.5.x bug-fix series (0.5.1-0.5.6) — the result of a full audit of the codebase against its documentation. Every fix ships with regression tests: the suite grew from 298 to 353 tests, with zero skips and zero expected failures.

### Critical fixes

- **Email-only alert configs never dispatched** — the webhook gate checked a key that does not exist in the config schema. If SMTP was your only alert channel, you received nothing. (0.5.1)
- **Redis rate limiting never triggered** — the per-session counter was set once and never incremented, allowing unlimited alerts. Replaced with an atomic Lua `INCR`+`EXPIRE` script that also removes the multi-worker race from #5. (0.5.1)
- **LlamaGuard category mapping** — S9 (Indiscriminate Weapons) was mapped to `safe` and S10 (Hate) to `self_harm`, so weapons queries passed Stage 3 unflagged while hate speech received a suicide-crisis care response. (0.5.1)
- **User configuration finally reaches the classifiers** — `heuristics:` and `trajectory:` overrides in `humane_proxy.yaml`, and the documented `HUMANE_PROXY_DECAY_HALF_LIFE` env var, were silently ignored because two modules read config through a legacy package-only loader at import time. (0.5.2)
- **HTTP MCP auth crashed with real fastmcp** — the server imported a `BearerTokenAuth` class no fastmcp release exports, so setting `HUMANE_PROXY_ADMIN_KEY` (exactly as the README instructs) killed `mcp-serve` at import. Rebuilt on `StaticTokenVerifier`; the `[mcp]` extra now requires `fastmcp>=2.11`. (0.5.3)

### Behavior improvements

- **Span-aware context reducers** — a keyword and an intent pattern firing on the same phrase now count as one signal, so "how to make a bomb in minecraft" is correctly reduced to safe, while separate harmful expressions in one message still disable reduction entirely. (0.5.5)
- **The audit log is exempt from the alert rate limit** — every escalation is now persisted; the quota only caps operator notifications. Previously, events past the quota were dropped entirely, blinding the audit trail for exactly the sessions escalating hardest. `escalate()` results gained an `alerted` field. (0.5.5)
- **Right to erasure is now complete** — `DELETE /admin/sessions/{id}` clears live in-memory trajectory state, and the Redis backend cleans its category indexes on session deletion. (0.5.1)
- **Malformed pipeline config no longer crashes classification** — invalid `enabled_stages` values fall back to `[1]` and non-numeric thresholds coerce to safe defaults, with logged warnings. (0.5.5)

### Security

- Webhook logs show only the scheme and host of webhook URLs — Slack/Discord/Teams routing tokens live in the URL path and were previously logged.
- Webhook error logs record HTTP status and response length only; bodies moved to DEBUG.
- The reverse proxy no longer echoes raw upstream response bodies to clients.

### Performance

- **Shared HTTP connection pool** — the proxy, all webhook dispatchers, and all three Stage-3 classifiers reuse one `httpx.AsyncClient` instead of a fresh TCP+TLS handshake per call. (0.5.4)
- **Embedding caches** — Stage-2 anchor sentences are encoded once per process, and a bounded 5-minute TTL cache serves repeated identical messages without re-encoding. (0.5.4)
- **Singleton pipelines** — MCP tools and the LlamaIndex/CrewAI/AutoGen integrations no longer rebuild the full pipeline (including Stage-2 setup) on every call. (0.5.4)

### Repository & tooling

- **No-emoji policy** — all emojis removed from source, output, and docs; severity markers are now bracketed ASCII tags (`[SELF-HARM]`, `[ALERT]`, `[FLAGGED]`, ...). CI-enforced by a new repository-wide scan test. Also fixes `humane-proxy init` crashing with `UnicodeEncodeError` on default Windows (cp1252) consoles. (0.5.6)
- **Decluttered layout** — compliance and launch docs under `docs/`, community files under `.github/`, the Glama marketplace Dockerfile under `deploy/glama/`; `requirements.txt` removed (`pyproject.toml` is the single dependency source). (0.5.6)
- **GitHub Action fixed** — defaults to the `ml` extra so the benchmark no longer fails its own sample dataset in `--ci` mode. (0.5.2)
- `.env.example` now includes all documented secrets (`OPENAI_API_KEY`, `GROQ_API_KEY`, `HUMANE_PROXY_ADMIN_KEY`) with purpose comments (#63), and the docs correctly explain that `.env` files are not auto-loaded. (0.5.3, 0.5.5)
- Documented OTel spans now all exist (`stage1.heuristics`, `session_id` attribute), and test isolation was hardened (per-test storage reset; the MCP auth test now runs against real fastmcp instead of a mock that masked the crash). (0.5.3, 0.5.4)

**Full Changelog**: https://github.com/Vishisht16/Humane-Proxy/compare/v0.5.0...v0.5.6
