---
title: agent-bom Scan
date: 2026-03-19 06:00:00 +00:00
tags:
  - msaad00
  - GitHub Actions
draft: false
repo: https://github.com/msaad00/agent-bom
marketplace: https://github.com/marketplace/actions/agent-bom-scan
version: v0.71.4
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/msaad00/agent-bom** to version **v0.71.4**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-bom-scan) to find the latest changes.

## Action Summary

**Summary:**  
The `agent-bom` GitHub Action is a security scanning tool designed for AI infrastructure and supply chains. It automates the discovery of AI agents, MCP servers, dependencies, credentials, and tools to generate an AI Bill of Materials (BOM), scans for vulnerabilities (CVEs), maps their potential impact, and enforces runtime protections. This helps organizations identify and mitigate risks such as credential leaks and compromised dependencies in their AI systems and traditional infrastructure.

## Release notes

## What's Changed
* fix: self-scan gate blocks all publish jobs in release pipeline (#943) by @msaad00 in https://github.com/msaad00/agent-bom/pull/944
* fix: SARIF relative paths + filter self-scan to HIGH+ only by @msaad00 in https://github.com/msaad00/agent-bom/pull/945
* fix: skip git SHA fixed_versions — eliminates false positive CVE matches by @msaad00 in https://github.com/msaad00/agent-bom/pull/946
* fix: upgrade pip in Docker images — fixes CVE-2025-8869 + CVE-2026-1703 by @msaad00 in https://github.com/msaad00/agent-bom/pull/947
* release: v0.71.4 — SARIF fix, false positive elimination, Docker pip CVEs by @msaad00 in https://github.com/msaad00/agent-bom/pull/948
* fix: filter SARIF to HIGH+ before GitHub Security upload by @msaad00 in https://github.com/msaad00/agent-bom/pull/949
* fix: release gate severity back to critical (known HIGH deps) by @msaad00 in https://github.com/msaad00/agent-bom/pull/950


**Full Changelog**: https://github.com/msaad00/agent-bom/compare/v0...v0.71.4
