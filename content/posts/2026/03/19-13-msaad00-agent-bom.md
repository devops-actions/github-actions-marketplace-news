---
title: agent-bom Scan
date: 2026-03-19 13:51:13 +00:00
tags:
  - msaad00
  - GitHub Actions
draft: false
repo: https://github.com/msaad00/agent-bom
marketplace: https://github.com/marketplace/actions/agent-bom-scan
version: v0.72.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/msaad00/agent-bom** to version **v0.72.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-bom-scan) to find the latest changes.

## Action Summary

**Summary:**  
The `agent-bom` GitHub Action is a specialized security scanner designed for AI infrastructure and supply chains. It automates the discovery of AI agents, MCP servers, and their configurations, generates a comprehensive inventory (AI Bill of Materials), scans dependencies for known vulnerabilities (CVEs), and maps their potential impact on agents, credentials, and tools. Additionally, it provides runtime enforcement to prevent credential leaks and mitigate risks, supporting both AI-specific and traditional infrastructure.

## Release notes

## What's Changed
* fix: upgrade Next.js 16.1.7 → 16.2.0 — fixes 3 HIGH GHSAs by @msaad00 in https://github.com/msaad00/agent-bom/pull/951
* fix: handle Go pseudo-versions in vulnerability range comparison by @msaad00 in https://github.com/msaad00/agent-bom/pull/952
* fix: suppress Scorecard-flagged GHSAs — all fixed at locked versions by @msaad00 in https://github.com/msaad00/agent-bom/pull/954
* feat: expand Terraform IaC rules 20→50 (TF-SEC-021 through TF-SEC-050) by @msaad00 in https://github.com/msaad00/agent-bom/pull/955
* feat: expand K8s rules 17→30 + Helm rules 8→15 by @msaad00 in https://github.com/msaad00/agent-bom/pull/956
* fix: SARIF exclude-unfixable, Action scan-type, Scorecard hardening by @msaad00 in https://github.com/msaad00/agent-bom/pull/957
* refactor: reorganize CLI — categorized help, command groups by @msaad00 in https://github.com/msaad00/agent-bom/pull/958
* fix: rename OSV config for Scorecard auto-discovery (Vulnerabilities 0→10) by @msaad00 in https://github.com/msaad00/agent-bom/pull/959
* chore: Docker Hub tag retention — keep last 10, auto-clean on release by @msaad00 in https://github.com/msaad00/agent-bom/pull/960
* docs: update all command references to new CLI groups by @msaad00 in https://github.com/msaad00/agent-bom/pull/961
* feat: CLI UX polish + input validation hardening by @msaad00 in https://github.com/msaad00/agent-bom/pull/962
* feat: v0.72.0 — version accuracy, AI BOM tools, 30 MCP clients, compliance noise reduction by @msaad00 in https://github.com/msaad00/agent-bom/pull/963
* docs: v0.72.0 architecture refresh — 30 clients, version bump, all surfaces updated by @msaad00 in https://github.com/msaad00/agent-bom/pull/964
* docs: demo GIF for v0.72.0 by @msaad00 in https://github.com/msaad00/agent-bom/pull/965


**Full Changelog**: https://github.com/msaad00/agent-bom/compare/v0...v0.72.0
