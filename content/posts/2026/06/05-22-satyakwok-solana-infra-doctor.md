---
title: Solana Infra Doctor
date: 2026-06-05 22:33:11 +00:00
tags:
  - satyakwok
  - GitHub Actions
draft: false
repo: https://github.com/satyakwok/solana-infra-doctor
marketplace: https://github.com/marketplace/actions/solana-infra-doctor
version: v0.12.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/satyakwok/solana-infra-doctor** to version **v0.12.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/solana-infra-doctor) to find the latest changes.

## What's Changed


- Add **`sol-doctor grpc compare`**: rank multiple Yellowstone gRPC endpoints for
  a workload profile. It reuses the single-endpoint `grpc check` probe (safe by
  default, slot-only, redaction-safe) for every endpoint **concurrently**, then
  scores and ranks them by verdict, connect latency, time-to-first-slot-update,
  slot freshness, and stream stability, and recommends a best/worst endpoint with
  an honest connect-versus-stream tradeoff note.
  - **Profiles** (`--profile`): `general` (balanced), `latency` (bots/MEV — weighs
    connect and first-event), and `indexer` (weighs slot freshness and stream
    stability).
  - **Per-endpoint tokens**: pass `--grpc` more than once and pair `--x-token-env`
    by position — provide none (all anonymous), one (shared across endpoints), or
    one per endpoint. As with `grpc check`, the token is read **only** from an
    environment variable, never from the command line, and is never printed,
    serialized, or logged.
  - Output is available as concise / `--verbose` human text, `--json` (with a
    `schema_version`), and a `--report <PATH>` Markdown report.
  - gRPC does not expose a genesis hash, so `grpc compare` cannot detect a
    mixed-network comparison; endpoints are assumed to be on the same Solana
    network (documented), and slot freshness is ranked relative to the freshest
    endpoint observed.


