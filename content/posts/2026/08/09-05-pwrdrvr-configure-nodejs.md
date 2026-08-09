---
title: Configure Node.js
date: 2026-08-09 05:53:52 +00:00
tags:
  - pwrdrvr
  - GitHub Actions
draft: false
repo: https://github.com/pwrdrvr/configure-nodejs
marketplace: https://github.com/marketplace/actions/configure-node-js
version: v1.3.0
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  This GitHub Action automates the installation of Node.js, detects the package manager (npm, pnpm, or Yarn), enables Corepack when necessary, and restores the correct cache to optimize build times. It handles different cache scenarios efficiently by running cold installs only when absolutely necessary, reducing costs associated with cache misses during warm cache restoration.
---


Version updated for **https://github.com/pwrdrvr/configure-nodejs** to version **v1.3.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/configure-node-js) to find the latest changes.

## Action Summary

This GitHub Action automates the installation of Node.js, detects the package manager (npm, pnpm, or Yarn), enables Corepack when necessary, and restores the correct cache to optimize build times. It handles different cache scenarios efficiently by running cold installs only when absolutely necessary, reducing costs associated with cache misses during warm cache restoration.

## What's Changed

Fixes a dependency cache bug that could hand a job a `node_modules` built against a different Node.js ABI.

## The fix

The cache key interpolated the `node-version` input verbatim. For a spec that can cross a major release — `lts/*`, `latest`, `>=20` — that segment stayed constant while the runner image's Node.js moved from one major to the next. Because npm and Yarn skip installation entirely on a cache hit, the restored tree was used as-is, so any compiled native addon in it had been built against a different `NODE_MODULE_VERSION`:

```
Error: The module '.../binding.node' was compiled against a different Node.js version
```

The cache key is now built from the Node.js **major**, which is exactly the ABI boundary: `NODE_MODULE_VERSION` changes with each major and is stable within one.

**Affected:** npm and Yarn projects using a `node-version` that can cross a major. Specs pinned within one major (`24.x`, `24.14.1`, the `22.x` default) were never at risk. pnpm reinstalls on every run, so it was not exposed either.

## What you will notice

**Every project takes one cold cache miss on upgrade.** The key segment changes from the raw spec to the major, so existing entries no longer match. One rebuild, then back to normal.

**`lookup-only` gates on floating specs now install Node.js even on a cache hit.** A spec that can cross a major cannot be classified from its string, so `actions/setup-node` has to resolve it before the key exists. This costs those specs the restore-before-setup fast path — typically a second or two, since a floating spec resolves to a version already in the runner toolcache. Pinned specs, including the `22.x` default, keep the fast path untouched and still skip Node.js installation entirely on a hit.

**Gate and consumer keys now match on the major.** A gate on `24.x` and a consumer on `24.14.1` previously produced two different keys, so the gate warmed an entry nobody read. They now share one. A gate on `24.x` and a consumer on `22.x` still correctly do not.

## Added

- **`node-major` output** — the Node.js major the cache key was built from. Useful for asserting that a gate job and its consumers agree.

## Also in this release

- The README now explains the cache-priming gate job pattern the action is built around, including the fan-out and retry-trap failure modes it exists to prevent (#9).

**Full changelog:** https://github.com/pwrdrvr/configure-nodejs/compare/v1.2.0...v1.3.0

