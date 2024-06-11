---
title: The SILE Typesetter
date: 2024-06-11 00:49:42 +00:00
tags:
  - sile-typesetter
  - GitHub Actions
draft: false
repo: sile-typesetter/sile
marketplace: https://github.com/marketplace/actions/the-sile-typesetter
version: v0.15.3
dependentsNumber: "0"
---


Version updated for **sile-typesetter/sile** to version **v0.15.3**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/the-sile-typesetter) to find the latest changes.

## Release notes

### Summary of Improvements

This release fixes a regression in [v0.15.0][] involving 3rd party modules. We were not referencing the `LUA_PATH` (and `LUA_CPATH`) environment variables at run time, only at build time. This made it unreasonably difficult to install and use 3rd party modules to a user's `$HOME` directory and use them in SILE. We were finding modules installed at the system level or locally to a project, but other trees were not being seen.

With this fix, installing modules via `luarocks --local install` should be a viable workflow again. Before running SILE, make it aware of these modules with `eval $(luarocks --local path)`. The same goes for any arbitrary `luarocks --tree` locations.

### Bug Fixes

* **core:** Allow LUA_PATH env var to take effect at runtime ([e573c2d](https://github.com/sile-typesetter/sile/commit/e573c2d2026f5d194bfb0f0ea67f21d3728fafcb))

  [v0.15.0]: https://github.com/sile-typesetter/sile/releases/tag/v0.15.0
