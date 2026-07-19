---
title: guardmarly
date: 2026-07-19 22:16:38 +00:00
tags:
  - mattybellx
  - GitHub Actions
draft: false
repo: https://github.com/mattybellx/Guardmarly
marketplace: https://github.com/marketplace/actions/guardmarly
version: v6.6.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  Guardmarly is a static analysis tool that focuses on identifying and flagging common security issues related to authorization gaps and risky code paths, such as IDOR (Insecure Direct Object Reference) vulnerabilities. It analyzes HTTP routes, checks for authentication guards, and traces data flow to potential sinks, helping developers identify and address these critical security flaws in their applications.
---


Version updated for **https://github.com/mattybellx/Guardmarly** to version **v6.6.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/guardmarly) to find the latest changes.

## Action Summary

Guardmarly is a static analysis tool that focuses on identifying and flagging common security issues related to authorization gaps and risky code paths, such as IDOR (Insecure Direct Object Reference) vulnerabilities. It analyzes HTTP routes, checks for authentication guards, and traces data flow to potential sinks, helping developers identify and address these critical security flaws in their applications.

## What's Changed

## [6.5.0] — 2026-07-18

### Added
- **VS Code Extension v1.2.0** — Gutter severity decorations (red/orange/yellow dots), findings quick-pick (click status bar), scan spinner animation, auto CLI detection (pip/python -m/python3 -m), friendly install prompt when CLI missing. Slim 28KB package.
- **Live scan counter** on guardmarly.onrender.com landing page
- **CI pipeline reference** at `.github/CI.md` documenting all auto-deploy triggers

### Changed
- VS Code extension now auto-detects guardmarly CLI via multiple methods
- Extension publish triggers on every push to main (vscode-extension/** changes)
- Render.com auto-deploys via Dockerfile with persistent scan counter

### Fixed
- Release workflow: `softprops/action-gh-release` downgraded to v1 (v2 API bug)
- Extension CI: `@types/node` types resolution, icon files tracked in git
- Webapp Docker build: removed redundant guardmarly pip install (source copied directly)


