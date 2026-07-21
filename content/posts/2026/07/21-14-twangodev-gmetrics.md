---
title: gmetrics-action
date: 2026-07-21 14:53:03 +00:00
tags:
  - twangodev
  - GitHub Actions
draft: false
repo: https://github.com/twangodev/gmetrics
marketplace: https://github.com/marketplace/actions/gmetrics-action
version: v1.7.1
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The GitHub Action gmetrics is a Go port of lowlighter/metrics, designed for generating SVG output paths using the metrics tool. It automates tasks related to performance monitoring and analysis by providing an alternative to the original metrics package. The action supports caching per-repo language stats across runs, optimizing processing for new commits.
---


Version updated for **https://github.com/twangodev/gmetrics** to version **v1.7.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gmetrics-action) to find the latest changes.

## Action Summary

The GitHub Action gmetrics is a Go port of lowlighter/metrics, designed for generating SVG output paths using the metrics tool. It automates tasks related to performance monitoring and analysis by providing an alternative to the original metrics package. The action supports caching per-repo language stats across runs, optimizing processing for new commits.

## What's Changed

## [1.7.1](https://github.com/twangodev/gmetrics/compare/v1.7.0...v1.7.1) (2026-07-21)


### Bug Fixes

* **base:** split GraphQL query to avoid resource limits ([#24](https://github.com/twangodev/gmetrics/issues/24)) ([b0256b0](https://github.com/twangodev/gmetrics/commit/b0256b03a0649de0a6c7dc672de57b494ec3ec7c))
* **http:** rate-limit retry attempts ([a5dedaf](https://github.com/twangodev/gmetrics/commit/a5dedafe60d23188e96dae646213fb2859d2b0aa))


### Performance Improvements

* **languages:** optimize incremental history scanning ([7dba359](https://github.com/twangodev/gmetrics/commit/7dba359e16744fd9e4924798b95719b0028d69bf))
