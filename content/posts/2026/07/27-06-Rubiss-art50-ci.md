---
title: art50-ci AI transparency checks
date: 2026-07-27 06:46:55 +00:00
tags:
  - Rubiss
  - GitHub Actions
draft: false
repo: https://github.com/Rubiss/art50-ci
marketplace: https://github.com/marketplace/actions/art50-ci-ai-transparency-checks
version: v0.4.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  `art50-ci` is a tool that automates AI transparency and C2PA provenance checks in web applications. It performs inspections, detects issues such as overlay obstruction and accessibility failures, and validates the presence of a C2PA manifest label. The tool produces detailed reports with JSON, HTML, screenshots, timestamps, and hashes, but it does not interpret legal scope or claim compliance.
---


Version updated for **https://github.com/Rubiss/art50-ci** to version **v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/art50-ci-ai-transparency-checks) to find the latest changes.

## Action Summary

`art50-ci` is a tool that automates AI transparency and C2PA provenance checks in web applications. It performs inspections, detects issues such as overlay obstruction and accessibility failures, and validates the presence of a C2PA manifest label. The tool produces detailed reports with JSON, HTML, screenshots, timestamps, and hashes, but it does not interpret legal scope or claim compliance.

## What's Changed

## Highlights

- Automatically publishes the matching public npm package from a published GitHub release using npm trusted publishing and provenance.
- Adds reproducible browser-obstruction evidence and expanded built-CLI failure coverage.
- Updates the C2PA runtime, Commander, Zod, TypeScript, and Vitest dependency lines.
- Uses `unzipper@0.12.5` for the repository and tagged Action runtime installation.
- Requires Node.js 22.12.0 or later.

## Validation

The release commit passed all 90 tests, the isolated composite-action smoke test, C2PA fixture integrity checks, npm packaging validation, and a zero-finding repository audit. The published npm CLI was installed from the public registry and reports version 0.4.0. npm published SLSA provenance for the 49-file tarball.

## Known limitation

npm does not propagate a dependency package's `overrides` into the consuming project's resolution. Consequently, projects installing the npm CLI can still see four high-severity audit findings in `@contentauth/c2pa-node`'s install-time `unzipper@0.10.14 → fstream → rimraf → glob → minimatch → brace-expansion` chain. The tagged Action and repository lockfile use `unzipper@0.12.5`; fully removing the warnings for npm consumers requires an upstream C2PA dependency-range update.
