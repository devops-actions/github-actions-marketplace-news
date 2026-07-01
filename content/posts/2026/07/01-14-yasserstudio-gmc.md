---
title: gmc — Google Merchant Center CLI
date: 2026-07-01 14:50:10 +00:00
tags:
  - yasserstudio
  - GitHub Actions
draft: false
repo: https://github.com/yasserstudio/gmc
marketplace: https://github.com/marketplace/actions/gmc-google-merchant-center-cli
version: v1.0.16
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/yasserstudio/gmc** to version **v1.0.16**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gmc-google-merchant-center-cli) to find the latest changes.

## What's Changed

## `gmc ordertracking` — Order Tracking sub-API (`ordertracking/v1`)

Adds `gmc ordertracking` — the **Order Tracking** sub-API (`accounts.orderTrackingSignals`). This was the last remaining GA (`v1`) Merchant API sub-API, so **the stable v1 surface is now fully covered (12 GA sub-APIs).**

Order tracking signals report completed shipments so Google can show accurate delivery estimates. The sub-API is **write-only** — a signal is immutable once created (no get/list/update/delete).

```sh
gmc ordertracking create --file signal.json
cat signal.json | gmc ordertracking create        # or via stdin
gmc ordertracking create --file signal.json --merchant-id 555
```

- Reads the `OrderTrackingSignal` from `--file`/stdin, validates the required fields (`orderId`, non-empty `shippingInfo`, non-empty `lineItems`) **offline by shape** so malformed input fails fast instead of as an opaque 400.
- Strips the output-only `orderTrackingSignalId`; supports `--merchant-id` to attribute a signal on behalf of another business.
- Wire shape verified against the `ordertracking/v1` proto (`POST .../orderTrackingSignals`, signal as the body, no `dataSource`).

`reviews`, `productstudio`, and `youtube` remain pre-GA (`v1beta`/`v1alpha`) and are deferred until they graduate to `v1`.

**Packages:** `@gmc-cli/cli` 1.0.16 · `@gmc-cli/api` 0.9.21 · `@gmc-cli/auth` 0.7.3

