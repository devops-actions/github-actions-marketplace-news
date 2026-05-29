---
title: ZIRAN Agent Security Scan
date: 2026-05-29 14:47:37 +00:00
tags:
  - taoq-ai
  - GitHub Actions
draft: false
repo: https://github.com/taoq-ai/ziran
marketplace: https://github.com/marketplace/actions/ziran-agent-security-scan
version: v0.32.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/taoq-ai/ziran** to version **v0.32.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ziran-agent-security-scan) to find the latest changes.

## Action Summary

ZIRAN is an open-source security testing framework for identifying vulnerabilities in AI agents, including those with tools, memory, and multi-step reasoning capabilities. It automates the discovery of dangerous tool chains, execution-level side effects, and multi-phase exploits by modeling agents as capability graphs and simulating complex interactions that traditional single-prompt scanners may miss. Key features include graph-based tool-chain analysis, side-effect detection, and adaptive multi-phase testing campaigns, making it a comprehensive solution for AI agent security evaluation.

## What's Changed

## [0.32.0](https://github.com/taoq-ai/ziran/compare/v0.31.0...v0.32.0) (2026-05-29)


### Features

* **alerting:** add AlertSink notification capability ([994bb94](https://github.com/taoq-ai/ziran/commit/994bb9464f64dfb3f12bbf9304d12040e775016b))
* **analyze-traces:** file issues for dangerous production chains ([#274](https://github.com/taoq-ai/ziran/issues/274)) ([fa099ab](https://github.com/taoq-ai/ziran/commit/fa099abb2b36f38cfddfa8e07683618ef3339fbc))
* **analyze-traces:** file issues for dangerous production chains ([#274](https://github.com/taoq-ai/ziran/issues/274)) ([20a468e](https://github.com/taoq-ai/ziran/commit/20a468ec6c47d466e6537f74c6653390634d35ee))
* **policy-export:** auto-refresh exported policies via GitHub Action ([#273](https://github.com/taoq-ai/ziran/issues/273)) ([e1c5da7](https://github.com/taoq-ai/ziran/commit/e1c5da7317e93d37580ebd543d448da3da86de0e))
* **policy-export:** auto-refresh exported policies via GitHub Action ([#273](https://github.com/taoq-ai/ziran/issues/273)) ([14cce10](https://github.com/taoq-ai/ziran/commit/14cce101121ff8b77bf2e5b64973df7ddb000466))
* **watch-registry:** alerting via shared AlertSink layer ([#272](https://github.com/taoq-ai/ziran/issues/272)) ([4bc6c68](https://github.com/taoq-ai/ziran/commit/4bc6c68af2259bb3ef1c5ec72874057417e4ae2b))
* **watch-registry:** deliver drift findings via alert sinks ([#272](https://github.com/taoq-ai/ziran/issues/272)) ([3277537](https://github.com/taoq-ai/ziran/commit/32775371bc2b9dd82f06bac601f6693a1b82f100))


### Bug Fixes

* **lint:** resolve CodeQL unused-import warnings on type-only imports ([badff97](https://github.com/taoq-ai/ziran/commit/badff97c167553b8e2101249de06d8f8d383dda6))

## What's Changed
* feat(detectors): add multilingual refusal detection by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/299
* feat(cli): add ziran init scaffolding command by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/300
* feat(adapters): add native Anthropic SDK adapter by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/301
* feat(vectors): add tool-schema confusion attack vectors by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/302
* feat(watch-registry): alerting via shared AlertSink layer (#272) by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/311
* feat(analyze-traces): file issues for dangerous production chains (#274) by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/312
* feat(policy-export): auto-refresh exported policies via GitHub Action (#273) by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/313
* release: v0.32.0 — Runtime Loop by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/315
* chore(main): release 0.32.0 by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/317


**Full Changelog**: https://github.com/taoq-ai/ziran/compare/v0...v0.32.0
