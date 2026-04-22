---
title: UA-.NETStandard Test Suite
date: 2026-04-22 21:26:01 +00:00
tags:
  - php-opcua
  - GitHub Actions
draft: false
repo: https://github.com/php-opcua/uanetstandard-test-suite
marketplace: https://github.com/marketplace/actions/ua-netstandard-test-suite
version: v1.2.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/php-opcua/uanetstandard-test-suite** to version **v1.2.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ua-netstandard-test-suite) to find the latest changes.

## Action Summary

The **UA-.NETStandard Test Suite** is a robust tool designed for integration testing of OPC UA client libraries across various programming languages. It provides a realistic test environment with 10 pre-configured OPC UA server instances that cover all major security policies, authentication methods, and communication modes as defined by the OPC UA specification. Key capabilities include testing connectivity, security, authentication, and interoperability, as well as supporting dynamic variables, events, alarms, historical data, and advanced OPC UA features, all deployable with minimal setup via Docker.

## What's Changed

## v1.2.0 — 2026-04-22

### Added — Security Key Service (service 11, port 4851)

- **`opcua-sks` service** — new classic OPC UA server instance that boots the shared `TestServer` image with `OPCUA_ENABLE_SKS=true`. Exposes the OPC UA Part 14 §8.4.2 `GetSecurityKeys` method under `ns=1;s=TestServer/SecurityKeyService`, letting PubSub subscriber-side clients (e.g. `php-opcua/opcua-client-ext-pubsub`'s `SksGroupKeyProvider`) exercise the real RPC path against a live server instead of only `MockClient`.
- **`SecurityKeyServiceBuilder`** under `src/TestServer/AddressSpace/` — mirrors the existing builder pattern, self-contained, opt-in via `EnableSks` config flag so the other 10 server instances are unaffected.
- **Env-driven config** — `OPCUA_ENABLE_SKS`, `OPCUA_SKS_GROUP_ID`, `OPCUA_SKS_POLICY_URI`, `OPCUA_SKS_TOKEN_ID`, `OPCUA_SKS_SIGNING_KEY_HEX`, `OPCUA_SKS_ENCRYPTING_KEY_HEX`, `OPCUA_SKS_KEY_NONCE_HEX`, `OPCUA_SKS_TIME_TO_NEXT_KEY_MS`, `OPCUA_SKS_KEY_LIFETIME_MS`. All off by default on the other services; on only for the dedicated `opcua-sks` service.
- **Action update** — `sks` is a new option for the `servers` CSV input in `action.yml`.
- **Docs** — new section "11. Security Key Service" in `docs/servers.md`, new row in the endpoint table of `docs/ci-integration.md`, new row in `README.md` "What's Inside".
- **Test-only scope** — hardcoded keys, no caller authentication, no rotation scheduling, no revocation. Real SKS deployments are expected to do all of the above.

### Added — PubSub publisher (service 12, port 4850)

- **`opcua-pubsub` service** — new UA-.NETStandard UDP+UADP publisher built from `src/TestPublisher/` (separate Dockerfile `Dockerfile.publisher`, separate `.csproj` against the `OPCFoundation.NetStandard.Opc.Ua.PubSub` NuGet package). Broadcasts a deterministic `DataSet` (counter / timestamp / sine-value) every 500 ms, bringing real UADP interop coverage for Part 14 subscriber-side clients (e.g. `php-opcua/opcua-client-ext-pubsub`).
- **Env-driven configuration** — same `OPCUA_*` prefix convention as the TestServer services. `OPCUA_URL`, `OPCUA_NETWORK_INTERFACE`, `OPCUA_PUBLISHER_ID`, `OPCUA_WRITER_GROUP_ID`, `OPCUA_DATASET_WRITER_ID`, `OPCUA_DATASET_NAME`, `OPCUA_PUBLISH_INTERVAL_MS`, `OPCUA_TICK_INTERVAL_MS`, `OPCUA_LOG_LEVEL` — one image, reconfigure via compose env.
- **Networking** — publisher + `opcua-pubsub-relay` sidecar pair. Publisher sends unicast UADP to the relay on a shared compose bridge (`pubsub-net`); the relay forwards each datagram to `host.docker.internal:14850`. Subscribers on the physical host listen on `127.0.0.1:14850` (or `0.0.0.0:14850`). Works identically on Docker Engine bare-metal (GitHub Actions runners, CI) and Docker Desktop (Linux / macOS / Windows) — multicast over the VM boundary is sidestepped entirely.
- **Security** — unsecured (mode `None`). For signed and encrypted PubSub streams subscribers pair this with the `opcua-sks` service (service 11) — full end-to-end secured publisher + SKS is planned follow-up work.
- **Action update** — `pubsub` is a new option for the `servers` CSV input in `action.yml`.
- **Docs** — new section "12. PubSub Publisher" in `docs/servers.md`, new row in the endpoint table of `docs/ci-integration.md`, new row in `README.md` "What's Inside".

### Changed

- **Pinned UA-.NETStandard NuGet version to `1.5.378.134`** (previously `1.5.*`). The wildcard would auto-upgrade on every Docker build, which defeats the purpose of a stable interop counterpart: any upstream change to protocol semantics would silently break every client test run until someone noticed. Pinning makes NuGet upgrades an explicit decision.
  - **Why 1.5.378.134 specifically:** it is the latest stable (released 2026-03-26) that predates the "Secure channel enhancements 2025 11" rework in UA-.NETStandard master (commit [`d188383`](https://github.com/OPCFoundation/UA-.NETStandard/commit/d188383), merged 2026-04-16). That rework turns on strict OPC UA 1.05.4 ECC behaviour — first sequence number for ECC policies MUST be 0, with wrap at `UInt32.MaxValue` — and adds `_AesGcm` / `_ChaChaPoly` policy variants. A client speaking 1.05.3 ECC against a strict server would fail at the first message.
  - **When to bump:** once a client in the ecosystem (e.g. `php-opcua/opcua-client`) ships the 1.05.4 ECC fix, coordinate a bump here and in the client's integration tests in the same release train.

