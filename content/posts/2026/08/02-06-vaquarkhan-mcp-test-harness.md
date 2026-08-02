---
title: MCP Test Harness
date: 2026-08-02 06:06:13 +00:00
tags:
  - vaquarkhan
  - GitHub Actions
draft: false
repo: https://github.com/vaquarkhan/mcp-test-harness
marketplace: https://github.com/marketplace/actions/mcp-test-harness
version: v3.0.10
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The MCP Test Harness automates the testing of MCP servers using pytest-style testing. It solves the problem of manually running tests and provides end-to-end integration testing capabilities, including support for multiple test environments and reporting. The action integrates with various tools and platforms to provide comprehensive security testing solutions for MCP servers.
---


Version updated for **https://github.com/vaquarkhan/mcp-test-harness** to version **v3.0.10**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-test-harness) to find the latest changes.

## Action Summary

The MCP Test Harness automates the testing of MCP servers using pytest-style testing. It solves the problem of manually running tests and provides end-to-end integration testing capabilities, including support for multiple test environments and reporting. The action integrates with various tools and platforms to provide comprehensive security testing solutions for MCP servers.

## What's Changed

## mcp-test-harness 3.0.10

Real provider helpers across all framework packages, plus five new shims.

### Added
- Tool assert + MCP→provider schema converters + config builders on all packages
- New: `ollama`, `openrouter`, `litellm`, `xai`, `autogen`

### Notes
- All **23** PyPI artifacts aligned at **3.0.10**
- Pins `mcp>=1.0.0,<2` until MCP SDK 2.x migration
