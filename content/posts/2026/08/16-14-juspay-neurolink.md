---
title: NeuroLink AI
date: 2026-08-16 14:17:50 +00:00
tags:
  - juspay
  - GitHub Actions
draft: false
repo: https://github.com/juspay/neurolink
marketplace: https://github.com/marketplace/actions/neurolink-ai
version: v11.0.0
dependentsNumber: "10"
actionType: Node
nodeVersion: 20
actionSummary: |
  **NeuroLink is a universal AI integration platform that unifies 30+ AI providers and 100+ models under one consistent API. It provides a practical, TypeScript-first way to integrate AI into any application, offering features like single provider switching, built-in tools, enterprise-level features, and intelligent routing. NeuroLink also supports new avatar and music modalities with 12 providers.**
---


Version updated for **https://github.com/juspay/neurolink** to version **v11.0.0**.

- This action is used across all versions by **10** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/neurolink-ai) to find the latest changes.

## Action Summary

**NeuroLink is a universal AI integration platform that unifies 30+ AI providers and 100+ models under one consistent API. It provides a practical, TypeScript-first way to integrate AI into any application, offering features like single provider switching, built-in tools, enterprise-level features, and intelligent routing. NeuroLink also supports new avatar and music modalities with 12 providers.**

## What's Changed

## [11.0.0](https://github.com/juspay/neurolink/compare/v10.12.9...v11.0.0) (2026-08-16)

### ⚠ BREAKING CHANGES

* **(providers):** NOTE (nominal, no known consumers): the provably-unused
UniversalProviderOptions types and OpenRouterConfig type are removed from
the public type surface. Deliberately not marked with the major-bump
token: an unintended major release is the wrong signal for unused types.

Known rides (ledgered follow-ups): 10 export-default sites incl. the
public neurolink.ts default export; stale TypeDoc pages for deleted
symbols; benchmark-provider-performance fan-out 10->30 without
per-provider try/catch; "all providers" wrapper message on explicit
single-provider calls; stale Groq default model in catalog; structure
suite's import-text check superseded by the plan-04 descriptor registry.

Verification: full pre-commit gate on every granular commit;
providers-mocked 45/45; provider-structure 2/2; provider-wiring 17/17;
live test:matrix 54P/11F/20S with all 11 failures adjudicated
environmental or pre-existing (billing, local servers, decommissioned
Groq model, pre-existing streaming tool_choice 400s).

### Features

* **(providers):**  dead-code purge, tier-A provider fixes, CI safety net ([ec68f0a](https://github.com/juspay/neurolink/commit/ec68f0a5803e0a11f03dc9c5885c7bba9faf97bb))

