---
title: agent-bom Scan
date: 2026-03-18 06:04:27 +00:00
tags:
  - msaad00
  - GitHub Actions
draft: false
repo: https://github.com/msaad00/agent-bom
marketplace: https://github.com/marketplace/actions/agent-bom-scan
version: v0.71.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/msaad00/agent-bom** to version **v0.71.2**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-bom-scan) to find the latest changes.

## Action Summary

Agent-BOM is a security scanning tool designed for AI infrastructure and supply chains, automating the discovery, analysis, and enforcement of security measures. It identifies AI agents, server dependencies, and potential vulnerabilities (e.g., CVEs), while mapping their impact on credentials, tools, and attack surfaces. The tool provides comprehensive capabilities, including AI Bill of Materials (BOM) generation, compliance checks, misconfiguration scanning, runtime traffic enforcement, and support for multiple compliance frameworks, enhancing security and reducing risks in AI and cloud environments.

## Release notes

## What's Changed
* fix: prevent false positive CVEs when installed version >= patched version by @msaad00 in https://github.com/msaad00/agent-bom/pull/895
* fix: proxy hardening — credential detection in errors, rate limit enforcement, audit log rotation by @msaad00 in https://github.com/msaad00/agent-bom/pull/896
* fix: parser symlink cycle dedup + transitive dep logging + doc alignment by @msaad00 in https://github.com/msaad00/agent-bom/pull/897
* fix: scanner accuracy — GHSA multi-range OR logic, NVIDIA CSAF recursive depth, Go OSV v-prefix by @msaad00 in https://github.com/msaad00/agent-bom/pull/899
* fix: proxy security — redact credentials from audit log + policy file size cap by @msaad00 in https://github.com/msaad00/agent-bom/pull/900
* fix: wire IaC findings through AIBOMReport to JSON, SARIF, and --fail-on-severity (#851) by @msaad00 in https://github.com/msaad00/agent-bom/pull/901
* fix: correct policy key blocked_tools → block_tools in docs and README by @msaad00 in https://github.com/msaad00/agent-bom/pull/902
* fix: wire CMMC tags, AISVS benchmark, runtime_correlation end-to-end (#903) by @msaad00 in https://github.com/msaad00/agent-bom/pull/903
* docs: simplify architecture diagrams (#904) by @msaad00 in https://github.com/msaad00/agent-bom/pull/904
* chore: bump version to v0.71.2 by @msaad00 in https://github.com/msaad00/agent-bom/pull/898
* fix: remediation plan no longer suggests package downgrades by @msaad00 in https://github.com/msaad00/agent-bom/pull/905
* feat: auto-scan container images discovered from cloud providers by @msaad00 in https://github.com/msaad00/agent-bom/pull/906
* fix: unparseable fixed versions no longer silently drop CVE findings by @msaad00 in https://github.com/msaad00/agent-bom/pull/907
* chore: flask security pin — fix 11 OpenSSF Scorecard vulnerabilities by @msaad00 in https://github.com/msaad00/agent-bom/pull/908
* fix: downgrade docker/non-OSV ecosystem log from WARNING to DEBUG by @msaad00 in https://github.com/msaad00/agent-bom/pull/909
* fix: URL encode Cargo/Maven package names + SpecifierSet for GHSA ranges by @msaad00 in https://github.com/msaad00/agent-bom/pull/910
* feat: Go module transitive dependency resolution by @msaad00 in https://github.com/msaad00/agent-bom/pull/911
* fix: read action.yml with read_text() to avoid file handle isolation issue in test suite by @msaad00 in https://github.com/msaad00/agent-bom/pull/912
* feat: native Helm chart security scanner (Chart.yaml + values.yaml) by @msaad00 in https://github.com/msaad00/agent-bom/pull/913
* feat: wire native transitive dep resolution (npm/pypi/go) into scan pipeline by @msaad00 in https://github.com/msaad00/agent-bom/pull/914
* chore(deps): bump pyasn1 from 0.6.2 to 0.6.3 by @dependabot[bot] in https://github.com/msaad00/agent-bom/pull/915


**Full Changelog**: https://github.com/msaad00/agent-bom/compare/v0...v0.71.2
