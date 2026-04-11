---
title: Fallow - Codebase Health
date: 2026-04-11 06:27:37 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.27.6
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.27.6**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a Rust-based codebase analysis tool designed for TypeScript and JavaScript projects. It automates the detection of unused code, code duplication, high complexity functions, and architectural issues, enabling developers to optimize and maintain cleaner codebases efficiently. With zero configuration, sub-second analysis time, and support for framework-specific plugins, it simplifies static code analysis and streamlines code quality management.

## What's Changed

## Bug fixes

### Bare HTML / Vue / Svelte asset references without `./` prefix

Following [v2.27.5](https://github.com/fallow-rs/fallow/releases/tag/v2.27.5) which fixed the same bug shape for Angular `templateUrl`/`styleUrl`, this release extends the normalization to HTML and Vue/Svelte SFC asset references. A post-ship audit surfaced two additional parsers that emitted user-authored strings as `ImportInfo.source` verbatim:

- **HTML** — `<script src="app.js">`, `<link rel="stylesheet" href="styles.css">`, and `<link rel="modulepreload" href="vendor.js">` (both attribute orders)
- **Vue/Svelte SFC** — `<script src="logic.ts">` external script references

Without the `./` prefix, the resolver's specifier classifier treated these as bare npm package specifiers. A plain `index.html` with a local `<script src="app.js">` produced a false positive:

```json
{
  "unlisted_dependencies": [
    { "package_name": "app.js", "imported_from": [{ "path": "src/index.html" }] },
    { "package_name": "styles.css", "imported_from": [{ "path": "src/index.html" }] }
  ]
}
```

Browsers, Vite, Parcel, and the Vue/Svelte compilers all resolve these references relative to the document or component file whether the `./` prefix is present or not. Fallow now normalizes bare filenames at extraction time so all three forms (`'app.js'`, `'./app.js'`, `'./src/app.js'`) emit the same internal specifier.

Scoped package paths (`@shared/header.html`), root-absolute paths (`/src/main.ts`), URLs (`https://cdn.example.com/lib.js`), and `data:` URIs are left untouched.

### Refactor: shared asset URL normalizer

The normalization logic previously lived inside `visitor/helpers.rs` as an Angular-specific helper. It has been extracted to `crates/extract/src/asset_url.rs` as a single `normalize_asset_url` function used by Angular, HTML, and SFC parsers. New `data:` URI guard added so the helper is safe to call from sites that don't pre-filter remote URLs.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.27.5...v2.27.6
