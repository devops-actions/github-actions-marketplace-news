---
title: ZIRAN Agent Security Scan
date: 2026-03-15 05:56:28 +00:00
tags:
  - taoq-ai
  - GitHub Actions
draft: false
repo: https://github.com/taoq-ai/ziran
marketplace: https://github.com/marketplace/actions/ziran-agent-security-scan
version: v0.10.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/taoq-ai/ziran** to version **v0.10.1**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ziran-agent-security-scan) to find the latest changes.

## Action Summary

ZIRAN is an AI security testing tool designed to identify vulnerabilities in AI agents, including those with tools, memory, and multi-step reasoning capabilities. It automates the discovery of dangerous tool combinations, detects execution-level side effects, and conducts autonomous penetration testing across multi-agent systems and complex workflows. By leveraging graph-based analysis and knowledge graph feedback, ZIRAN helps uncover hidden attack paths and assess agent security comprehensively, solving the challenge of identifying risks in interconnected AI systems.

## Release notes

## What's Changed
* fix: correct boolean logic in get_cross_agent_attack_paths by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/75
* fix: handle JSONDecodeError in LLM adaptive strategy by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/76
* fix: warn on missing auth env var in AuthConfig by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/79
* fix: remove dead code in side_effect detector by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/81
* fix: replace assert with explicit checks in http_adapter by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/82
* fix: add debug logging to bare except clauses in adapters by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/80
* fix: raise on missing env var in browser login steps by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/77
* fix: validate required keys in graph state import by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/78
* fix: validate env var type casting in LLM factory by @leoneperdigao in https://github.com/taoq-ai/ziran/pull/83


**Full Changelog**: https://github.com/taoq-ai/ziran/compare/v0...v0.10.1
