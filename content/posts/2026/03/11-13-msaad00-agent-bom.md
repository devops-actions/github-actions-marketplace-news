---
title: agent-bom Scan
date: 2026-03-11 13:35:48 +00:00
tags:
  - msaad00
  - GitHub Actions
draft: false
repo: https://github.com/msaad00/agent-bom
marketplace: https://github.com/marketplace/actions/agent-bom-scan
version: v0.70.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/msaad00/agent-bom** to version **v0.70.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-bom-scan) to find the latest changes.

## Action Summary

Agent-BOM is an open-source tool designed to scan and secure AI infrastructure by identifying vulnerabilities (e.g., CVEs), mapping blast radius impacts, detecting credential exposure, and ensuring compliance with multiple frameworks. It automates dependency resolution, vulnerability checks, and runtime enforcement of policies by intercepting AI agent traffic, detecting malicious behaviors, and auditing instruction files for security risks. This tool enhances operational security by providing real-time protection and detailed insights into how vulnerabilities affect AI systems and their dependencies.

## Release notes

## What's Changed
* refactor: consolidate test files — merge _cov2 pairs, standardize names by @msaad00 in https://github.com/msaad00/agent-bom/pull/571
* refactor: extract MCP tool logic into mcp_tools/ package by @msaad00 in https://github.com/msaad00/agent-bom/pull/572
* refactor: extract models and middleware from api/server.py by @msaad00 in https://github.com/msaad00/agent-bom/pull/585
* refactor: extract store globals into api/stores.py (Phase 3) by @msaad00 in https://github.com/msaad00/agent-bom/pull/588
* refactor: extract scan pipeline into api/pipeline.py (Phase 4) by @msaad00 in https://github.com/msaad00/agent-bom/pull/589
* refactor: extract 166 click options from cli/scan.py into cli/options.py by @msaad00 in https://github.com/msaad00/agent-bom/pull/591
* refactor: extract output format modules from output/__init__.py by @msaad00 in https://github.com/msaad00/agent-bom/pull/592
* refactor: extract config parsers from discovery/__init__.py by @msaad00 in https://github.com/msaad00/agent-bom/pull/593
* refactor: extract Python parsers from parsers/__init__.py by @msaad00 in https://github.com/msaad00/agent-bom/pull/594
* refactor: extract Node.js parsers into parsers/node_parsers.py by @msaad00 in https://github.com/msaad00/agent-bom/pull/597
* refactor: extract Go/Maven/Cargo/uvx parsers into compiled_parsers.py by @msaad00 in https://github.com/msaad00/agent-bom/pull/598
* refactor: extract compliance/posture routes into api/routes/compliance.py by @msaad00 in https://github.com/msaad00/agent-bom/pull/599
* docs: add Architecture Decision Records (ADRs) for contributors by @msaad00 in https://github.com/msaad00/agent-bom/pull/600
* feat: add runtime version resolvers and drift detection (P0 #562) by @msaad00 in https://github.com/msaad00/agent-bom/pull/601
* refactor: extract fleet + gateway routes into api/routes/ modules by @msaad00 in https://github.com/msaad00/agent-bom/pull/602
* refactor: extract proxy routes + WebSockets into api/routes/proxy.py by @msaad00 in https://github.com/msaad00/agent-bom/pull/611
* refactor: extract governance, enterprise, schedules, observability, assets routes by @msaad00 in https://github.com/msaad00/agent-bom/pull/612
* refactor: extract scan, discovery, connectors routes from server.py by @msaad00 in https://github.com/msaad00/agent-bom/pull/613
* feat: scanner robustness — PEP 503 normalization, configurable batching, unresolved warnings by @msaad00 in https://github.com/msaad00/agent-bom/pull/614
* fix: close scanner normalization gaps — false negatives in check, scan_agents, rescan by @msaad00 in https://github.com/msaad00/agent-bom/pull/615
* chore: bump version to 0.70.0 by @msaad00 in https://github.com/msaad00/agent-bom/pull/616


**Full Changelog**: https://github.com/msaad00/agent-bom/compare/v0...v0.70.0
