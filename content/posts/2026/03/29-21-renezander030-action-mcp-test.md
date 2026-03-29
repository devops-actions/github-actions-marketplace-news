---
title: MCP Protocol Compliance Test
date: 2026-03-29 21:50:27 +00:00
tags:
  - renezander030
  - GitHub Actions
draft: false
repo: https://github.com/renezander030/action-mcp-test
marketplace: https://github.com/marketplace/actions/mcp-protocol-compliance-test
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/renezander030/action-mcp-test** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-protocol-compliance-test) to find the latest changes.

## Action Summary

This GitHub Action, **action-mcp-test**, is designed to automate the testing of MCP (Model Context Protocol) servers within CI pipelines. It validates protocol compliance, checks JSON schema correctness, and performs smoke tests for tools and resources, streamlining the verification of server functionality and robustness. Key capabilities include generating detailed test reports, compliance scores, and handling both stdio and HTTP transport methods.

## What's Changed

Initial release. Test MCP servers in CI with a single action.

- Protocol lifecycle checks (connect, server info, ping)
- Tool discovery and JSON Schema validation
- Unknown tool error handling
- Resource and prompt enumeration
- Custom tool smoke-tests via fixture config
- Stdio and Streamable HTTP transport support
- Compliance score and Job Summary report
