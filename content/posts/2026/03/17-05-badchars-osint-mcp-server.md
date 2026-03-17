---
title: OSINT MCP Server
date: 2026-03-17 05:53:47 +00:00
tags:
  - badchars
  - GitHub Actions
draft: false
repo: https://github.com/badchars/osint-mcp-server
marketplace: https://github.com/marketplace/actions/osint-mcp-server
version: v0.2.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/badchars/osint-mcp-server** to version **v0.2.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/osint-mcp-server) to find the latest changes.

## Action Summary

The `osint-mcp-server` GitHub Action provides a unified platform to perform OSINT (Open Source Intelligence) and reconnaissance tasks by integrating 37 tools and 12 data sources, such as Shodan, VirusTotal, Censys, and WHOIS. It automates the traditionally fragmented OSINT workflow, eliminating the need to manually access multiple platforms, correlate data, and navigate inconsistent APIs or interfaces. This action enables AI agents to perform comprehensive and on-demand intelligence gathering, streamlining penetration testing, threat assessments, and bug bounty processes.

## Release notes

## What's New

### CLI Mode

Run any of the 37 OSINT tools directly from the command line — no MCP client required:

```bash
# List all tools
npx osint-mcp-server --list

# Run a tool
npx osint-mcp-server --tool dns_lookup '{"domain":"example.com","type":"A"}'
npx osint-mcp-server --tool osint_domain_recon '{"domain":"example.com"}'
npx osint-mcp-server --tool dns_email_security '{"domain":"example.com"}' --format text
```

### GitHub Action

Use any tool in your CI/CD pipeline:

```yaml
- uses: badchars/osint-mcp-server@v0.2.0
  with:
    tool: osint_domain_recon
    args: '{"domain": "example.com"}'

- uses: badchars/osint-mcp-server@v0.2.0
  with:
    tool: dns_email_security
    args: '{"domain": "example.com"}'

- uses: badchars/osint-mcp-server@v0.2.0
  with:
    tool: shodan_host
    args: '{"ip": "1.2.3.4"}'
  env:
    SHODAN_API_KEY: ${{ secrets.SHODAN_API_KEY }}
```

### New Flags

| Flag | Description |
|------|-------------|
| `--tool <name>` | Run a specific tool by name |
| `--list` | List all 37 tools with descriptions and API key requirements |
| `--format json\|text` | Output format (default: json) |
| `--help` | Show usage information |

### CI Workflow

Added GitHub Actions CI workflow for build verification on push/PR.

### Backward Compatible

Default behavior (no flags) still starts the MCP stdio server for AI agents. The CLI mode is additive.

**Full Changelog**: https://github.com/badchars/osint-mcp-server/compare/v0.1.0...v0.2.0
