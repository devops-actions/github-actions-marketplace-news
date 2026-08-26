---
title: Sentinel Scan (MCP/LLM security)
date: 2026-08-26 06:20:57 +00:00
tags:
  - Ventrova
  - GitHub Actions
draft: false
repo: https://github.com/Ventrova/sentinel-scan-cli
marketplace: https://github.com/marketplace/actions/sentinel-scan-mcp-llm-security
version: v1.4.8
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The Sentinel Scan CLI is an open-source, 10-heuristic, 15-attack suite tool that automatically scans MCP tool manifests and MCP server configurations for various security vulnerabilities, such as prompt injection, shadowing, and credential leakage. It provides a one-line installation and usage method, and supports both CLI and MCP server modes. The tool is designed to help organizations identify and mitigate security risks associated with their APIs and LLMs.
---


Version updated for **https://github.com/Ventrova/sentinel-scan-cli** to version **v1.4.8**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sentinel-scan-mcp-llm-security) to find the latest changes.

## Action Summary

The Sentinel Scan CLI is an open-source, 10-heuristic, 15-attack suite tool that automatically scans MCP tool manifests and MCP server configurations for various security vulnerabilities, such as prompt injection, shadowing, and credential leakage. It provides a one-line installation and usage method, and supports both CLI and MCP server modes. The tool is designed to help organizations identify and mitigate security risks associated with their APIs and LLMs.

## What's Changed

GitHub Action for CI: scan MCP manifests on push/PR and fail the build on high-severity findings, in one step.

```yaml
- uses: actions/checkout@v4
- uses: Ventrova/sentinel-scan-cli@v1
  with:
    manifest: mcp.json
    fail-on-severity: high
```

Full inputs/outputs reference and SARIF/markdown/json output modes in the README's [GitHub Action](https://github.com/Ventrova/sentinel-scan-cli#github-action) section.

Since v1.4.2: adds the `sentinel-scan evidence` subcommand (Annex IV evidence pack, #2), CLI output CTAs, and various instrumentation/version-string fixes. Same 15-attack corpus + MCP manifest heuristics, no network calls, no secrets required.

Install: `npx sentinel-scan-cli` / `pip install sentinel-scan-cli` / `uses: Ventrova/sentinel-scan-cli@v1`.
