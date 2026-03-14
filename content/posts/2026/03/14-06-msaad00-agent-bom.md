---
title: agent-bom Scan
date: 2026-03-14 06:04:57 +00:00
tags:
  - msaad00
  - GitHub Actions
draft: false
repo: https://github.com/msaad00/agent-bom
marketplace: https://github.com/marketplace/actions/agent-bom-scan
version: v0.70.7
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/msaad00/agent-bom** to version **v0.70.7**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-bom-scan) to find the latest changes.

## Action Summary

Agent-BOM is a security scanning tool designed specifically for AI infrastructure and supply chains. It automates the discovery, scanning, and analysis of AI components, servers, and dependencies, identifying vulnerabilities (e.g., CVEs) and mapping their blast radius to assess impacted agents, tools, and credentials. Key capabilities include AI Bill of Materials (BOM) generation, compliance checks, runtime enforcement, and behavioral threat detection, solving challenges in securing complex AI ecosystems.

## Release notes

## What's Changed
* fix: self-scan workflows use wrong CLI flags by @msaad00 in https://github.com/msaad00/agent-bom/pull/695
* chore: reorganize repo root — 19 dirs → 11, 38 files → 20 by @msaad00 in https://github.com/msaad00/agent-bom/pull/697
* fix: SEVERITY_ORDER missing UNKNOWN + CVSS 0.0 → none by @msaad00 in https://github.com/msaad00/agent-bom/pull/715
* fix: SARIF security-severity property + UNKNOWN→note by @msaad00 in https://github.com/msaad00/agent-bom/pull/716
* feat: GitHub Action — 5 improvements (output, warn, auto-db, PR comment, badge) by @msaad00 in https://github.com/msaad00/agent-bom/pull/717
* feat: CLI scan — --db-source, --auto-update-db=ON, --offline by @msaad00 in https://github.com/msaad00/agent-bom/pull/718
* feat: MCP scan — auto_update_db, db_sources, format + isError pattern by @msaad00 in https://github.com/msaad00/agent-bom/pull/719
* fix: Docker SSE healthcheck, policy field validation, expanded dogfood CI by @msaad00 in https://github.com/msaad00/agent-bom/pull/720
* fix: scanner core gaps — conda resolution, npm semver, SARIF enrichment by @msaad00 in https://github.com/msaad00/agent-bom/pull/731
* feat: CWE enrichment — OSV extraction, universal compliance tagging, DB schema v2 by @msaad00 in https://github.com/msaad00/agent-bom/pull/734
* fix: ClawHub skill accuracy — resolve compliance contradictions, align metadata by @msaad00 in https://github.com/msaad00/agent-bom/pull/735
* feat: add JUnit XML, CSV, and Markdown output formats by @msaad00 in https://github.com/msaad00/agent-bom/pull/743
* release: v0.70.7 — AI BOM positioning, output formats, README revamp by @msaad00 in https://github.com/msaad00/agent-bom/pull/744
* feat: AI component source scanning — detect SDK imports, shadow AI, deprecated models by @msaad00 in https://github.com/msaad00/agent-bom/pull/745
* feat: DeepSeek detection + GlassWorm invisible Unicode defense by @msaad00 in https://github.com/msaad00/agent-bom/pull/746
* feat: AI inventory Rich table + JSON/HTML/SARIF export by @msaad00 in https://github.com/msaad00/agent-bom/pull/747
* fix: AI inventory end-to-end in CLI output by @msaad00 in https://github.com/msaad00/agent-bom/pull/748
* feat: CLI UX — progress bar, timing breakdown, next-steps suggestions by @msaad00 in https://github.com/msaad00/agent-bom/pull/749
* fix: update MCP tool count 31→32 across all surfaces by @msaad00 in https://github.com/msaad00/agent-bom/pull/750
* fix: deploy-mcp-sse checkout release tag + freshness guard by @msaad00 in https://github.com/msaad00/agent-bom/pull/751
* chore: v0.70.7 demo GIF + version alignment by @msaad00 in https://github.com/msaad00/agent-bom/pull/752


**Full Changelog**: https://github.com/msaad00/agent-bom/compare/v0...v0.70.7
