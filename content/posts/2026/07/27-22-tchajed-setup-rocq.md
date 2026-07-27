---
title: Set up Rocq
date: 2026-07-27 22:58:01 +00:00
tags:
  - tchajed
  - GitHub Actions
draft: false
repo: https://github.com/tchajed/setup-rocq
marketplace: https://github.com/marketplace/actions/set-up-rocq
version: v1.13.0
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action installs Rocq with OPAM and provides caching of OPAM dependencies. It supports various configuration options such as specifying ROCQ version, OCaml compiler version, Dune version, additional opam repositories, cache key, save-if option, and strip binary annotations. The action helps in automating the installation process and managing dependencies efficiently.
---


Version updated for **https://github.com/tchajed/setup-rocq** to version **v1.13.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/set-up-rocq) to find the latest changes.

## Action Summary

This GitHub Action installs Rocq with OPAM and provides caching of OPAM dependencies. It supports various configuration options such as specifying ROCQ version, OCaml compiler version, Dune version, additional opam repositories, cache key, save-if option, and strip binary annotations. The action helps in automating the installation process and managing dependencies efficiently.

## What's Changed

## New

**`dune-version` input.** The dune installed into a fresh switch was a hardcoded `3.22.1` with no way to override it. A project whose own dependencies require a newer dune built Rocq **twice** on every cold run: setup-rocq installed `dune.3.22.1` and built `rocq-core` / `rocq-runtime` against it, then the project's `opam install --deps-only .` upgraded dune and opam recompiled every package that uses it — all of Rocq. Roughly ten minutes per job, on every cache miss.

Pass the dune the project actually needs and the switch is built against it the first time:

```yaml
- uses: tchajed/setup-rocq@v1
  with:
    rocq-version: '9.2.0'
    dune-version: '3.23.1'
```

The input sets a floor, not a pin, and defaults to `3.22.1`. As with `ocaml-version`, the requested floor is part of `CACHE_PLATFORM_PREFIX` and so appears in the fallback keys too — otherwise an old cache could pin dune to whatever version it was built with and raising `dune-version` would silently do nothing.

**Existing caches are preserved.** The default floor contributes no key segment at all, rather than `-dune-3.22.1`. Every cache in existence was written by a run at the default, so they all remain restorable.

**Full Changelog**: https://github.com/tchajed/setup-rocq/compare/v1.12.0...v1.13.0

