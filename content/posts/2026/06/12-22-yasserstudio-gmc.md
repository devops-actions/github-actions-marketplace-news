---
title: gmc — Google Merchant Center CLI
date: 2026-06-12 22:50:26 +00:00
tags:
  - yasserstudio
  - GitHub Actions
draft: false
repo: https://github.com/yasserstudio/gmc
marketplace: https://github.com/marketplace/actions/gmc-google-merchant-center-cli
version: v1.0.9
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/yasserstudio/gmc** to version **v1.0.9**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gmc-google-merchant-center-cli) to find the latest changes.

## What's Changed

## What's Changed

A small, read-only ops command over `quota/v1` `accounts.quotas`.

- **`gmc quota list`** — show your daily Merchant API call quota and usage per method group, plus the per-minute limit, so you can see your rate-limit headroom in CI/ops. The daily counters reset at 12:00 UTC; `--json` emits the raw `QuotaGroup`s (including `methodDetails`).

New read-only `QuotaService` (`listQuotas`) + `QuotaGroup` / `MethodDetail` types (int64 counts typed as strings). The `quota` sub-API bucket + scope were already wired, so this is the service + command only. Ran the multi-agent review (security · code-quality · correctness — 0 actionable findings).

### Packages
`@gmc-cli/cli` 1.0.8 → **1.0.9** · `@gmc-cli/api` → 0.9.15 (internal)

### Install
`npm i -g @gmc-cli/cli` · `brew install yasserstudio/tap/gmc` · or the standalone binaries below.

**Tests:** api 125 · cli 252 (+5). **Full changelog:** https://github.com/yasserstudio/gmc/compare/v1.0.8...v1.0.9

