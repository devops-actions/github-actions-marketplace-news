---
title: agent-bom Scan
date: 2026-03-13 05:47:30 +00:00
tags:
  - msaad00
  - GitHub Actions
draft: false
repo: https://github.com/msaad00/agent-bom
marketplace: https://github.com/marketplace/actions/agent-bom-scan
version: v0.70.6
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/msaad00/agent-bom** to version **v0.70.6**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-bom-scan) to find the latest changes.

## Action Summary

Agent-BOM is an open-source tool designed to scan, analyze, and secure AI infrastructure by detecting vulnerabilities, mapping blast radius, assessing credential exposure, and enforcing runtime policy. It automates the discovery of MCP configurations, evaluates dependencies against vulnerability databases, and provides real-time protection by intercepting and enforcing policies on MCP traffic. This tool addresses gaps in traditional scanners by identifying compromised agents, exposed credentials, and affected tools while actively blocking threats at runtime.

## Release notes

## Scanner Accuracy & Robustness

- **Severity defaults fixed**: All 5 scanner sources (OSV, GHSA, Snyk, local DB, SARIF) now default unknown severity to `UNKNOWN` instead of silently inflating to `MEDIUM`
- **EPSS null handling**: Missing EPSS data stored as `None` (not `0.0` — which falsely implied "0% exploit risk")
- **CVSS 0.0 preserved**: Legitimate CVSS 0.0 (NONE severity) no longer silently converted to `None`
- **Snyk severity**: No more silent inflation from `attrs.get("severity", "medium")`

## Null/None Handling

- EPSS missing → `None` (not `0.0`)
- CVSS `0.0` → preserved (not falsy-converted to `None`)
- Snyk unknown severity → `UNKNOWN` (not `MEDIUM`)
- Severity chart includes NONE and UNKNOWN levels

## Tool Count Alignment

- All docs updated from stale 29/30 → **31 MCP tools** (pyproject.toml, Dockerfile.sse, THREAT_MODEL.md, site-docs)

## ClawHub Publish

- Workflow rewritten with direct API calls (fixes `acceptLicenseTerms` server requirement)
- Publishes 5 focused skills: `agent-bom`, `agent-bom-scan`, `agent-bom-compliance`, `agent-bom-registry`, `agent-bom-runtime`
- Removed stale `NVD_API_KEY` from scan skill

## DB & Migration

- DB schema migration framework tested (3 new tests)
- `_cvss_to_severity(None)` → `"unknown"` (not `"medium"`)
- NVD + GHSA co-equal DB sources fully wired

## Test Coverage

- 6 new severity guard tests across all scanner sources
- 3 DB migration framework tests
- All 6,000+ tests passing

**Full Changelog**: https://github.com/msaad00/agent-bom/compare/v0.70.5...v0.70.6
