---
title: Cullit — AI Release Notes
date: 2026-06-22 16:02:12 +00:00
tags:
  - mttaylor
  - GitHub Actions
draft: false
repo: https://github.com/mttaylor/cullit
marketplace: https://github.com/marketplace/actions/cullit-ai-release-notes
version: v3.4.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/mttaylor/cullit** to version **v3.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cullit-ai-release-notes) to find the latest changes.

## What's Changed

# Cullit v3.4.0

A reliability-focused release that hardens the release-notes generation pipeline used to dogfood Cullit itself.

## ✨ Features

- **Blocking release-notes generation** — `generate-release-notes.mjs` now exits non-zero if any requested AI provider fails to generate, instead of silently passing. A provider must produce both markdown and HTML to count as success. Use `--allow-partial` as a deliberate override when a provider is intentionally unavailable.
- **Automatic retry with backoff** — transient provider failures (network blips, rate limits, 5xx, timeouts) are now retried up to 2 times with exponential backoff (1.5s → 3s). Deterministic config errors (invalid provider, missing API key) are not retried.
- **Diagnosable failures** — provider failures now surface the real underlying error reason (e.g. API status text) rather than a generic "failed" message.

## 🐛 Fixes

- **Updated default Anthropic model** to `claude-sonnet-4-6` (the previous `claude-sonnet-4-20250514` had been retired and returned 404). Aligned all docs, examples, and the OpenAPI spec to the current dateless model ID.
- Ollama provider availability is now reported as an explicit failure rather than being silently dropped from the run.

## ✅ Tests

- 671 tests across 53 files passing.

## Contributors

@mttaylor

