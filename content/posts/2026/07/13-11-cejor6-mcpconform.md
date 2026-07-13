---
title: mcpconform
date: 2026-07-13 11:52:21 +00:00
tags:
  - cejor6
  - GitHub Actions
draft: false
repo: https://github.com/cejor6/mcpconform
marketplace: https://github.com/marketplace/actions/mcpconform
version: v0.2.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The `mcpconform` GitHub Action is a static linter that checks MCP setup correctness. It validates tool definitions, server manifests, and client configuration files against the MCP spec and provider profiles. The action supports auto-detection of artifact types, target providers, and output formats like SARIF for integration with code scanning tools.
---


Version updated for **https://github.com/cejor6/mcpconform** to version **v0.2.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcpconform) to find the latest changes.

## Action Summary

The `mcpconform` GitHub Action is a static linter that checks MCP setup correctness. It validates tool definitions, server manifests, and client configuration files against the MCP spec and provider profiles. The action supports auto-detection of artifact types, target providers, and output formats like SARIF for integration with code scanning tools.

## What's Changed

Docs / packaging release — **no behavior change**. Republished so the refreshed README reaches the [npm package page](https://www.npmjs.com/package/mcpconform).

`npm i -g mcpconform` or `npx mcpconform`, or use the Action: `uses: cejor6/mcpconform@v1`.

## What's new
- **README curb-appeal for public visibility** — status badges (npm version, CI, license, Node), a copy-pasteable **"Lint your MCP server in 30 seconds"** quickstart at the top, a real example-output block, a clean-run example, and a prominent npm link.
- **CI self-lint (dogfood) job** — the linter now runs against the `examples/` fixtures on every push/PR, asserting the bad fixtures surface a known seeded finding (not merely a non-zero exit) and the good fixtures pass clean.
- **Bug-report issue form** + `config.yml` routing (security → policy, questions → README).

No rules, profiles, or CLI behavior changed since v0.2.0. Full notes in [CHANGELOG.md](https://github.com/cejor6/mcpconform/blob/main/CHANGELOG.md).
