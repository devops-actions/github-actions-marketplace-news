---
title: MCP Testbench Security Scan
date: 2025-10-27 09:00:20 +00:00
tags:
  - ubermorgenland
  - GitHub Actions
draft: false
repo: https://github.com/ubermorgenland/mcp-testbench
marketplace: https://github.com/marketplace/actions/mcp-testbench-security-scan
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/ubermorgenland/mcp-testbench** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-testbench-security-scan) to find the latest changes.

## Release notes

# 🚀 First Stable Release - Now on GitHub Marketplace!

MCP Testbench is a comprehensive security testing tool for Model Context Protocol servers. Find vulnerabilities before attackers do.

## ✨ Features

- **Universal Testing**: Works with both stdio and HTTP MCP servers
- **Automated Fuzzing**: 14 protocol conformance tests
- **CVE Scanning**: Detects known vulnerabilities (CVE-2025-6514, CVE-2025-49596)
- **Security Scoring**: Simple A-F grades with badge generation
- **GitHub Actions**: Full CI/CD integration with PR comments
- **Real Results**: Validated against 5+ MCP servers

## 🔍 What It Found

We tested popular MCP servers from the ecosystem:

- **time-mcp**: F grade (5 timeouts - DoS vulnerability)
- **docker-mcp**: F grade (12 crashes - critical issues)

Both are fixable in 1-2 hours with proper input validation.

## 📦 Installation

### CLI
```bash
pip install mcp-testbench
mcp-testbench run --stdio "npx time-mcp"
```

### GitHub Action
```yaml
- name: MCP Security Scan
  uses: ubermorgenland/mcp-testbench@v1
  with:
    stdio-cmd: 'npx time-mcp'
    fail-on-score: 'C'
```

## 📚 Documentation

- [Quick Start Guide](https://apinference.com/mcp-testbench/?doc=quickstart)
- [Crash Analysis & Fixes](https://apinference.com/mcp-testbench/?doc=crash-analysis)
- [Full Documentation](https://apinference.com/mcp-testbench/)

## 🎯 Use Cases

- **CI/CD Security Gates**: Prevent vulnerable code from merging
- **Pre-Deployment Testing**: Validate servers before production
- **Compliance Audits**: Generate security reports for compliance
- **Developer Testing**: Local security checks during development

## 🙏 Credits

Built by [Ubermorgen Ltd](https://ubermorgen.land) - creators of [ApInference](https://apinference.com)

---

**Full Changelog**: https://github.com/ubermorgenland/mcp-testbench/commits/v1.0.0


