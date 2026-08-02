---
title: Publish HTML presentation to Slidesfly
date: 2026-08-02 21:20:02 +00:00
tags:
  - rare
  - GitHub Actions
draft: false
repo: https://github.com/rare/slidesfly-integrations
marketplace: https://github.com/marketplace/actions/publish-html-presentation-to-slidesfly
version: v0.3.1
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  Slidesfly integrations and examples repository contains public, reproducible integration assets for Slidesfly, the publishing layer for existing HTML presentations. It provides GitHub Action for publishing or updating an HTML deck, Gemini CLI extension with Skill and hosted MCP, package-ready Claude Code plugin with Skill, and submitted Cursor plugin with Skill and bundled CLI runner. The repository intentionally excludes private Slidesfly SaaS application implementation.
---


Version updated for **https://github.com/rare/slidesfly-integrations** to version **v0.3.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/publish-html-presentation-to-slidesfly) to find the latest changes.

## Action Summary

Slidesfly integrations and examples repository contains public, reproducible integration assets for Slidesfly, the publishing layer for existing HTML presentations. It provides GitHub Action for publishing or updating an HTML deck, Gemini CLI extension with Skill and hosted MCP, package-ready Claude Code plugin with Skill, and submitted Cursor plugin with Skill and bundled CLI runner. The repository intentionally excludes private Slidesfly SaaS application implementation.

## What's Changed

## npm distribution trust materials

- Mirrors the verified registry tarballs for @slidesfly/cli@0.1.3 and @slidesfly/mcp@0.1.0.
- Includes SHA256SUMS and SHA512SUMS; npm integrity and SHA-1 values remain recorded in releases/npm-packages.json.
- Upgrades the public GitHub Action to website CLI 0.1.3 and fails closed unless the downloaded CLI matches the pinned SHA-256.
- Documents exact fixed-version npm installs and validates live registry tarballs in CI.

## Evidence

- Validate integrations CI passed on PR #19.
- Node 22 clean-host CLI and MCP stdio checks passed.
- Anonymous publish, reader/R2 byte identity, delete/404 recovery, uninstall, and exact reinstall passed.

## Known limits

- Both npm packages currently expose only one version, so historical downgrade rollback is unavailable and is not claimed.
- npm Trusted Publisher OIDC is configured but has not executed a tag publish yet; validate it on the next genuine package release.
