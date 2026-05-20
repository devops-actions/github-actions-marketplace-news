---
title: mcp-probe — MCP server health check
date: 2026-05-20 15:09:43 +00:00
tags:
  - Incultnitollc
  - GitHub Actions
draft: false
repo: https://github.com/Incultnitollc/mcp-probe
marketplace: https://github.com/marketplace/actions/mcp-probe-mcp-server-health-check
version: v1.0.0-action
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Incultnitollc/mcp-probe** to version **v1.0.0-action**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-probe-mcp-server-health-check) to find the latest changes.

## Action Summary

The `mcp-probe` GitHub Action is a diagnostic tool for testing and evaluating MCP (Model Context Protocol) servers. It automates comprehensive checks such as tool invocation, resource validation, prompt rendering, and schema analysis, providing a health report with a pass/fail scorecard. This action simplifies MCP server development, CI/CD integration, and third-party server evaluation by ensuring functionality, reliability, and schema quality.

## What's Changed

First Marketplace release of `mcp-probe-action`.

## Quick start

```yaml
- uses: incultnitollc/mcp-probe@v1
  with:
    command: 'node dist/index.js'
```

## Inputs

- `command` (required) — server launch command
- `fail-under` — composite threshold (0–100), requires `publishability: true`
- `publishability` — opt into the v1.1.0+ publishability suite (CLI 1.1.0 ships Sat 5/23)
- `package` — path to package.json for distribution-metadata check
- `html-report` — output path for HTML scorecard
- `mcp-probe-version` — pin to a specific npm version, default `latest`
- `json-output` — output path for JSON report

## Outputs

- `composite-score`, `band`, `tools-pass-rate`, `schema-warnings`

See [`examples/`](https://github.com/Incultnitollc/mcp-probe/tree/v1/examples) for full workflows:

- `examples/basic.yml` — minimal one-step setup
- `examples/publishability-gate.yml` — fail-under gate + PR comment
- `examples/matrix.yml` — Node version matrix with HTML artifact upload

Spec: [`docs/specs/mcp-probe-action-v1.md`](https://github.com/Incultnitollc/mcp-probe/blob/v1/docs/specs/mcp-probe-action-v1.md)

Independent of the npm CLI release cycle — users on `@v1` automatically pick up `@incultnitollc/mcp-probe@1.1.0` features once Sat 5/23 ship lands (via `mcp-probe-version: latest` default).

