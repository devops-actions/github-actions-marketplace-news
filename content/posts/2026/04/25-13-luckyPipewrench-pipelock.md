---
title: Pipelock Agent Security Scan
date: 2026-04-25 13:23:38 +00:00
tags:
  - luckyPipewrench
  - GitHub Actions
draft: false
repo: https://github.com/luckyPipewrench/pipelock
marketplace: https://github.com/marketplace/actions/pipelock-agent-security-scan
version: v2.3.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/luckyPipewrench/pipelock** to version **v2.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipelock-agent-security-scan) to find the latest changes.

## Action Summary

Pipelock is an open-source AI security tool designed to act as a firewall for AI agents, providing network scanning, process containment, and policy enforcement. It solves the problem of securing sensitive environments by generating independently verifiable, mediator-signed action receipts outside the agent's trust boundary, ensuring accountability and preventing unauthorized actions. Its key capabilities include agent-external attestation, proof of agent activities, and compatibility with various AI development tools and frameworks.

## What's Changed

## Changelog
* 11a48229206e45d26a852049cc25ef0da012a1f3 chore(pr-review): drop /review fast alias, bump default models to gpt-5.5 (#430)
* e07234f55e8a2f55e5f16c54dd79742a219a55d5 chore(release): v2.3.0 pre-tag polish (CHANGELOG, appVersion, docs) (#435)
* 50d2e69c4fb185db3df7f153ab60ce0ba10ad43b ci: bump the ci-actions group with 3 updates (#415)
* d3c59c40bb3f271ff4c72a074de89f095f4d5598 ci: harden composite action download retry budget (#410)
* 582f3cd879f7ee37b08524803583dbb293b06cbb deps: bump the go-deps group with 3 updates (#414)
* 0c0e18094865242c2e2db2e5a6549a78bf8bfb7d feat: class-preserving redaction library and config schema (#413)
* 66c3012d902485d969131993cbcee090837b7105 feat: finalize redaction v1c across proxy and MCP transports (#420)
* 9b47a15b2dd55b232cf1b13ca8b38248a4408061 feat: scan generic text/event-stream responses, not just A2A (#429)
* d7e8858d17580985150c3915743dbf86cded6bd9 feat: wire redaction into forward, intercept, reverse proxy paths (#416)
* 97e387bdcd2f934f39ac3d5034b86418e8d49288 fix(mcp/tools): strict verb-form regex for Dangerous Capability pattern (#423)
* b744180e84f4ba4e291f8bd25fa6724a37e32d48 fix(proxy)+docs: browser-shield media bypass + README receipt-positioning sharpen (#421)
* 2842494971e77d25e68bd32be695cb4b7e50ad2d fix(proxy): keep SSRF DNS failures adaptive-neutral (#434)
* c5f31c07e8350481ecc7b6c5ea8dfb58a0938266 fix(release): close v2.3.0 blockers in redaction, SSE scanning, and transport compression (#436)
* fca1529a52291555890df84be66288f06e9c696d fix(reloadwarn): detect same-length DLP coverage downgrades (#433)
* d08b60ec84351075a13685438e0e9416b7d69bd5 fix(sentry): drop context.Canceled from CaptureError (#412)
* b8ef3be0a6a26ebc6fc9628a2eee0662e110d26b fix: tolerate subprocess-exit flake in MCP test; dereference v2 tag (#409)
* 7ef3557f8291f426eb3079b9e20ef47108ebd35e refactor(config): split config.go into 7 focused files (#431)
* ea22c68bb38c351bc907bfe8ae8f08d48b73f61e refactor(mcp): extract EvaluateMCPInputGatesStdio and migrate ForwardScannedInput (#432)
* 0260067f0ce9f1fbdc19b300a8e5cad1b87c870e refactor(mcp): extract MCPFrame + MCPDecision helpers (#427)
* 4704bac157d353bb7afae4439519b185512b319c refactor(mcp): migrate parse + emission sites to Frame/Decision helpers (#428)
* 30cd3cb44e457b58c1bee9bf0950afa3f0bba6e6 refactor: consolidate runtime config resolution into Config.ResolveRuntime (#422)
* 79067ae0a17fd64b687abe8ef0cb59cb001336a0 refactor: extract runtime server lifecycle (#424)
* 256822da9738fb9c6040258a89c991ce2d3fe78a test(config): add canonical hash golden fixtures (#425)
* b9c708342a1a24543358b9c2c53c69f6494ae865 test(mcp): add transport-parity regression fixtures for TD-4 (#426)
* 437b769d94757bd03107df02b9cf87abe2cfec89 test(proxy): disable rate limiter in reload atomicity soak (#437)
* 7a3b7de4a5552b4e756eb930256468b7cbd616b1 test(proxy): raise reload-soak rate limit above stress, guard against regression (#438)


