---
title: Fallow - Codebase Health
date: 2026-04-02 21:57:06 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.9.2
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.9.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a high-performance codebase analysis tool tailored for TypeScript and JavaScript projects. It automates the detection of dead code, duplicate code, and overly complex functions, providing actionable insights to streamline code quality, reduce technical debt, and improve maintainability. With zero configuration and sub-second execution, it simplifies tasks like identifying unused exports, circular dependencies, and code duplication, enabling developers to optimize their projects efficiently.

## What's Changed

## Features

### npm package resolution for `extends`

Config files can now extend shared configs from npm packages using the `npm:` prefix:

```json
{
  "extends": "npm:@company/fallow-config",
  "entry": ["src/index.ts"]
}
```

**Resolution strategies:**
- `npm:@company/fallow-config` — walks up `node_modules/`, checks `package.json` `exports`/`main`, falls back to standard config file names
- `npm:@company/fallow-config/strict.json` — resolves a specific file within the package
- Mixed with relative paths: `["npm:@company/base", "local-overrides.json"]`

**Security:** path confinement prevents traversal attacks via subpaths or malicious `package.json` fields. Package name validation rejects `..`/`.` components.

**Note:** `npm:` resolution uses `node_modules/` directory walk-up and is incompatible with Yarn Plug'n'Play.

### MCP server hardening

Improved parameter validation, tool descriptions, and error messages for better AI agent integration.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.9.1...v2.9.2
