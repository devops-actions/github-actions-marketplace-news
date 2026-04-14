---
title: Fallow - Codebase Health
date: 2026-04-14 06:39:00 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.33.0
dependentsNumber: "7"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.33.0**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a Rust-native codebase analyzer designed to identify unused code, duplication, complexity issues, and architectural violations in TypeScript and JavaScript projects. It automates the detection of dead code (e.g., unused files, dependencies, and exports), code duplication, and overly complex functions, providing fast, configuration-free insights to streamline code maintenance and improve quality. Key features include auto-detection of entry points, support for framework conventions, and the ability to audit or fix issues dynamically.

## What's Changed

## Highlights

### Ignore imports in duplication detection

Large codebases with consistent import ordering (enforced by formatters like `eslint-plugin-import/order`) often get false-positive duplication reports from sorted import blocks. The new `ignoreImports` option strips ES import declarations from the token stream before clone detection, eliminating this noise.

**Config:**
```json
{
  "duplicates": {
    "ignoreImports": true
  }
}
```

**CLI:**
```bash
fallow dupes --ignore-imports
```

Only affects ES `import` statements. CommonJS `require()` calls and re-exports (`export { x } from`) are unaffected. Default: `false` (opt-in, no behavior change for existing users).

Resolves [#113](https://github.com/fallow-rs/fallow/issues/113).

### Audit command now respects project duplication config

The `fallow audit` command previously hardcoded default values for all duplication settings, ignoring `ignoreImports`, `crossLanguage`, `skipLocal`, and other options from the project config file. Now reads from config, matching the behavior of `fallow dupes` and combined mode.

## Other changes

- Hardened CI workflow permissions for OpenSSF Scorecard compliance

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.32.1...v2.33.0
