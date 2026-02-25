---
title: agent-bom Scan
date: 2026-02-25 13:26:49 +00:00
tags:
  - msaad00
  - GitHub Actions
draft: false
repo: https://github.com/msaad00/agent-bom
marketplace: https://github.com/marketplace/actions/agent-bom-scan
version: v0.32.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/msaad00/agent-bom** to version **v0.32.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-bom-scan) to find the latest changes.

## Action Summary

Agent-BOM is an AI supply chain security scanner designed to identify vulnerabilities (CVEs) in software packages, containers, and AI agents while mapping their blast radius to assess business impact. It automates tasks such as detecting credential exposure, analyzing privilege escalation risks, and identifying tools accessible to attackers, providing comprehensive insights into security risks and remediation strategies. Additionally, it supports enterprise-grade compliance frameworks like OWASP LLM Top 10, MITRE ATLAS, and NIST AI RMF.

## Release notes

## What's New in v0.32.0

### MCP Server Expansion
- **Smithery 100/100**: All 13 tool parameters now have JSON Schema descriptions
- **4 new MCP tools**: `verify` (package integrity), `where` (discovery paths), `inventory` (agent/server listing), `diff` (report comparison)
- **2 MCP resources**: `registry://servers` (427+ server threat intel), `policy://template`
- **4 new scan params**: `transitive`, `verify_integrity`, `fail_severity`, `policy`

### New Discovery Clients
- **Roo Code** and **Amazon Q Developer** — auto-discovered alongside 11 existing MCP clients (15 total)

### Trust & Security UX
- **HTML trust assessment section**: Verdict badge, 5-category table, recommendations — matches CLI panel
- **Trust panel shows source file**: "Trust Assessment — SKILL.md" instead of generic title
- **`--open` flag**: Auto-open HTML/graph-html reports in default browser
- **SKILL.md hardened**: 31 file_reads declared (was 27), updated justification

### HTML Reports
- **Compliance tables**: OWASP LLM Top 10, MITRE ATLAS, NIST AI RMF with pass/warn/fail badges
- **Trust assessment section**: Verdict, categories, recommendations in dark theme

### CLI Improvements
- **Scan presets**: `--preset ci` (quiet, json, fail-on-critical), `--preset enterprise` (full enrichment), `--preset quick`
- **Elapsed time**: Shown in scan completion divider

### Stats
- 1043 tests passing
- 13 MCP tools, 2 resources, 3 prompts
- 15 discovery clients

## What's Changed
* feat: Smithery param descriptions + scan params + doc fixes (#33)
* feat: 4 new MCP tools + 2 resources + 2 discovery clients (#34)
* feat: scan presets, elapsed time, HTML compliance tables (#35)
* feat: trust UX + HTML trust section + --open flag + SKILL.md hardening (#36)
* chore: bump version to v0.32.0 (#38)

**Full Changelog**: https://github.com/msaad00/agent-bom/compare/v0.31.9...v0.32.0
