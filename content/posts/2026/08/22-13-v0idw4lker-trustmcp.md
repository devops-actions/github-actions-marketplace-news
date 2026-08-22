---
title: trustmcp scan
date: 2026-08-22 13:54:08 +00:00
tags:
  - v0idw4lker
  - GitHub Actions
draft: false
repo: https://github.com/v0idw4lker/trustmcp
marketplace: https://github.com/marketplace/actions/trustmcp-scan
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action, `trustmcp`, is a security scanner designed to identify vulnerabilities in MCP (Model Context Protocol) servers, primarily AI agents such as Claude and ChatGPT. It provides a native SARIF report for integration into the GitHub Security tab, offering both static scans of source code and dynamic analysis of running servers. The action can scan static code or both static and live dynamic content from running servers, with options to customize scanning modes, targets, and output formats.
---


Version updated for **https://github.com/v0idw4lker/trustmcp** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trustmcp-scan) to find the latest changes.

## Action Summary

This GitHub Action, `trustmcp`, is a security scanner designed to identify vulnerabilities in MCP (Model Context Protocol) servers, primarily AI agents such as Claude and ChatGPT. It provides a native SARIF report for integration into the GitHub Security tab, offering both static scans of source code and dynamic analysis of running servers. The action can scan static code or both static and live dynamic content from running servers, with options to customize scanning modes, targets, and output formats.

## What's Changed

New: `trustmcp check <reference>` scans an MCP server from npm/PyPI/GitHub/server.json
before you install it — never executes anything from the downloaded package.

Also: three new detection rules (tool-description injection, JWT/credential secrets,
runtime description mutation) raising DVMCP canonical detection from 3/10 to 6/10.

**Full Changelog**: https://github.com/v0idw4lker/trustmcp/compare/v0.1.2...v0.2.0
