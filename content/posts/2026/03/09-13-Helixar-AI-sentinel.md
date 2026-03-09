---
title: sentinel MCP Security Scanner
date: 2026-03-09 13:36:26 +00:00
tags:
  - Helixar-AI
  - GitHub Actions
draft: false
repo: https://github.com/Helixar-AI/sentinel
marketplace: https://github.com/marketplace/actions/sentinel-mcp-security-scanner
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Helixar-AI/sentinel** to version **v0.1.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sentinel-mcp-security-scanner) to find the latest changes.

## Action Summary

The Sentinel MCP Scanner is a security-focused GitHub Action designed to identify misconfigurations and vulnerabilities in Model Context Protocol (MCP) servers. It automates the analysis of server configurations, live endpoints, and Docker containers, providing severity-based findings, remediation guidance, and CI/CD integration to block deployments with critical issues. Key capabilities include static and dynamic security scans, multiple output formats (e.g., SARIF for GitHub Code Scanning), and support for fail-on thresholds to enforce secure development practices.

## Release notes

## What's Changed

### 🧪 Integration Tests
- Added full integration test suite for CLI commands (`tests/integration/test_cli.py`)
- Added probe scanner integration tests (`tests/integration/test_probe.py`)

### 📄 Documentation
- Rebranded to **Sentinel MCP Scanner**
- README overhauled with shields.io badges (CI, stars, license, Python, PyPI, Marketplace)
- Severity emoji indicators added to all 26 rule tables
- Added fail-on threshold examples and star CTA

### 🔧 Fixes
- Resolved all ruff lint violations (import order, line length, unused variables)

**Full Changelog**: https://github.com/Helixar-AI/sentinel/compare/v0.1.0...v0.1.1
