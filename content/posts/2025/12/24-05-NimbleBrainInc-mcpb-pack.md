---
title: MCPB Pack
date: 2025-12-24 05:30:15 +00:00
tags:
  - NimbleBrainInc
  - GitHub Actions
draft: false
repo: https://github.com/NimbleBrainInc/mcpb-pack
marketplace: https://github.com/marketplace/actions/mcpb-pack
version: v1.2.0
dependentsNumber: "?"
---


Version updated for **https://github.com/NimbleBrainInc/mcpb-pack** to version **v1.2.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcpb-pack) to find the latest changes.

## Action Summary

The **MCPB Pack** GitHub Action automates the process of packaging MCP (Model Context Protocol) servers into `.mcpb` bundle files using the official `mcpb` CLI. It simplifies workflows by providing a streamlined way to bundle server directories and their associated metadata, making it easier to create and release standardized server packages. Key capabilities include specifying input directories, customizing output filenames, and generating the path to the resulting `.mcpb` file for further use in deployment or release pipelines.

## Release notes

## What's New

- Added `bundle-sha256` output for bundle integrity verification
- SHA256 hash can be stored in server.json and verified at runtime before bundle extraction

## Outputs

| Output | Description |
|--------|-------------|
| `bundle-path` | Path to the generated .mcpb file |
| `bundle-size` | Size of the bundle in bytes |
| `bundle-sha256` | **NEW** SHA256 hash for integrity verification |

**Full Changelog**: https://github.com/NimbleBrainInc/mcpb-pack/compare/v1.1.1...v1.2.0
