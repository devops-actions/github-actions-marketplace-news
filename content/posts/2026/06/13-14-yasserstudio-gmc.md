---
title: gmc — Google Merchant Center CLI
date: 2026-06-13 14:39:42 +00:00
tags:
  - yasserstudio
  - GitHub Actions
draft: false
repo: https://github.com/yasserstudio/gmc
marketplace: https://github.com/marketplace/actions/gmc-google-merchant-center-cli
version: v1.0.10
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/yasserstudio/gmc** to version **v1.0.10**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gmc-google-merchant-center-cli) to find the latest changes.

## What's Changed

## What's Changed

A read-only window over `issueresolution/v1` — the issues Merchant Center surfaces, with Google's own resolution content, in the terminal.

- **`gmc issues account`** — render account-level issues (`renderaccountissues`): why the account is limited and how to fix it.
- **`gmc issues product <id>`** — render item-level issues for one product (`renderproductissues`); accepts a bare product id or the full resource `name` from `products list`.

Each issue prints `[SEVERITY]` (`DISAPPROVED` / `DEMOTED` / `NOT_IMPACTED`), the impact message, and a region/destination breakdown; `--language` / `--time-zone` localize the rendered content. `--json` emits the raw `RenderedIssue`s, including the prerendered HTML detail and `actions`. Completes the diagnostics trio alongside `doctor` (access) and `preflight` (pre-upload). The allowlist-gated `triggeraction` write flow is intentionally not exposed.

New read-only `IssuesService` (`renderAccountIssues` / `renderProductIssues`) + `RenderedIssue` types; product ids are canonicalized via `productSegment` so a hostile id can neither escape the configured account nor reach `:triggeraction`. Adds `issueresolution` as the 9th Merchant API rate-limit bucket. Ran the multi-agent review (security · code-quality · API-design — 0 critical/high; applied the suggested empty-id guard, a helper extraction, and edge-case tests).

### Packages
`@gmc-cli/cli` 1.0.9 → **1.0.10** · `@gmc-cli/api` → 0.9.16 (internal)

### Install
`npm i -g @gmc-cli/cli` · `brew install yasserstudio/tap/gmc` · or the standalone binaries below.

**Tests:** api 132 (+7) · cli 260 (+8). **Full changelog:** https://github.com/yasserstudio/gmc/compare/v1.0.9...v1.0.10

