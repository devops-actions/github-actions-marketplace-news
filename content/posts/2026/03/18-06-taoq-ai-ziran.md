---
title: ZIRAN Agent Security Scan
date: 2026-03-18 06:03:59 +00:00
tags:
  - taoq-ai
  - GitHub Actions
draft: false
repo: https://github.com/taoq-ai/ziran
marketplace: https://github.com/marketplace/actions/ziran-agent-security-scan
version: v0.12.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/taoq-ai/ziran** to version **v0.12.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ziran-agent-security-scan) to find the latest changes.

## Action Summary

ZIRAN is a security testing GitHub Action designed to identify vulnerabilities in AI agents, including those using tools, memory, and multi-step reasoning. It automates the discovery of dangerous tool combinations, detects execution-level side effects, and conducts autonomous pentesting campaigns to uncover complex attack paths. Key capabilities include graph-based tool chain analysis, multi-agent coordination, and protocol-specific security testing, making it particularly effective for comprehensive agent security evaluations.

## Release notes

## What's Changed
* perf: cache tool classifications to avoid repeated regex matching by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/132
* perf: cache graph state exports and avoid redundant serialization by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/134
* perf: parallelize multi-agent individual scans with asyncio.gather by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/135
* perf: replace O(S*T) find_all_attack_paths with single-source traversal by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/136
* perf: combine refusal detector patterns into single mega-regex by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/137
* perf: deduplicate prompt rendering when applying multiple encodings by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/138
* perf: parallelize protocol auto-detection probes with asyncio.gather by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/139
* perf: bound memory growth of attack results during campaigns by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/141
* fix: prevent import_state() from mutating caller's dict via .pop() by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/142
* feat: handle HTTP 429 rate limits with Retry-After header support by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/143
* test: add coverage for concurrent attack execution and race conditions by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/156
* test: add coverage for LLM judge timeout and detector pipeline error paths by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/157
* perf: optimize chain analyzer — cache tool nodes, pattern lookups, and centrality by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/133


**Full Changelog**: https://github.com/taoq-ai/ziran/compare/v0...v0.12.0
