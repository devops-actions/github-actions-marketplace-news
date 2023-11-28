---
title: Cache Julia artifacts, packages and registry
date: 2023-11-28 11:13:15 +00:00
tags:
  - julia-actions
  - GitHub Actions
draft: false
repo: julia-actions/cache
marketplace: https://github.com/marketplace/actions/cache-julia-artifacts-packages-and-registry
version: v1.4.0
dependentsNumber: "4,863"
---


Version updated for **julia-actions/cache** to version **v1.4.0**.
- This action is used across all versions by **4,863** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cache-julia-artifacts-packages-and-registry) to find the latest changes.

## Release notes

Now includes `/compiled` and is set up better to handle caching across concurrency.

## What's changed
-  The depot directories`/logs` and `/compiled` are now included
- The cache key has changed to make the default setup more likely to be effective for concurrency:
  - The default `cache-name` now includes the workflow name and job name
  - Now always include the runner OS, to ensure that `/compiled` caches are stored separately for differing OSes
  - By default any `matrix` variables are unrolled into the cache key to help achieve one cache per concurrent runner.
- The cache is now always re-saved to make sure `_usage.toml` logs are kept up to date, and old caches deleted.
- `Pkg.gc()` is automatically called before re-save, to keep cache size down.

Note that the following is now likely required to enable old cache deletion:
```
permissions:
  actions: write
  contents: read
```

And note the new inputs: `include-matrix`, `cache-logs`, `delete-old-caches`, `token`

See the [readme](https://github.com/julia-actions/cache/tree/b4528cf39e36c6f9f812184bc3368ba551c3e910#readme) for more info.


## PRs
* Update cache every run. Add `/compiled` and `/logs`. Make key sensitive to matrix. by @IanButterworth in https://github.com/julia-actions/cache/pull/71
* Fixup #71 by @IanButterworth in https://github.com/julia-actions/cache/pull/75
* fix readme typo by @IanButterworth in https://github.com/julia-actions/cache/pull/76

### Dependency changes
* Bump actions/checkout from 4.1.0 to 4.1.1 by @dependabot in https://github.com/julia-actions/cache/pull/70


**Full Changelog**: https://github.com/julia-actions/cache/compare/v1.3.0...v1.4.0
