---
title: Solana Infra Doctor
date: 2026-06-05 06:42:33 +00:00
tags:
  - satyakwok
  - GitHub Actions
draft: false
repo: https://github.com/satyakwok/solana-infra-doctor
marketplace: https://github.com/marketplace/actions/solana-infra-doctor
version: v0.11.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/satyakwok/solana-infra-doctor** to version **v0.11.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/solana-infra-doctor) to find the latest changes.

## What's Changed

## Yellowstone gRPC readiness diagnostics

Adds **`sol-doctor grpc check`** — a safe, local-first readiness check for a Yellowstone gRPC endpoint: *is it reachable, authenticated, responsive, streaming fresh slots, and suitable for a backend?*

- **Transport** (connect + TLS/HTTP-2), **Authentication** (optional `x-token`, env-only, never logged), **Unary** probes (`Ping`/`GetVersion`/`GetSlot`/`GetBlockHeight`/`GetLatestBlockhash`/`IsBlockhashValid`), and a narrow **slot-only** `Subscribe` stream (time-to-first-update, latest slot).
- Optional `--rpc` slot cross-check; concise/`--verbose` human, `--json` (with `schema_version`), and `--report` Markdown output; gRPC error-kind taxonomy + remediation hints.
- Safe by default: no transactions, no state changes, slots-only, every connection/request/stream bounded.

```bash
sol-doctor grpc check --grpc https://example-yellowstone-endpoint --x-token-env YELLOWSTONE_X_TOKEN
```

Adds `tonic` 0.14 + `yellowstone-grpc-proto` 12.4 (only `solana-pubkey`, not the full SDK). **MSRV is now 1.88.** The release-target matrix is unchanged. Existing `check`/`compare`/`ws` are unaffected.

Install: `cargo install solana-infra-doctor` · `cargo binstall solana-infra-doctor` · `uses: satyakwok/solana-infra-doctor@v1`
