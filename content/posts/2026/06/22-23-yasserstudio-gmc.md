---
title: gmc — Google Merchant Center CLI
date: 2026-06-22 23:40:38 +00:00
tags:
  - yasserstudio
  - GitHub Actions
draft: false
repo: https://github.com/yasserstudio/gmc
marketplace: https://github.com/marketplace/actions/gmc-google-merchant-center-cli
version: v1.0.15
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/yasserstudio/gmc** to version **v1.0.15**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gmc-google-merchant-center-cli) to find the latest changes.

## What's Changed

## What's Changed

- **GitHub Action:** `uses: yasserstudio/gmc@v1` now runs preflight in CI with inline PR annotations on diffs, a findings summary table in the Actions tab, and structured outputs (`ok`, `scanned`, `errors`, `warnings`, `report`) for downstream steps.
- **MCP server:** new `gmc mcp` — a Model Context Protocol server over stdio exposing 12 tools (doctor, accounts, products, datasources, issues, quota, reports, preflight) to AI assistants like Claude Desktop, Cursor, and VS Code Copilot.
- **SEO preflight rules:** 7 new `seo.*` info-level rules — title length, brand-in-title, differentiating attributes (color/size), description length, title≠description, brand-in-description, placeholder image detection. All default to `info` (non-gating); tune in `.gmcpreflightrc`.
- **CI:** Socket.dev supply-chain scanning + SECURITY.md security policy.

**Tests:** 665. **Commands:** 19.
**Full Changelog**: https://github.com/yasserstudio/gmc/compare/v1.0.14...v1.0.15
