---
title: gmetrics-action
date: 2026-05-27 22:47:13 +00:00
tags:
  - twangodev
  - GitHub Actions
draft: false
repo: https://github.com/twangodev/gmetrics
marketplace: https://github.com/marketplace/actions/gmetrics-action
version: v1.2.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/twangodev/gmetrics** to version **v1.2.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gmetrics-action) to find the latest changes.

## Action Summary

The `gmetrics` GitHub Action is a Go-based tool for generating SVG metrics, inspired by `lowlighter/metrics`. It automates the collection and visualization of language statistics from repositories, with advanced caching to optimize processing by handling only new commits since the previous run. This action simplifies tracking and displaying repository activity with minimal configuration.

## What's Changed

## [1.2.0](https://github.com/twangodev/gmetrics/compare/v1.1.0...v1.2.0) (2026-05-27)


### Features

* **action:** cache indepth stats automatically via composite action ([364d45c](https://github.com/twangodev/gmetrics/commit/364d45cbee41128bdba9dbdb0cfa0b08b94bdbcb))
* **githubapi:** rate-limit middleware and Search throttle on transport ([ff96fc8](https://github.com/twangodev/gmetrics/commit/ff96fc87a452b47152a603fb9c815e8ad536643a))
* **languages:** authenticate indepth clones and emit categorized walk errors ([b714981](https://github.com/twangodev/gmetrics/commit/b71498125c9d9a01966dde0b4257e66851e99e8f))
* **languages:** auto-quiet indepth logs when CI=true ([fc575f6](https://github.com/twangodev/gmetrics/commit/fc575f68f36b6b42ea51d28a90569d1ed984d29b))
* **languages:** carry pushed_at and default branch on repo tasks ([5eb7caf](https://github.com/twangodev/gmetrics/commit/5eb7caf80f4a62a21f7e7906c8fbf2735852c348))
* **languages:** compare-API incremental fold for changed repos ([31e3770](https://github.com/twangodev/gmetrics/commit/31e37707454deb937f9068f8301bdfaa5c80bb74))
* **languages:** expose indepth cache path input and document actions/cache ([6de6602](https://github.com/twangodev/gmetrics/commit/6de66029535c7914e3feb2f76c126acfa67f6ef5))
* **languages:** incremental indepth cache with compare-fold gate ([d6e6ce5](https://github.com/twangodev/gmetrics/commit/d6e6ce543efdad77875fb24d794541fa06782036))
* **languages:** indepth result cache file (load/save/hash/prune) ([2256995](https://github.com/twangodev/gmetrics/commit/22569958e837c3649a7c9691f1844be09e57cc4c))
* **languages:** sanitize indepth error logs and skip inaccessible repos ([a1170d7](https://github.com/twangodev/gmetrics/commit/a1170d7b495a2eb1081be34dc7236997263424cf))


### Bug Fixes

* **languages:** capture clone tip SHA to prevent watermark drift ([759a531](https://github.com/twangodev/gmetrics/commit/759a5312398a3ab9f85467c8c7a7567b376fb2f8))
* **languages:** correct Search semantics and address PR review ([5b7e1a0](https://github.com/twangodev/gmetrics/commit/5b7e1a0b23ed18675048302ec115d901cd85127c))
* **languages:** enforce one per-repo budget across clone and API paths ([6888088](https://github.com/twangodev/gmetrics/commit/6888088fbb16e3b8e58d8d349b6b3396a9eb7f7c))
* **languages:** extend per-repo budget to fold and head-resolve paths ([72f2675](https://github.com/twangodev/gmetrics/commit/72f2675ebf69f90de6b11cf566b45440d0da92cc))
* **languages:** skip merge commits in compare-fold for recompute parity ([bb8cd4f](https://github.com/twangodev/gmetrics/commit/bb8cd4fa91033bceaea89976c5aac64dc3b5d4c0))


### Performance Improvements

* **languages:** collapse per-predicate Search into one query ([728ea85](https://github.com/twangodev/gmetrics/commit/728ea85fe4cd959b3688bde9c1c1f2bf86a84659))
