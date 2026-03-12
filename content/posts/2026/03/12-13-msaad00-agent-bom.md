---
title: agent-bom Scan
date: 2026-03-12 13:35:12 +00:00
tags:
  - msaad00
  - GitHub Actions
draft: false
repo: https://github.com/msaad00/agent-bom
marketplace: https://github.com/marketplace/actions/agent-bom-scan
version: v0.70.5
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/msaad00/agent-bom** to version **v0.70.5**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-bom-scan) to find the latest changes.

## Action Summary

Agent-BOM is an open-source GitHub Action designed to scan AI infrastructures for vulnerabilities, enforce runtime policies, and provide real-time security protection. It automates the discovery of MCP configurations, analyzes dependencies for known vulnerabilities (e.g., CVEs), maps blast radius impacts (agents, credentials, tools), and serves as a proxy to intercept traffic and enforce compliance. By combining vulnerability scanning, behavioral attack detection, and instruction file auditing, it addresses security risks across AI systems efficiently.

## Release notes

## What's Changed
* test: push coverage to 80% — CLI and MCP tool impl tests by @msaad00 in https://github.com/msaad00/agent-bom/pull/636
* fix: stale local DB warning + OTel hardening (schema validation, 50MB cap, framework expansion) by @msaad00 in https://github.com/msaad00/agent-bom/pull/642
* feat: post-merge self-scan + release gate on critical CVE by @msaad00 in https://github.com/msaad00/agent-bom/pull/648
* chore(deps): bump tornado from 6.5.4 to 6.5.5 by @dependabot[bot] in https://github.com/msaad00/agent-bom/pull/649
* fix: multi-arch container rescan — add arm64, upload SARIF to Security tab by @msaad00 in https://github.com/msaad00/agent-bom/pull/650
* refactor: cli/scan.py (3,079L) → modular scan/ package by @msaad00 in https://github.com/msaad00/agent-bom/pull/651
* feat: auto-refresh stale vuln DB flag, NIM/NeMo/NemoClaw NVIDIA tracking by @msaad00 in https://github.com/msaad00/agent-bom/pull/652
* feat: GHSA and NVD local DB sync sources by @msaad00 in https://github.com/msaad00/agent-bom/pull/653
* feat: multi-source asset deduplication (#646) by @msaad00 in https://github.com/msaad00/agent-bom/pull/654
* feat: deterministic UUID v5 stable IDs for assets and findings by @msaad00 in https://github.com/msaad00/agent-bom/pull/655
* feat: production-quality Go/Maven/RPM parser improvements by @msaad00 in https://github.com/msaad00/agent-bom/pull/656
* fix: documentation accuracy — detector count, architecture client and tool counts by @msaad00 in https://github.com/msaad00/agent-bom/pull/657
* feat: go.sum integrity verification + GOPROXY version resolution by @msaad00 in https://github.com/msaad00/agent-bom/pull/658
* feat: Gradle and conda package parsers for AI/ML ecosystems by @msaad00 in https://github.com/msaad00/agent-bom/pull/659
* feat: Bun, NuGet (.NET), and pip-compile parsers by @msaad00 in https://github.com/msaad00/agent-bom/pull/660
* feat: Maven Central and crates.io version resolution for unpinned deps by @msaad00 in https://github.com/msaad00/agent-bom/pull/661
* fix: credential security hardening (URL validation, timing-safe compare, exception sanitization) by @msaad00 in https://github.com/msaad00/agent-bom/pull/662
* fix: credential security hardening + read-only provisioning scripts (AWS/Azure/GCP/Snowflake/EKS) by @msaad00 in https://github.com/msaad00/agent-bom/pull/663
* fix: cloud API alignment — Databricks enum, Nebius pagination, CoreWeave/NVIDIA provisioning by @msaad00 in https://github.com/msaad00/agent-bom/pull/664
* docs: consistency cleanup — detector count, CHANGELOG v0.70.x, AISVS framework by @msaad00 in https://github.com/msaad00/agent-bom/pull/669
* chore: align SVG diagrams and README visuals to v0.70.4 by @msaad00 in https://github.com/msaad00/agent-bom/pull/670
* chore: demo-v0.70.4.gif — recorded via VHS (9-scene terminal recording) by @msaad00 in https://github.com/msaad00/agent-bom/pull/671
* fix: tiered --format help, add plain as alias for text by @msaad00 in https://github.com/msaad00/agent-bom/pull/673
* test: CLI integration tests for badge/svg/graph/plain formats + action vuln DB cache by @msaad00 in https://github.com/msaad00/agent-bom/pull/676
* feat: .agent-bom-ignore.yaml allowlist + GitHub Action PR comment (#576, #578) by @msaad00 in https://github.com/msaad00/agent-bom/pull/677
* docs: MCP security model explainer + README accuracy fixes (#583, #668) by @msaad00 in https://github.com/msaad00/agent-bom/pull/678
* feat: wire local SQLite DB into scan pipeline — offline-first CVE lookup by @msaad00 in https://github.com/msaad00/agent-bom/pull/679
* chore: bump version to 0.70.5 by @msaad00 in https://github.com/msaad00/agent-bom/pull/680


**Full Changelog**: https://github.com/msaad00/agent-bom/compare/v0...v0.70.5
