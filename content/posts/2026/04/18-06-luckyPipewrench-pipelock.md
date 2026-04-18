---
title: Pipelock Agent Security Scan
date: 2026-04-18 06:27:05 +00:00
tags:
  - luckyPipewrench
  - GitHub Actions
draft: false
repo: https://github.com/luckyPipewrench/pipelock
marketplace: https://github.com/marketplace/actions/pipelock-agent-security-scan
version: v2.2.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/luckyPipewrench/pipelock** to version **v2.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipelock-agent-security-scan) to find the latest changes.

## Action Summary

Pipelock is an open-source AI agent firewall that enhances security by monitoring and controlling agent behavior. It prevents data exfiltration, injection, and unauthorized access by scanning outbound and inbound requests, sandboxing agent processes, and enforcing security policies. Additionally, it provides signed, independently verifiable action receipts to ensure transparency and accountability.

## What's Changed

## Changelog
* b799b2ad717545fb588025d9abc7a8ba4e6e564a Add posture capsule emit scaffold (#391)
* 388421d7c547f0de118f89a6897d913f926740f0 Add task boundaries for taint-scoped trust overrides (#384)
* cdd0a0f347a5c4fb6a5e110a749f50747fc41deb Harden exposure-based policy escalation across MCP transports (#383)
* 5b2b4821bd00df9f035a1e03e7bf837869ea7765 ci: bump govulncheck Go to 1.26.2 (GO-2026-4865 fix) (#376)
* d1187a72e6696f388d5dae67ca05cab0b0c76b54 ci: bump the ci-actions group with 3 updates (#395)
* 5d4ceae3fb5cd6838c64418d88f9c639af7548e4 deps: bump the go-deps group with 6 updates (#394)
* b3ea7c342f4e6ac3e1b6bb029eb3ed7b68926543 examples: add tool-response-injection reproduction harness (#387)
* 905ab199c5d4decfd5bf4195419a19c3f1564419 feat: RFC 9421 envelope signing + canonical policy hash + redirect refresh (#403)
* a8470d08fdaf912b974c9dc4b86ef71b49aaa06f feat: add pipelock session CLI for airlock inspection and recovery (#399)
* f0b3130d2dc0a82f9d24210e33664e49ee33f45d feat: add posture verify CLI with score model and CI gate (#397)
* f9d12ae6c45e65e6baa229ccd0393ccd71003fbc feat: cross-implementation receipt conformance suite (#379)
* 8182493c3a9170c2c95335158dd6b4655a8040a4 feat: emit signed action receipts from pipelock mcp proxy (#385)
* a24be7251c7a9adba4a1b1c83b08fe43238f6729 feat: extend receipt emission to fetch error paths, WebSocket, and A2A (#402)
* f1318e9ef64c0ae7594dd672ff4ef802635faa78 feat: mediation envelope — sideband metadata on proxied requests (#374)
* ac13a6661f85894773585cc56d7a03d06cb2a54b feat: per-pattern warn mode for DLP rollout safety (#392)
* 5c4dd61b56013cc2b6888ac5b8e8d8f5b258d44b feat: pipelock init sidecar + agent identity default + exemption audit emission (#400)
* a6bb095ba7153661cc50938670c71a211f6ef354 feat: standard tier source selection, rules status, core SSRF literal, RequiredFeatures (#373)
* 67cd7d7c34a6274986ab109546a8c56502b6f7bd feat: stego stripping, media policy, SVG active content hardening (#382)
* 058806b43a85e80d73e737516053ed3400caf5b1 feat: wire DLP warn audit emission into runtime lifecycle (#396)
* f5e654b48cedd46a7e3a279836e5286a9c1a4a4c fix: SVG active content bypass — unquoted event handlers and animation injection (#393)
* 28b3fa19fc1c80decd5d04831d550a39338c4bd2 fix: edge-trigger airlock from adaptive escalation (#388)
* 508ddf7712d626e5e81c0dc077e53c1d1d993d3c fix: emit block receipts on post-fetch deny paths, extract bundleExecCtx (#377)
* c75a8371b91c2beb74eee1d2e61881e33ebc2c90 fix: harden log context field routing (#389)
* 3d2a365491e7e40fab86f03544c15bdac8a91e75 fix: pre-tag hardening — media policy parity, receipt chain restart, posture integrity, CLI polish (#404)
* 9392aeda30ea146f3f344185460c33b549022dc7 fix: strict posture policy requires MCP server discovery (#398)
* 21d57a248aec247763cf3c7fe15a8405e04d784f fix: v2.2.0 pre-tag hardening bundle (#408)
* 8936062a9e1afd0353eac973544440ea2b5c669f refactor: typed LogContext constructors and URL field semantic split (#378)


