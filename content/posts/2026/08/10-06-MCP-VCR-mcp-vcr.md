---
title: MCP-VCR Verify Action
date: 2026-08-10 06:07:32 +00:00
tags:
  - MCP-VCR
  - GitHub Actions
draft: false
repo: https://github.com/MCP-VCR/mcp-vcr
marketplace: https://github.com/marketplace/actions/mcp-vcr-verify-action
version: 0.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **MCP-VCR is a tool that records and verifies MCP client-server conversations, ensuring consistent behavior in CI pipelines. It normalizes data to ensure reproducibility, protects against credential leaks, and supports various replay options. The action helps developers catch regressions early by providing a layer of transparency between clients and servers.**
---


Version updated for **https://github.com/MCP-VCR/mcp-vcr** to version **0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-vcr-verify-action) to find the latest changes.

## Action Summary

**MCP-VCR is a tool that records and verifies MCP client-server conversations, ensuring consistent behavior in CI pipelines. It normalizes data to ensure reproducibility, protects against credential leaks, and supports various replay options. The action helps developers catch regressions early by providing a layer of transparency between clients and servers.**

## What's Changed

## What's Changed
We are excited to release `v0.2.0`, introducing core architecture upgrades for custom transports, a dedicated Pytest plugin for offline VCR testing, and security hardening for CLI and CI environments.

### 🚀 Key Features & Upgrades
* **Transport Abstraction Layer**: Replaced tight stdio coupling with an extensible `Transport` protocol supporting both local `StdioTransport` and remote `SseTransport` (SSE + HTTP POST).
* **Pytest Plugin (`pytest-mcp-vcr`)**: Added first-class offline replaying fixtures for deterministic unit testing of MCP clients and servers.
* **Large Transcript Streaming**: Replaced full-memory transcript backfilling with space-efficient O(1) memory tempfile streaming for large NDJSON logs.
* **Timing-Faithful Replays**: Improved sleep latency calculation to execute relative to the session start to avoid drift accumulation.

### 🔒 Security & Stability Hardening
* **URL Log Redaction**: Strips sensitive query parameters, API tokens, and credentials from all user-facing console logs and recorded command metadata.
* **SSE Payload Size Bounding**: Implemented byte size limits on incoming SSE event payloads to prevent memory overflow.
* **Credential Isolation**: Hardened CI workflow workflows by disabling credential persistence in checked-out code steps.


**Full Changelog**: https://github.com/MCP-VCR/mcp-vcr/compare/v0.1.5...0.2.0
