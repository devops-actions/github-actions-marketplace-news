---
title: NthLayer Reliability Check
date: 2026-04-28 22:03:58 +00:00
tags:
  - rsionnach
  - GitHub Actions
draft: false
repo: https://github.com/rsionnach/nthlayer
marketplace: https://github.com/marketplace/actions/nthlayer-reliability-check
version: meta-v1.0.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/rsionnach/nthlayer** to version **meta-v1.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nthlayer-reliability-check) to find the latest changes.

## Action Summary

NthLayer is an open-source reliability platform designed for Site Reliability Engineers (SREs) to automate and manage service reliability through tasks like defining SLOs, configuring alerts, generating dashboards, and coordinating incident responses. It compiles reliability requirements into observable infrastructure and operates an autonomous runtime for monitoring, incident correlation, response, and learning. The platform streamlines reliability processes across a three-tier architecture, enabling integration into CI/CD pipelines and other operational workflows.

## What's Changed

First stable release of the **`nthlayer`** meta-package on PyPI.

```
pip install nthlayer==1.0.0
```

This is a dependency-only meta-package — it pins all four sub-packages at `==1.0.0` and installs them together:

- [`nthlayer-core==1.0.0`](https://github.com/rsionnach/nthlayer-core/releases/tag/v1.0.0) — Tier 1 HTTP API server (verdict store, case management, manifests)
- [`nthlayer-workers==1.0.0`](https://github.com/rsionnach/nthlayer-workers/releases/tag/v1.0.0) — Tier 2 worker modules (observe, measure, correlate, respond, learn)
- [`nthlayer-bench==1.0.0`](https://github.com/rsionnach/nthlayer-bench/releases/tag/v1.0.0) — Tier 3 operator interface (Textual TUI)
- [`nthlayer-generate==1.0.0`](https://github.com/rsionnach/nthlayer-generate/releases/tag/v1.0.0) — Manifest compiler and CI/CD generator

## When to install this vs. specific tiers

For **evaluators, demos, and local development** — install the meta-package and you have everything.

For **production deployments** — install only the tier(s) you actually run. Most installations need only a subset.

```
pip install nthlayer-core      # Tier 1 only
pip install nthlayer-workers   # Tier 2 only
pip install nthlayer-bench     # Tier 3 only
pip install nthlayer-generate  # Compiler only
```

## Tag namespace

This release uses the `meta-v*` tag namespace on the front-door repo. The historical `v0.1.0a1` – `v0.1.0a20` tags on this repo refer to the legacy generator releases (now superseded by [`nthlayer-generate@v1.0.0`](https://github.com/rsionnach/nthlayer-generate/releases/tag/v1.0.0)). Existing consumers using `uses: rsionnach/nthlayer@v0.1.0a20` continue to resolve to the historical commit.

## Source

The meta-package source lives in [`meta-package/`](https://github.com/rsionnach/nthlayer/tree/main/meta-package) of the front-door repo.
