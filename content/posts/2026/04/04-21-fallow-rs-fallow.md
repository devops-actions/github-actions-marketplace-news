---
title: Fallow - Codebase Health
date: 2026-04-04 21:41:36 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.13.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.13.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, Fallow, is a high-performance codebase analysis tool for TypeScript and JavaScript projects. It automates the detection of unused code, code duplication, complexity issues, and architectural violations, providing actionable insights to improve code quality and maintainability. Key capabilities include dead code identification, clone detection, file complexity analysis, and automated fixes, all performed efficiently with zero configuration and sub-second runtime.

## What's Changed

## What's new

### Bun built-in module support

`bun:sqlite`, `bun:test`, `bun:ffi`, and all other `bun:` prefixed imports are now recognized as platform builtins. They are never flagged as unlisted dependencies. (#40)

### `ignoreDependencies` now suppresses unlisted warnings

Previously, `ignoreDependencies` only marked packages as "always used" for unused-dependency detection. Now it also suppresses unlisted-dependency warnings, making it the right tool for runtime-provided packages that aren't in your `package.json`.

```jsonc
{
  "ignoreDependencies": ["bun:sqlite", "my-global-lib"]
}
```

### MCP server distributed via npm

The `fallow-mcp` binary is now included in the npm package. After `npm install fallow`, the `fallow-mcp` command is available for MCP integration with Claude Code, OpenCode, and other AI agents. (#42)

```json
{
  "mcpServers": {
    "fallow": {
      "command": "fallow-mcp"
    }
  }
}
```

## Bug fixes

- **`$schema` accepted in `.fallowrc.json`** — JSON editors no longer show "unknown key" warnings when using the schema reference (#39)
- **VS Code extension LSP download on Windows** — release binaries now use the correct platform identifiers, fixing "no LSP binary found for win32-x64-msvc" errors (#38)

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.12.1...v2.13.0
