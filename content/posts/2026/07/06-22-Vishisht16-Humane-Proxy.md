---
title: HumaneProxy Safety Benchmark
date: 2026-07-06 22:57:29 +00:00
tags:
  - Vishisht16
  - GitHub Actions
draft: false
repo: https://github.com/Vishisht16/Humane-Proxy
marketplace: https://github.com/marketplace/actions/humaneproxy-safety-benchmark
version: v0.6.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Vishisht16/Humane-Proxy** to version **v0.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/humaneproxy-safety-benchmark) to find the latest changes.

## What's Changed

This release is about doing the same work faster and scaling it across workers—three independent performance wins, each behind an opt-in extra with a clean fallback.

### Added

- **ONNX Runtime Stage-2 backend** (`stage2.backend`, env `HUMANE_PROXY_STAGE2_BACKEND`): Stage 2 can now run the embedding model on its pre-exported ONNX graph via a new `onnx` extra (`onnxruntime` + `tokenizers` + `huggingface_hub`)—**no PyTorch**, roughly 2 GB lighter to install, and faster on CPU. The default `"auto"` prefers ONNX when installed and falls back to `sentence-transformers`; both produce numerically equivalent embeddings, verified by an equivalence test suite (including long-input truncation parity). Model, anchor, and result caches are keyed per backend.

- **Redis-backed trajectory analysis** (`trajectory.backend: redis`, env `HUMANE_PROXY_TRAJECTORY_BACKEND`): Session risk windows move into Redis sorted sets with an atomic Lua read-append-trim, so every uvicorn worker shares one consistent view of a session's trajectory (the in-memory default tracks per process). Reuses `storage.redis.url` unless `trajectory.redis.url` is set. Sessions auto-expire via TTL (default 2× the decay half-life), fall back to in-memory tracking with a logged warning when Redis is unavailable, and `DELETE /admin/sessions/{id}` now erases the Redis trajectory keys as well.

### Changed

- **orjson JSON fast path** (new optional `perf` extra): When installed, the proxy serializes every `/chat` response through an orjson-backed response class. Storage trigger serialization, Stage-3 response parsing, and integration tool output also route through an internal shim. Without the extra, everything falls back to the standard library `json` module with identical behavior.

### Install

```bash
pip install humane-proxy[onnx]     # Stage 2 without PyTorch
pip install humane-proxy[perf]     # orjson fast path
pip install humane-proxy[redis]    # shared trajectory + storage
pip install humane-proxy[all]      # everything
```

**Full Changelog:** https://github.com/Vishisht16/Humane-Proxy/compare/v0.5.6...v0.6.0
