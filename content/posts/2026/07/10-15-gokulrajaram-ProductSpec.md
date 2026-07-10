---
title: Validate ProductSpec files
date: 2026-07-10 15:15:28 +00:00
tags:
  - gokulrajaram
  - GitHub Actions
draft: false
repo: https://github.com/gokulrajaram/ProductSpec
marketplace: https://github.com/marketplace/actions/validate-productspec-files
version: v0.10.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/gokulrajaram/ProductSpec** to version **v0.10.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/validate-productspec-files) to find the latest changes.

## What's Changed

## ProductSpec v0.10.0

This release keeps the Product Spec document shape at `spec_format_version: "0.1"` and updates the reference parser, schema, docs, and conformance suite.

### Added

- Fenced-code-aware section parsing. `##` headings inside Markdown code samples no longer create duplicate or out-of-order ProductSpec sections.
- `target_status: committed | provisional` for structured Success Metrics.
- `target_owner` for provisional Success Metric targets, so teams can record honest post-launch target calibration without turning guesses into committed intent.

### Published package

- `@productspec/parser@0.10.0`

### Validation

- Parser test suite passes.
- ProductSpec and Decision Trace conformance fixtures pass.
- npm publish dry-run passed before publishing the parser package.
