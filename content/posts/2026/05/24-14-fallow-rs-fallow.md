---
title: Fallow - Codebase Intelligence
date: 2026-05-24 14:17:48 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v2.80.0
dependentsNumber: "87"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.80.0**.

- This action is used across all versions by **87** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## Action Summary

Fallow is a codebase intelligence tool designed for TypeScript and JavaScript projects, offering deterministic static analysis and optional runtime insights. It automates tasks such as identifying code health issues, risky changes, architectural hotspots, duplication, unused code, and dependency problems, providing actionable quality reports for maintainers, CI pipelines, and development tools. Its key capabilities include generating traceable, machine-readable outputs, supporting cleanup and refactoring efforts, and enabling teams to improve and maintain codebase quality without requiring configuration or relying on AI-driven analysis.

## What's Changed

## Highlights

This release adds optional inline review guidance and a diff-scoped sticky summary mode for CI integrations, ships a built-in Fumadocs plugin, and lands a batch of false-positive fixes for Wrangler precedence, TanStack Start virtual modules, MDX code fences, Node script runners, Bun's bare runtime module, prebuild package maps, and React Router type imports.

## Added

- **Inline review comments can include optional rule guidance.** Set `FALLOW_REVIEW_GUIDANCE=true` (or GitHub Action `review-guidance: true`) to append collapsed "What to do" blocks to `review-github` and `review-gitlab` comments using the existing rule guides from `fallow explain`. Default stays off. `fallow/unused-type` review comments also pick up the same one-line export-stripping suggestions as `unused-export`. Thanks [@OmerGronich](https://github.com/OmerGronich) for the request. (Closes [#659](https://github.com/fallow-rs/fallow/issues/659))

- **Sticky PR/MR summary comments can scope project-level findings to the diff.** Set `FALLOW_SUMMARY_SCOPE=diff` (or GitHub Action `summary-scope: diff`) to apply the diff filter to dependency, catalog, and override findings in `pr-comment-github` and `pr-comment-gitlab`. The default `all` preserves the existing behavior where sticky summaries include those findings even when their fixed `package.json` or workspace-manifest anchor line is outside the diff. Inline review comments are unaffected. Thanks [@OmerGronich](https://github.com/OmerGronich) for the request. (Closes [#661](https://github.com/fallow-rs/fallow/issues/661))

## Fixed

- **Fumadocs MDX projects no longer report configured docs content as unused.** A built-in Fumadocs plugin activates from `fumadocs-mdx`, `fumadocs-core`, `fumadocs-ui`, or `source.config.*`, keeps `source.config.*` and `.source/**/*.{ts,tsx,js,jsx,...}` reachable, suppresses `fumadocs-mdx:*` virtual imports, credits packages imported by the source config, and extracts literal `dir` values from `defineCollections`, `defineDocs`, and direct `defineConfig({ collections })` entries as MDX content roots. (Closes [#633](https://github.com/fallow-rs/fallow/issues/633))

- **Wrangler config precedence now matches Wrangler's selected config file.** Projects with multiple sibling `wrangler.*` config files previously credited every `main` value as an entry, so stale migration leftovers (e.g. `wrangler.toml`) could keep dead worker files alive. Fallow now only reads `main` from the highest-precedence sibling: `wrangler.json`, then `wrangler.jsonc`, then `wrangler.toml`. All sibling configs themselves remain credited as used. (Closes [#630](https://github.com/fallow-rs/fallow/issues/630))

- **TanStack Start `:v` virtual modules no longer surface as unlisted dependencies.** Imports such as `tanstack-start-manifest:v` and `tanstack-start-injected-head-scripts:v` are now recognized as plugin-registered framework virtual modules, and skipped from unlisted-dependency and unresolved-import reporting when the TanStack plugin is active. (Closes [#636](https://github.com/fallow-rs/fallow/issues/636))

- **Node package-script and forked runner entrypoints no longer report as unused.** Package scripts such as `node scripts/process-messages` resolve extensionless directory paths to their `index.*` files, and statically resolvable local `child_process.fork()` targets from proven `node:child_process` imports are credited as dynamic entrypoints, including the `fork(path.resolve(fileURLToPath(import.meta.url), '../runner.js'))` shape. (Closes [#638](https://github.com/fallow-rs/fallow/issues/638))

- **MDX documentation code fences no longer create unresolved imports.** Fenced TypeScript examples in `.mdx` files were previously extracted like executable top-level statements, so docs snippets with virtual `// file:` boundaries reported false `unresolved-import` findings. Fenced code blocks are now skipped during MDX import/export extraction, while real top-level imports continue through the parser path. (Closes [#639](https://github.com/fallow-rs/fallow/issues/639))

- **Workspace and self package imports that point at missing prebuild output now resolve back to source.** Packages such as Nitro and Redux Toolkit could previously report false `unresolved-imports`, `unlisted-dependencies`, `unused-dependencies`, and `unused-files` when `package.json` `imports` or `exports` selected `dist` targets before a build had run. Fallow now uses the nearest package manifest for `#...` imports and known root/workspace package manifests for self or workspace specifiers, maps project-relative output targets back to tracked `src` candidates, and preserves dependency usage metadata when those imports resolve to internal source files. (Closes [#641](https://github.com/fallow-rs/fallow/issues/641))

- **Bun's bare `bun` runtime module is no longer reported as an unlisted dependency.** `import { SQL } from "bun"` and type-only imports from `"bun"` are recognized as a Bun runtime builtin, alongside the existing `bun:*` builtin recognition. Real packages such as `bun-types`, `@types/bun`, `bunyan`, and `bun/*` subpaths remain normal dependencies. (Closes [#642](https://github.com/fallow-rs/fallow/issues/642))

- **React Router v7 and Remix generated `./+types/*` route modules no longer surface as unresolved imports.** Route modules using `import type { Route } from "./+types/root"` previously reported false-positive findings because those files are generated by the framework's typegen step and are often gitignored. The React Router and Remix plugins now declare `./+types/` as a generated type-import prefix; the suppression is plugin-gated and type-only, so runtime imports under the same prefix still report. (Closes [#645](https://github.com/fallow-rs/fallow/issues/645))

- **Windows CI is green again.** The Fumadocs integration test now normalizes path separators before asserting on `unused_files`, restoring the Windows leg of `ci.yml`. No user-visible behavior change.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.79.0...v2.80.0

