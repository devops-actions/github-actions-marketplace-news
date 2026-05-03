---
title: agent-bom Scan
date: 2026-05-03 06:39:44 +00:00
tags:
  - msaad00
  - GitHub Actions
draft: false
repo: https://github.com/msaad00/agent-bom
marketplace: https://github.com/marketplace/actions/agent-bom-scan
version: v0.85.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/msaad00/agent-bom** to version **v0.85.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-bom-scan) to find the latest changes.

## Action Summary

The GitHub Action `agent-bom` is an open security scanner designed to analyze AI supply chains and infrastructure, including agents, MCP servers, packages, containers, cloud platforms, GPU environments, and runtimes. It automates the identification and remediation of vulnerabilities (CVEs) across interconnected components, providing a clear "blast radius" mapping from a CVE to packages, servers, agents, exposed credentials, and tools at risk. This helps users mitigate security risks by pinpointing the exact fixes needed to prevent potential breaches or compromises.

## What's Changed

## What's Changed
* docs(diagrams): align engine-internals + compliance counts to current product state by @msaad00 in https://github.com/msaad00/agent-bom/pull/2187
* feat(firewall): inter-agent firewall foundation — schema, loader, evaluator, CLI by @msaad00 in https://github.com/msaad00/agent-bom/pull/2188
* feat(gateway): wire inter-agent firewall — evaluator, hot-reload, audit, healthz by @msaad00 in https://github.com/msaad00/agent-bom/pull/2189
* feat(proxy): inter-agent firewall fast-path — TTL cache + fail mode + local fallback by @msaad00 in https://github.com/msaad00/agent-bom/pull/2190
* feat(dashboard): firewall runtime overlay — counters + recent denials + top pairs by @msaad00 in https://github.com/msaad00/agent-bom/pull/2191
* feat(discovery): per-run envelope — scan_mode + scope + permissions + redaction by @msaad00 in https://github.com/msaad00/agent-bom/pull/2192
* feat(discovery): provider envelope parity — 11 providers wired by @msaad00 in https://github.com/msaad00/agent-bom/pull/2193
* feat(discovery): envelope API surface + dashboard card by @msaad00 in https://github.com/msaad00/agent-bom/pull/2194
* feat(discovery): least-privilege + redaction lock-in matrix by @msaad00 in https://github.com/msaad00/agent-bom/pull/2195
* fix: v0.84.6 audit — SCIM DELETE list, auth-flag interplay, splash kind, rotate body by @msaad00 in https://github.com/msaad00/agent-bom/pull/2196
* fix: v0.84.6 MCP audit — strict tool args, self-scan venv walk, skill verdict split, dedupe sandbox warning by @msaad00 in https://github.com/msaad00/agent-bom/pull/2197
* chore: prepare v0.85.0 release by @msaad00 in https://github.com/msaad00/agent-bom/pull/2198


**Full Changelog**: https://github.com/msaad00/agent-bom/compare/v0.84.6...v0.85.0
