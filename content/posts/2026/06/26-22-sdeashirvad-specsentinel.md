---
title: SpecSentinel
date: 2026-06-26 22:28:17 +00:00
tags:
  - sdeashirvad
  - GitHub Actions
draft: false
repo: https://github.com/sdeashirvad/specsentinel
marketplace: https://github.com/marketplace/actions/specsentinel
version: v1
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/sdeashirvad/specsentinel** to version **v1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/specsentinel) to find the latest changes.

## What's Changed

# Changelog

All notable changes to SpecSentinel are documented here.

This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [1.0.0] — 2026-06-26

Initial public release by [SdeAshirvad Labs](https://labs.sdeashirvad.com/).

### Added
- **specsentinel** npm package and `specsentinel` CLI — OpenAPI contract diff with breaking/non-breaking classification
- **14 diff rules** — endpoints, methods, fields, types, enums, status codes
- **Risk scoring** — NONE / LOW / MEDIUM / HIGH / CRITICAL with weighted breakdown
- **Consumer impact reports** — rule-based impact templates per change
- **Governance** — `specguard.yml` approvals, suppressions, and expiry tracking
- **Output formats** — console, JSON (`ContractDiffReport`), Markdown, HTML
- **`--webview`** — local SpecSentinel Studio report-only view in the browser
- **GitHub Action** — CI gate, PR comments, governance-aware exit codes
- **SpecSentinel Studio** — interactive dashboard at `/studio` with playground, report explorer, and CI previews
- **Marketing landing page** — product site with Labs branding
- **Test suite** — unit + CLI/webview integration tests; CI workflow
- **Release docs** — `pre-release.md`, `npm_release.md`, `github_marketplace.md`

