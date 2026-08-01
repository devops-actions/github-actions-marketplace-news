---
title: NormWind Tailwind Audit
date: 2026-08-01 22:32:41 +00:00
tags:
  - LunarWerxs
  - GitHub Actions
draft: false
repo: https://github.com/LunarWerxs/NormWind
marketplace: https://github.com/marketplace/actions/normwind-tailwind-audit
version: v3.7.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  NormWind is a zero-config CLI and GitHub Action that audits and fixes bloated Tailwind utility classes by rewriting them into their short, canonical form. It helps keep class strings concise, consistent, and error-free, ensuring your Tailwind codebase remains clean and maintainable.
---


Version updated for **https://github.com/LunarWerxs/NormWind** to version **v3.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/normwind-tailwind-audit) to find the latest changes.

## Action Summary

NormWind is a zero-config CLI and GitHub Action that audits and fixes bloated Tailwind utility classes by rewriting them into their short, canonical form. It helps keep class strings concise, consistent, and error-free, ensuring your Tailwind codebase remains clean and maintainable.

## What's Changed

## NormWind v3.7.0

_2026-08-01 · GitHub Marketplace Action_

- **Native GitHub review feedback** — the new `NormWind Tailwind Audit` Action emits file-and-line annotations, a complete job summary, stable outputs, and a machine-readable JSON report. Findings can fail the job or run in advisory mode; incomplete scans always fail closed.
- **Self-contained and least privilege** — the JavaScript Action bundles NormWind, Tailwind, Babel, and its reporting runtime; it installs nothing on the runner, requires no secret or write permission, strips inherited secrets from its scanner process, never executes checkout-provided dependencies/tools, and confines source/theme reads to the checked-out workspace.
- **Reproducible Action releases** — deterministic bundle generation, committed third-party license inventories, bundle-drift tests, and a pre-install local-Action smoke step now gate CI and releases. Moving Action tags no longer trigger duplicate npm publications.
- **Dependency hardening** — the transitive PostCSS version is refreshed past its source-map path-traversal advisory, leaving `npm audit` clean.

**Full comparison:** [v3.6.2...v3.7.0](https://github.com/LunarWerxs/NormWind/compare/v3.6.2...v3.7.0)
