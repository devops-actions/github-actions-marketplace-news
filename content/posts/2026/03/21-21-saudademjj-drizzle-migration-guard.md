---
title: drizzle-migration-guard
date: 2026-03-21 21:21:25 +00:00
tags:
  - saudademjj
  - GitHub Actions
draft: false
repo: https://github.com/saudademjj/drizzle-migration-guard
marketplace: https://github.com/marketplace/actions/drizzle-migration-guard
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/saudademjj/drizzle-migration-guard** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/drizzle-migration-guard) to find the latest changes.

## Action Summary

The `drizzle-migration-guard` GitHub Action enhances the `drizzle-kit check` tool by automating the detection and diagnosis of migration file collisions in pull requests. It simplifies review workflows by classifying failures into actionable categories, providing clear next steps via sticky PR comments, and generating readable summaries within GitHub Actions. This action addresses common challenges in managing migration conflicts, streamlining collaboration, and ensuring smoother development processes in projects using Drizzle.

## Release notes

# First Marketplace Release

`drizzle-migration-guard` is now available on the GitHub Actions Marketplace.

It wraps `drizzle-kit check` to catch Drizzle migration collisions in CI,
posting sticky PR comments with a clear explanation of the issue and suggested fixes.

## Release Highlights

- **Smart PR Comments:** Detects migration collisions and posts actionable explanations
  directly on the PR, including suggested remediation steps.
- **Monorepo & Manifest Support:** Configuration discovery is monorepo-aware, triggering
  on relevant `drizzle.config.ts` paths and `package.json` changes.
- **Robust File Tracking:** Diff parsing handles renamed schema and migration files
  without dropping checks.
- **Pre-built Artifacts:** Ships with committed `dist` artifacts and supports SemVer
  action tags (e.g., `uses: saudademjj/drizzle-migration-guard@v1`).

## Quick Start
```yaml
- uses: saudademjj/drizzle-migration-guard@v1
  with:
    github-token: ${{ github.token }}
```
