---
title: Aptu Triage
date: 2026-06-17 07:37:52 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/aptu
marketplace: https://github.com/marketplace/actions/aptu-triage
version: v0.9.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/clouatre-labs/aptu** to version **v0.9.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aptu-triage) to find the latest changes.

## What's Changed

## What's Changed

### WASM Portability (`aptu-core`)

`aptu-core` is now compilable for `wasm32-unknown-unknown`, enabling embedding in Cloudflare Workers, browser extensions, and other WASM runtimes. No behavioral changes to the CLI.

- **Cache:** Introduce `FileCache<V>` / `InMemoryCache<V>` behind cfg-gate; WASM targets use the in-memory backend (#1333)
- **Config:** Introduce `ConfigSource` trait and `InMemoryConfigSource` for WASM environments (#1334)
- **Auth:** Introduce `EnvTokenProvider` and cfg-gate keyring behind native feature flag (#1335)
- **Deps:** Switch octocrab JWT backend from `aws-lc-rs` to `rust-crypto` for pure-Rust WASM compatibility (#1339)
- **Core:** cfg-gate `octocrab`, `process::Command`, `tokio`, and `backon` for `wasm32` targets (#1341)
- **Core:** Add WASM stubs for facade functions absent on `wasm32` target (#1344)

### CI
- Add `wasm32-unknown-unknown` `cargo check` job to CI matrix (#1345)
- Fix WASM cache key collision; add explicit `rustup target add` after cache restore (#1348)
- Bump stale action SHAs to latest pinned versions (#1346)
- Harden workflows with concurrency groups, bash arrays, and inline docs (#1329)

### Chores
- **Deps:** Update GitHub Actions (#1330)
- **Deps:** Lock file maintenance, non-major bumps (#1331)
- **Deps:** Bump `serial_test` to 3.5.0, `aptu-coder-core` to 0.16.3 (#1328)

**Full changelog:** https://github.com/clouatre-labs/aptu/compare/v0.8.7...v0.9.0

