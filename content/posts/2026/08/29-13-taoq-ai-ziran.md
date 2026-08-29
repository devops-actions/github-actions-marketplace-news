---
title: ZIRAN Agent Security Scan
date: 2026-08-29 13:56:42 +00:00
tags:
  - taoq-ai
  - GitHub Actions
draft: false
repo: https://github.com/taoq-ai/ziran
marketplace: https://github.com/marketplace/actions/ziran-agent-security-scan
version: v0.38.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  ZIRAN is an AI-driven security tool designed to identify vulnerabilities in AI agents, including their capabilities and potential attack chains. It models agents as graph structures and conducts multi-phase campaigns to detect dangerous tool chains, execution-level side effects, and multi-phase exploits that conventional scanners might overlook. The tool uses machine learning to analyze the interactions between agent functions and tools, providing a comprehensive understanding of the agent's behavior and vulnerabilities.
---


Version updated for **https://github.com/taoq-ai/ziran** to version **v0.38.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ziran-agent-security-scan) to find the latest changes.

## Action Summary

ZIRAN is an AI-driven security tool designed to identify vulnerabilities in AI agents, including their capabilities and potential attack chains. It models agents as graph structures and conducts multi-phase campaigns to detect dangerous tool chains, execution-level side effects, and multi-phase exploits that conventional scanners might overlook. The tool uses machine learning to analyze the interactions between agent functions and tools, providing a comprehensive understanding of the agent's behavior and vulnerabilities.

## What's Changed

## [0.38.0](https://github.com/taoq-ai/ziran/compare/v0.37.1...v0.38.0) (2026-08-29)


### Features

