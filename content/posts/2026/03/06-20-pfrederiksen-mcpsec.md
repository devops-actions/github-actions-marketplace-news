---
title: MCPSec Audit
date: 2026-03-06 20:57:41 +00:00
tags:
  - pfrederiksen
  - GitHub Actions
draft: false
repo: https://github.com/pfrederiksen/mcpsec
marketplace: https://github.com/marketplace/actions/mcpsec-audit
version: v1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/pfrederiksen/mcpsec** to version **v1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcpsec-audit) to find the latest changes.

## Action Summary

MCPSec is a security auditing tool designed to scan Model Context Protocol (MCP) server configurations for vulnerabilities, such as hardcoded secrets, missing authentication, and excessive permissions. It automates the identification of security risks, outputs findings in human-readable or OCSF JSON formats, and supports a customizable rules engine for community-driven detection. This tool helps developers, CI/CD pipelines, and security teams ensure MCP configurations meet security and compliance standards.

## Release notes

Release notes:
## MCPSec Audit v1.0.0

The first release of MCPSec — an open-source security scanner that audits Model Context Protocol (MCP) server configurations against the [OWASP MCP Top 10](https://owasp.org/www-project-mcp-top-10/).

### What's included

**Full OWASP MCP Top 10 coverage**
All 10 risk categories are implemented as automated checks, including prompt injection detection, secret exposure, missing auth, insecure transport, and more. See the [coverage table](https://github.com/pfrederiksen/mcpsec#owasp-mcp-top-10-coverage) for rule IDs and severities.

**Supported input formats**
- Claude Desktop config (`claude_desktop_config.json`)
- Claude Desktop Extensions (DXT manifests and directories)
- Cursor, VS Code, and generic `mcpServers` JSON configs
- Auto-detection by default (`--input-format auto`)

**Output formats**
- Human-readable table (default)
- OCSF JSON (`--format json`) for SIEM/Splunk ingestion
- Splunk HEC (`--format splunk`) with direct endpoint delivery

**CI/CD gate mode**
Use `--fail-on critical` to block pipelines with high-severity findings. Pairs with the [mcpsec-action](https://github.com/marketplace/actions/mcpsec-audit) for two-line GitHub Actions integration.

**Pluggable YAML rules engine**
Community-contributed detections in Sigma-style YAML. Drop a `.yaml` file into the `rules/` directory and it takes effect immediately. See [docs/rules-authoring.md](docs/rules-authoring.md) to write your own.

### Install

```bash
# Homebrew (macOS/Linux)
brew install pfrederiksen/tap/mcpsec

# Go
go install github.com/pfrederiksen/mcpsec@latest
```

Quick start
```
# Scan your Claude Desktop config
mcpsec scan ~/Library/Application\ Support/Claude/claude_desktop_config.json

# CI gate — fail on critical findings
mcpsec scan --fail-on critical mcp-config.json
```

Platforms

Pre-built binaries for Linux (amd64/arm64), macOS (amd64/arm64), and Windows (amd64).
