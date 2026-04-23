---
title: Fallow - Codebase Intelligence
date: 2026-04-23 21:43:48 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v2.47.0
dependentsNumber: "9"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.47.0**.

- This action is used across all versions by **9** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## Action Summary

Fallow is a static analysis tool designed for TypeScript and JavaScript codebases, offering insights into unused code, duplication, complexity, and architectural issues. It automates codebase cleanup, improves maintainability, and provides runtime intelligence for identifying execution paths in production. With zero configuration and sub-second analysis, it simplifies identifying inefficiencies and enforcing code quality, making it a valuable asset for teams focused on clean and efficient development workflows.

## What's Changed

## Highlights

- **Native Node.js bindings (`@fallow-cli/fallow-node`).** New async NAPI-RS bindings expose the main fallow analyses directly inside Node without spawning the CLI. Same JSON envelopes as `--format json`, structured `FallowNodeError`, platform binaries for macOS (arm64/x64), Linux (x64/arm64 gnu + musl), and Windows x64.

  ```bash
  npm install @fallow-cli/fallow-node
  ```

  ```ts
  import { detectDeadCode, detectDuplication, computeHealth } from '@fallow-cli/fallow-node';

  const deadCode = await detectDeadCode({ root: process.cwd(), explain: true });
  const dupes = await detectDuplication({ root: process.cwd(), mode: 'mild', minTokens: 30 });
  const health = await computeHealth({ root: process.cwd(), score: true, ownershipEmails: 'handle' });
  ```

  See <https://docs.fallow.tools/integrations/node-bindings> for the full API reference.

## Fixed

- Benchmark harness JSON parsing hardened against partial / malformed runs.
- Benchmark validity gate tightened; cross-category totals now enforced.
- Redundant plugin config scans removed on large monorepos.
- `unused-listed-deps` no longer false-positives on `tsconfig.json` `paths` aliases that point at non-existent prefixes.

## Internal

- NAPI bindings wrapper no longer silently truncates `maxCyclomatic` / `maxCognitive` above `u16::MAX`; typed `InvalidArg` error instead.
- `cargo shear` is clean again; stray `tokio` dep on the new NAPI crate removed.
- `sync-npm-versions.sh` now also rewrites the version strings NAPI-RS bakes into `crates/napi/index.js` so strict `NAPI_RS_ENFORCE_VERSION_CHECK` consumers do not see spurious mismatches after a bump.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.46.0...v2.47.0

