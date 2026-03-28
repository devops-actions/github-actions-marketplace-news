---
title: mcp-scan
date: 2026-03-28 13:54:10 +00:00
tags:
  - rodolfboctor
  - GitHub Actions
draft: false
repo: https://github.com/rodolfboctor/mcp-scan
marketplace: https://github.com/marketplace/actions/mcp-scan
version: v2.0.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/rodolfboctor/mcp-scan** to version **v2.0.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-scan) to find the latest changes.

## Action Summary

The `mcp-scan` GitHub Action is a security and compliance tool designed to analyze data flows, monitor network egress, and enforce custom security policies for applications running on Managed Cloud Platforms (MCPs). It automates tasks such as detecting data exfiltration, scanning for secrets and vulnerabilities, generating privacy impact assessments, and producing compliance reports (e.g., SOC 2, GDPR, HIPAA). Key capabilities include a policy engine, support for 17+ security scanners, software bill of materials (SBOM) generation, and integration with GitHub for automated scans and SARIF uploads.

## Release notes

# mcp-scan v2.0: Data Controls for MCP Servers

MCP servers run with full access to your filesystem, your API keys, and your network. Until now, there was no way to know where your data goes after an MCP server processes it. mcp-scan v2.0 changes that.

## What's new

**Data Flow Analyzer** - Static analysis that traces data from sensitive sources (filesystem reads, environment variables, clipboard) to external sinks (HTTP endpoints, process execution). If an MCP server can read your files and also make network requests, you'll see a finding with the exact source-to-sink path.

**Network Egress Monitor** - Lists every outbound endpoint your MCP servers contact. Flags raw IPs (no DNS, harder to audit), obfuscated URLs (base64-encoded endpoints), non-standard ports, and known telemetry domains.

**Privacy Impact Assessment** - `mcp-scan privacy` generates a report covering PII detection, data retention gaps, encryption at rest, and consent mechanisms. Useful for compliance reviews.

**Policy Engine** - Define security rules in `.mcp-scan-policy.yml`. Block specific packages, suppress known-acceptable findings, set maximum severity thresholds. The scan enforces your policy automatically.

**Compliance Mapping** - `mcp-scan compliance --framework soc2` maps findings to specific control IDs for SOC 2, GDPR, HIPAA, PCI-DSS, and NIST 800-53. Outputs to file for audit evidence.

**SBOM Generation** - `mcp-scan sbom` produces CycloneDX v1.5 (JSON) or SPDX 2.3 (tag-value) software bills of materials from your MCP server inventory.

**GitHub Action + SARIF** - The updated GitHub Action uploads SARIF to your repo's Security tab. Findings show inline on pull requests.

## Numbers

- 17 scanners (up from 13)
- 200+ tests
- 4 new CLI commands: `privacy`, `compliance`, `policy`, `sbom`
- 5 compliance frameworks
- 2 SBOM formats
- Zero telemetry. No data leaves your machine.

## Roadmap

v2.1 will add runtime monitoring (proxy that intercepts live MCP traffic). v2.2 targets sandboxed execution for MCP servers. Both are in design.

## Try it

```bash
npx mcp-scan@latest
```

Source: [github.com/rodolfboctor/mcp-scan](https://github.com/rodolfboctor/mcp-scan)

