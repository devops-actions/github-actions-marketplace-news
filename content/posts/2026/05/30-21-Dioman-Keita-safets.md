---
title: SafeTS Runtime Safety Check
date: 2026-05-30 21:46:41 +00:00
tags:
  - Dioman-Keita
  - GitHub Actions
draft: false
repo: https://github.com/Dioman-Keita/safets
marketplace: https://github.com/marketplace/actions/safets-runtime-safety-check
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Dioman-Keita/safets** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/safets-runtime-safety-check) to find the latest changes.

## Action Summary

SafeTS is a developer tool that scans TypeScript codebases to detect runtime crash patterns that the TypeScript compiler cannot catch, even under strict type-checking. Using the TypeScript Compiler API, it identifies issues like accessing properties on undefined objects before they reach production, ensuring greater runtime reliability. SafeTS automates the detection of these subtle errors, provides actionable suggestions, and supports integration with CI workflows through JSON output.

## What's Changed

﻿# SafeTS v1.0.2

Patch release for the `process.env.PORT.toString()` false negative fixed in #42.

## What's Fixed

- Detects unsafe method access on optional `process.env` values, such as `process.env.PORT.toString()`.
- Keeps safe optional chaining patterns quiet, such as `process.env.PORT?.toString()` and `(process.env.PORT)?.toString()`.
- Preserves detection for broken extracted optional chains such as `(process.env.PORT?.toString)()`.
- Updates shipped GitHub Action, docs-site, and agent skill examples to pin `v1.0.2` / package version `1.0.2`.

## Validation

- `npm run build`
- `npm run typecheck`
- `npm test`
- `npm run pack:check`
- `npm publish --access=public --dry-run`
- Published npm package: `@safets-org/cli@1.0.2`

## Install

```bash
npm install --save-dev @safets-org/cli
npx safets doctor
```

