---
title: Terraform module publish
date: 2026-06-22 15:58:15 +00:00
tags:
  - sethbacon
  - GitHub Actions
draft: false
repo: https://github.com/sethbacon/terraform-module-publish
marketplace: https://github.com/marketplace/actions/terraform-module-publish
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/sethbacon/terraform-module-publish** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-module-publish) to find the latest changes.

## What's Changed

## Security

Forces the bundled `undici` dependency to `>= 6.27.0`, clearing transitive HIGH/moderate advisories pulled in via `@actions/http-client` → `undici`.

The action performs all HTTP via a custom Node `https` client (`src/http.ts`) and never imports `@actions/http-client`, so `undici` was never on the runtime execution path — practical risk was low. This update keeps the bundled dependency tree clean.

No functional changes. `dist/` rebuilt with the patched dependency.

**Full Changelog:** https://github.com/sethbacon/terraform-module-publish/compare/v1.0.0...v1.0.1