* **observability:** add --log-format flag and bind campaign/phase/vector log context ([de1acee](https://github.com/taoq-ai/ziran/commit/de1aceed6af21d17cec0fd6675886e4583acb0a7))
* **observability:** configure structlog with json/text renderers and context helpers ([8aef7f1](https://github.com/taoq-ai/ziran/commit/8aef7f16d1d3744c9637d5b29b30dd73b3d3552f))
* **observability:** metrics CLI flags, Prometheus scrape test, Grafana dashboard, docs ([4d7294f](https://github.com/taoq-ai/ziran/commit/4d7294f28306288b615c5440d3ff5962b081b69c))
* **observability:** OTel metrics export (Prometheus-compatible) ([f71e238](https://github.com/taoq-ai/ziran/commit/f71e23871bf01726292617b26a564b0be4470adb))
* **observability:** OTel metrics module + campaign/phase/attack instrumentation ([cbe49a3](https://github.com/taoq-ai/ziran/commit/cbe49a300f7bf5549b5d215ccb8d318dca384ab1))
* **observability:** structured JSON logging via structlog ([4981da2](https://github.com/taoq-ai/ziran/commit/4981da29e97637467e56fb1f291783092d24014f))
* **runtime:** add FlushThrottle for incremental checkpoint writes ([9596291](https://github.com/taoq-ai/ziran/commit/959629191b7acb5160136a7d6f74c5555b5a83ad))
* **runtime:** add on_vector_complete hook to PhaseExecutor ([14c2752](https://github.com/taoq-ai/ziran/commit/14c2752af079be1ced7e8bc94200c56ad558305d))
* **runtime:** incremental mid-phase checkpoint flush with --checkpoint-flush-interval ([9fe7940](https://github.com/taoq-ai/ziran/commit/9fe794012b6c6024eb9394320008a682366811a8))
* **runtime:** partial-phase checkpoint resume ([6652f7f](https://github.com/taoq-ai/ziran/commit/6652f7f54af77852e7e4ab1549d4906200174d74))
* **runtime:** rate-limiting and retry with exponential backoff for LLM provider calls ([17def68](https://github.com/taoq-ai/ziran/commit/17def683816dc16793e8469ae9fe07d73b7923d0))
* **runtime:** token-bucket limiter and retry-with-backoff for LLM calls ([#281](https://github.com/taoq-ai/ziran/issues/281)) ([06d6ee3](https://github.com/taoq-ai/ziran/commit/06d6ee3c949a9feec6e23dea27cc8e89ff0f74d0))
* **runtime:** wire rate-limited LLM client into factory and CLI ([#281](https://github.com/taoq-ai/ziran/issues/281)) ([e8bfc60](https://github.com/taoq-ai/ziran/commit/e8bfc609e8d5986ab3bc5ef601d6d8d852c9d856))


### Bug Fixes

* **alerting:** never create a GitHub issue when dedup cannot be confirmed ([5cda14d](https://github.com/taoq-ai/ziran/commit/5cda14df4d8c2c959f472a0a69ff36b05d99584e))
* **alerting:** never create a GitHub issue when dedup cannot be confirmed ([0c6e89a](https://github.com/taoq-ai/ziran/commit/0c6e89aff5ed43f09d92a836fe2180309659ac3a))
* **anthropic:** detect AsyncAnthropic clients under anthropic 1.x ([e33dd7c](https://github.com/taoq-ai/ziran/commit/e33dd7cf273bcb7b69030d8e37ed08b1dcf536fa))
* **observability:** guard provider label read and ignore prometheus_client imports ([55c96ea](https://github.com/taoq-ai/ziran/commit/55c96eae09bedc4784c219b3e0ae084bfdf6238d))
* **security:** bump mcp and json-repair to clear the audit gate ([f264689](https://github.com/taoq-ai/ziran/commit/f26468974c34e27f27baa637da18672a2a78a8fd))
* **security:** bump mcp and json-repair to clear the audit gate ([#370](https://github.com/taoq-ai/ziran/issues/370) tier 2) ([01c5fd7](https://github.com/taoq-ai/ziran/commit/01c5fd79c26c8a872029552ab814a40ba8f3267a))
* **security:** bump pillow, pyasn1, bedrock-agentcore and websockets ([56cc289](https://github.com/taoq-ai/ziran/commit/56cc289da5d5e16ec8a03b114189030c71f20155))
* **security:** bump pillow, pyasn1, bedrock-agentcore and websockets ([#370](https://github.com/taoq-ai/ziran/issues/370) tier 1) ([665c7a1](https://github.com/taoq-ai/ziran/commit/665c7a114df62c415bc68b91bb4ad7503598f547))
* **security:** clear new pip-audit advisories (aiohttp, cryptography, chromadb) ([bae6690](https://github.com/taoq-ai/ziran/commit/bae66908da0d277d37121fd9dded47f2b61dd7b7))
* **security:** clear remaining npm audit high-severity advisories in ui ([f0b3768](https://github.com/taoq-ai/ziran/commit/f0b37681986d5aac025196416add67363a43a83e))
* **security:** clear remaining npm audit high-severity advisories in ui ([e99c675](https://github.com/taoq-ai/ziran/commit/e99c675e22c2a082af51d98599332c38cfca2def)), closes [#373](https://github.com/taoq-ai/ziran/issues/373)
* **typing:** ignore missing anthropic stubs when extra not installed ([7e1249e](https://github.com/taoq-ai/ziran/commit/7e1249ecebcaa8b774fa2f439f24b0f0dde37bda))

## What's Changed
* chore: bump the python-dependencies group across 1 directory with 4 updates by @dependabot[bot] in https://github.com/taoq-ai/ziran/pull/355
* fix(security): bump pillow, pyasn1, bedrock-agentcore and websockets (#370 tier 1) by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/371
* fix(security): bump mcp and json-repair to clear the audit gate (#370 tier 2) by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/372
* chore: bump postcss from 8.5.15 to 8.5.23 in /ui by @dependabot[bot] in https://github.com/taoq-ai/ziran/pull/374
* chore: bump brace-expansion from 5.0.6 to 5.0.8 in /ui by @dependabot[bot] in https://github.com/taoq-ai/ziran/pull/375
* fix(security): clear remaining npm audit high-severity advisories in ui by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/388
* feat(runtime): rate-limiting and retry with exponential backoff for LLM provider calls by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/391
* chore(ui): apply frontend dependency group bumps with peer-conflict fixes by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/390
* feat(runtime): partial-phase checkpoint resume by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/402
* feat(observability): structured JSON logging via structlog by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/403
* ci: bump the actions group across 1 directory with 3 updates by @dependabot[bot] in https://github.com/taoq-ai/ziran/pull/385
* chore(deps): allow anthropic 1.x and websockets 17.x with adapter compatibility fix by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/401
* chore: update structlog requirement from <26,>=24.1 to >=24.1,<27 in the python-dependencies group across 1 directory by @dependabot[bot] in https://github.com/taoq-ai/ziran/pull/407
* fix(alerting): never create a GitHub issue when dedup cannot be confirmed by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/377
* docs(specs): archive six delivered specs and correct their lifecycle status by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/369
* feat(observability): OTel metrics export (Prometheus-compatible) by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/406
* release: v0.38.0 — Production Scale by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/408
* chore(main): release 0.38.0 by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/409


**Full Changelog**: https://github.com/taoq-ai/ziran/compare/v0.37.1...v0.38.0
