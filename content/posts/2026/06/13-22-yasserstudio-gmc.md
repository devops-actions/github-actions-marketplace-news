---
title: gmc — Google Merchant Center CLI
date: 2026-06-13 22:06:39 +00:00
tags:
  - yasserstudio
  - GitHub Actions
draft: false
repo: https://github.com/yasserstudio/gmc
marketplace: https://github.com/marketplace/actions/gmc-google-merchant-center-cli
version: v1.0.11
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/yasserstudio/gmc** to version **v1.0.11**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gmc-google-merchant-center-cli) to find the latest changes.

## What's Changed

## What's Changed

A correctness fix for the Merchant API **v1** product surface — found by the first end-to-end test against a live Merchant Center account.

- **`products` now works against live v1.** The API renamed the product attributes field `attributes` → `productAttributes` (reads _and_ writes). `gmc` still used `attributes`, so `products list`/`get` showed blank titles and `products insert` failed with `400 Unknown name "attributes"`. The field is renamed across the typed client and every consumer — `products`, `feeds`, `migrate products`, and `preflight --remote`.
- **`ItemLevelIssue` updated to the v1 shape** (`severity` / `reportingContext` / `applicableCountries`), so `products get` shows issue details and `products list` reports accurate `N disapproved / M issue(s)` counts.
- **`gmc issues`** severity is documented correctly (`ERROR`, not the prior v1beta enum).
- Added a recorded-shape **v1 contract test** so a future field rename fails CI instead of shipping silently.

### Packages
`@gmc-cli/cli` 1.0.10 → **1.0.11** · `@gmc-cli/api` → 0.9.17 (internal)

### Install
`npm i -g @gmc-cli/cli` · `brew install yasserstudio/tap/gmc` · or the standalone binaries below.

**Tests:** 585. **Full changelog:** https://github.com/yasserstudio/gmc/compare/v1.0.10...v1.0.11

