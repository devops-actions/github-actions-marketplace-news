---
title: Fallow - Codebase Health
date: 2026-04-02 06:34:27 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.9.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.9.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, "Fallow," is a codebase analyzer designed for TypeScript and JavaScript projects. It automates the detection of unused code, duplicate code blocks, and overly complex functions, helping developers optimize their codebases by identifying inefficiencies and architectural issues. Key capabilities include fast Rust-native analysis with zero configuration, dead code removal previews, and real-time monitoring for code changes.

## What's Changed

## Architecture boundary violations

Fallow now enforces architecture boundaries. Define zones (glob patterns mapping directories to layers) and rules (which zones may import from which). Violations are caught at the import site.

```jsonc
{
  "boundaries": {
    "preset": "bulletproof"
  }
}
```

### Built-in presets

| Preset | Zones | Pattern |
|:-------|:------|:--------|
| `layered` | presentation, application, domain, infrastructure | Classic N-tier |
| `hexagonal` | adapters, ports, domain | Ports & adapters |
| `feature-sliced` | app, pages, widgets, features, entities, shared | Strict downward imports |
| `bulletproof` | app, features, shared, server | Dominant React/Next.js pattern |

Presets auto-detect `rootDir` from `tsconfig.json` and generate zone patterns like `src/{zone}/**`. User zones and rules merge on top of preset defaults.

### Inspect with `fallow list --boundaries`

```
Boundaries: 4 zones, 4 rules

Zones:
  app                  3 files  src/app/**
  features             12 files src/features/**
  shared               8 files  src/components/**, src/hooks/**, src/lib/**, ...
  server               4 files  src/server/**

Rules:
  app                  → features, shared, server
  features             → shared, server
  server               → shared
  shared               (isolated — no imports allowed)
```

### Full integration

- All 6 output formats (human, JSON, SARIF, compact, markdown, CodeClimate)
- Inline suppression: `// fallow-ignore-next-line boundary-violation`
- LSP diagnostics and code actions
- GitHub Action annotations and review comments
- GitLab CI review comments
- MCP server integration
- `--boundary-violations` filter for `fallow dead-code`

## Other changes

- **Fixed**: rest patterns in destructured exports (`export const { a, ...rest } = obj`)
- **Updated**: oxc dependency upgrade (7 crates)

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.8.1...v2.9.0
