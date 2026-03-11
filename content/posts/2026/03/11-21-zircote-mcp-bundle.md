---
title: MCP Bundle Packager
date: 2026-03-11 21:44:55 +00:00
tags:
  - zircote
  - GitHub Actions
draft: false
repo: https://github.com/zircote/mcp-bundle
marketplace: https://github.com/marketplace/actions/mcp-bundle-packager
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/zircote/mcp-bundle** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-bundle-packager) to find the latest changes.

## Action Summary

The `mcp-bundle` GitHub Action provides tools and workflows for automating the packaging of MCP server projects into MCPB-compliant bundles. It simplifies tasks such as detecting MCP server implementations, generating `manifest.json`, validating against the MCPB spec, and handling CI/CD processes like building, testing, packaging, and releasing. This action is ideal for streamlining MCPB packaging workflows, offering both reusable workflows for complete pipelines and composite actions for integration into existing workflows.

## Release notes

## MCP Bundle Packager

Package MCP server projects into [MCPB (MCP Bundle)](https://github.com/anthropics/mcpb) archives with manifest validation, checksums, and release asset support.

### Usage

**As a composite action** (step-level, you handle build):
```yaml
- uses: zircote/mcp-bundle@v1
```

**As a reusable workflow** (job-level, handles everything):
```yaml
jobs:
  package:
    uses: zircote/mcp-bundle/.github/workflows/mcp-bundle.yml@v1
    with:
      source-files: "src/**"
```

### Features

- 11-check manifest validation (semver, platforms, config types, variable refs, duplicate tools)
- `.mcpbignore` exclusion support (gitignore-style patterns)
- Glob pattern sanitization — rejects shell metacharacters
- Bundle structure validation (manifest.json at root, entry_point presence)
- SHA-256 checksum generation
- Artifact upload and GitHub Release attachment
- Server types: `node`, `python`, `binary`, `uv`

### Also Included

- **Claude Code plugin** with `/mcp-bundle:mcpb` skill for interactive bundle generation
- **4 example caller workflows** in [`examples/`](examples/)
- **262 tests** covering validation, security, and structural integrity

See [README.md](README.md) for full documentation.
