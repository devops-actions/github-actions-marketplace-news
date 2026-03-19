---
title: ZIRAN Agent Security Scan
date: 2026-03-19 21:47:38 +00:00
tags:
  - taoq-ai
  - GitHub Actions
draft: false
repo: https://github.com/taoq-ai/ziran
marketplace: https://github.com/marketplace/actions/ziran-agent-security-scan
version: v0.13.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/taoq-ai/ziran** to version **v0.13.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ziran-agent-security-scan) to find the latest changes.

## Action Summary

ZIRAN is a GitHub Action designed for advanced security testing of AI agents, including those utilizing tools, memory, and multi-step reasoning. It automates the discovery of vulnerabilities by analyzing interactions between tool combinations, detecting execution-level side effects, and conducting multi-phase pentesting campaigns with adaptive feedback. Key capabilities include autonomous attack path identification, multi-agent coordination, and support for emerging protocols like Agent-to-Agent (A2A) communication.

## Release notes

## What's Changed
* feat: add circuit breaker pattern for failing remote agents by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/144
* perf: add filtering indices to AttackLibrary for O(1) lookups by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/140
* refactor: replace dict[str, Any] with ProtocolResponse TypedDict by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/145
* feat: create ground truth dataset for accuracy measurement by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/158
* feat: save ground truth benchmark results as markdown by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/165
* fix: add missing tool classifier patterns for common agent tools by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/166
* fix: improve SkillCVEDatabase.check_agent() matching logic by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/167
* docs: refresh README with benchmarks, downloads badge by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/168
* fix: improve chain analyzer pattern matching and add missing patterns by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/169
* fix: add guardrail-aware chain and CVE filtering to scenario verdict by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/170


**Full Changelog**: https://github.com/taoq-ai/ziran/compare/v0...v0.13.0
