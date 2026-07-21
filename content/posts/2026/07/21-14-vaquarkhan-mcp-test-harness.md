---
title: MCP Test Harness
date: 2026-07-21 14:51:31 +00:00
tags:
  - vaquarkhan
  - GitHub Actions
draft: false
repo: https://github.com/vaquarkhan/mcp-test-harness
marketplace: https://github.com/marketplace/actions/mcp-test-harness
version: v3.0.8
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  MCP Test Harness is a CI gate for MCP servers, ensuring that AI agents' connectors work correctly before deployment. It automates deterministic tests using pytest-style syntax, providing JUnit/SARIF reports and conformance badges to audit and govern the server's functionality. The action supports multiple transports (stdio, SSE, HTTP) and integrates seamlessly with GitHub Actions, JUnit consumers, and Code Scanning for comprehensive testing coverage and security checks.
---


Version updated for **https://github.com/vaquarkhan/mcp-test-harness** to version **v3.0.8**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-test-harness) to find the latest changes.

## Action Summary

MCP Test Harness is a CI gate for MCP servers, ensuring that AI agents' connectors work correctly before deployment. It automates deterministic tests using pytest-style syntax, providing JUnit/SARIF reports and conformance badges to audit and govern the server's functionality. The action supports multiple transports (stdio, SSE, HTTP) and integrates seamlessly with GitHub Actions, JUnit consumers, and Code Scanning for comprehensive testing coverage and security checks.

## What's Changed

## Highlights

- **Dual-mode MCP testing:** stateful flows unchanged; new SEP-2575 stateless path for Streamable HTTP (2026-07-28)
- **`mcp-test conformance stateless`** — adversarial certification gate + README badge
- **`assert_stateless_throughput`** — protocol-aware hyperscale load without initialize handshake
- **Docs:** [TUTORIAL_STATELESS.md](https://github.com/vaquarkhan/mcp-test-harness/blob/main/docs/TUTORIAL_STATELESS.md), RFC-006, examples, `stateless-dual-mode.svg` diagram

## Install

```bash
pip install mcp-test-harness==3.0.8
docker pull ghcr.io/vaquarkhan/mcp-test-harness:3.0.8
```

All **18 PyPI artifacts** aligned at 3.0.8.
