---
title: agent-bom Scan
date: 2026-03-11 05:54:11 +00:00
tags:
  - msaad00
  - GitHub Actions
draft: false
repo: https://github.com/msaad00/agent-bom
marketplace: https://github.com/marketplace/actions/agent-bom-scan
version: v0.69.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/msaad00/agent-bom** to version **v0.69.1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-bom-scan) to find the latest changes.

## Action Summary

The `agent-bom` GitHub Action is a security tool designed to scan AI infrastructure, identify vulnerabilities such as CVEs, credential exposures, and supply chain risks, and enforce compliance with 11 frameworks. It automates the discovery of MCP (Model-Compute-Policy) configurations, evaluates dependencies against security databases, maps blast radius impacts, and provides runtime enforcement by intercepting MCP traffic, enforcing policies, detecting behavioral attacks, and auditing instruction files for malicious patterns. This tool simplifies security monitoring, enhances threat detection, and mitigates risks in AI environments.

## Release notes

## What's Changed
* fix: exception swallowers, SBOM transitives, policy dry-run by @msaad00 in https://github.com/msaad00/agent-bom/pull/532
* fix: enforce mypy type checking — zero errors across 28 files by @msaad00 in https://github.com/msaad00/agent-bom/pull/533
* fix: remove all mypy overrides — 172/172 files type-checked by @msaad00 in https://github.com/msaad00/agent-bom/pull/534
* feat: expand CIS benchmark coverage to 67 checks across AWS/Azure/GCP by @msaad00 in https://github.com/msaad00/agent-bom/pull/535
* refactor: split cli.py into focused cli/ package by @msaad00 in https://github.com/msaad00/agent-bom/pull/536
* fix: eliminate silent failures across security-critical paths by @msaad00 in https://github.com/msaad00/agent-bom/pull/537
* fix: EPSS batch pagination + KEV stale cache resilience by @msaad00 in https://github.com/msaad00/agent-bom/pull/538
* fix: output format compliance + cloud provider pagination + scale limits by @msaad00 in https://github.com/msaad00/agent-bom/pull/539
* feat: Snowflake Notebook discovery + fix downloads badge by @msaad00 in https://github.com/msaad00/agent-bom/pull/550
* fix: resolve YAML parse error blocking OpenSSF Scorecard by @msaad00 in https://github.com/msaad00/agent-bom/pull/551
* release: v0.69.0 by @msaad00 in https://github.com/msaad00/agent-bom/pull/552
* feat: CoCo proxy depth — SQL injection detection + Cortex AI model tracking by @msaad00 in https://github.com/msaad00/agent-bom/pull/553
* feat: OpenSSF Silver badge — governance, roadmap, threat model, docs sync by @msaad00 in https://github.com/msaad00/agent-bom/pull/557
* chore: update demo tape for v0.69.0 + README GIF reference by @msaad00 in https://github.com/msaad00/agent-bom/pull/558
* feat: add Copilot CLI + Tabnine MCP client discovery (22 clients) by @msaad00 in https://github.com/msaad00/agent-bom/pull/559
* chore: add DCO certification to CONTRIBUTING.md by @msaad00 in https://github.com/msaad00/agent-bom/pull/560
* test: raise coverage 73% → 79% with 904 new tests by @msaad00 in https://github.com/msaad00/agent-bom/pull/569
* chore: bump version to v0.69.1 by @msaad00 in https://github.com/msaad00/agent-bom/pull/570


**Full Changelog**: https://github.com/msaad00/agent-bom/compare/v0...v0.69.1
