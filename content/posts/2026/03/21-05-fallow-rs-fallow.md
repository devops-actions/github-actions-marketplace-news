---
title: Fallow - Dead Code Analysis
date: 2026-03-21 05:50:49 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-dead-code-analysis
version: v1.0.3
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v1.0.3**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-dead-code-analysis) to find the latest changes.

## Action Summary

This GitHub Action, **fallow**, is a high-performance codebase analyzer for JavaScript and TypeScript projects, built with Rust. It automates the detection of unused code (e.g., files, exports, dependencies), circular dependencies, code duplication, and complexity hotspots, providing actionable insights significantly faster than traditional tools. By streamlining these analyses without requiring a Node.js runtime, it helps developers optimize and maintain cleaner, more efficient codebases.

## Release notes

Fallow 1.0 is a **stability milestone**. The config format, JSON output schema, CLI interface, and plugin format are now covered by [semantic versioning](https://github.com/fallow-rs/fallow/blob/main/docs/backwards-compatibility.md) -- breaking changes only happen in major version bumps.

## What's in 1.0

Fallow is a Rust-native codebase analyzer for JavaScript and TypeScript. It finds unused code, detects circular dependencies, and identifies code duplication in a single sub-second tool. 84 framework plugins, zero configuration required.

\`\`\`bash
npx fallow check    # Dead code analysis
npx fallow dupes    # Duplication detection
npx fallow fix      # Auto-remove unused exports and deps
\`\`\`

### 12 issue types
Unused files, exports, types, dependencies, devDependencies, enum members, class members, unresolved imports, unlisted dependencies, duplicate exports, circular dependencies, and type-only dependencies.

### Performance
- **3-36x faster** than knip v5, **2-14x faster** than knip v6 for dead code analysis
- **20-33x faster** than jscpd for duplication detection
- **10-15x less memory** than knip v5, **3-8x less** than knip v6
- Sub-second on most projects, even at 5,000+ files

### Framework support
84 built-in plugins with auto-detection. 31 plugins have deep AST-based config parsing (ESLint, Vite, Jest, Storybook, Tailwind, Webpack, TypeScript, Babel, Rollup, PostCSS, Nuxt). Covers Next.js, Nuxt, Remix, SvelteKit, Angular, NestJS, React Native, Expo, and 70+ more.

### Workspace support
npm, yarn, pnpm workspaces (including pnpm-workspace.yaml and content-addressable store detection). TypeScript project references (tsconfig.json references) are also discovered as workspaces. Cross-workspace imports resolve through package.json exports field subpaths with output-to-source fallback.

### Integrations
- **LSP server** with diagnostics, code actions, Code Lens (reference counts), and hover info
- **VS Code extension** with tree views, status bar, and auto-download
- **MCP server** for AI agent integration (Claude Code, Cursor, etc.)
- **GitHub Action** with SARIF upload, PR comments, and job summaries
- **External plugin system** for custom framework support

---

## New since v0.3.0

### Features
- **TypeScript project references** -- workspace discovery from tsconfig.json references field, additive with npm/pnpm workspaces, deduplicated by canonical path
- **Elementary cycle enumeration** -- circular dependency detection now reports individual cycles within SCCs (max 20 per SCC) instead of raw strongly connected components
- **CSS Modules** -- .module.css/.module.scss class names extracted as named exports with styles.className member access resolution
- **fallow migrate** -- convert knip and jscpd configs to fallow format automatically
- **Nuxt deep config parsing** -- resolve_config() for modules, css, plugins, extends, postcss, and path aliases
- **Code Lens** -- export reference counts above declarations with click-to-navigate in the LSP
- **Duplication diagnostics** in LSP with "Extract duplicate into function" code action
- **Cross-workspace exports field resolution** with output-to-source directory fallback
- **Pnpm content-addressable store detection** for injected dependencies
- **Cache-aware incremental parsing** with --performance cache hit/miss stats
- **Inline suppression for circular dependencies** (fallow-ignore-file circular-dependency)
- **Backwards compatibility policy** documented for semver stability guarantees

### Bug fixes
- UTF-8 boundary handling in duplication detection (multi-byte character safety)
- Trace path matching for monorepo compatibility (canonicalized vs user-provided paths)
- Exports map resolution robustness for cross-workspace imports
- Nested output subdirectory mapping (e.g., dist/esm/utils.mjs to src/utils.ts)
- Windows build: restrict DiscoveredFile size assertion to unix (v1.0.1)
- npm publish: switch to OIDC trusted publishing (v1.0.3)

### Infrastructure
- 7 Rust crates publish to crates.io in dependency order
- VS Code extension CI pipeline with marketplace publishing
- Circular dependency benchmarks vs madge and dpdm

---

## Getting started

\`\`\`bash
npx fallow check                     # Zero config, sub-second
npx fallow dupes --mode semantic     # Catch clones with renamed variables
npx fallow fix --dry-run             # Preview auto-removal
npm install -g fallow                # Or install globally
\`\`\`

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v0.3.0...v1.0.3
