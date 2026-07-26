---
title: Set up Rocq
date: 2026-07-26 22:26:56 +00:00
tags:
  - tchajed
  - GitHub Actions
draft: false
repo: https://github.com/tchajed/setup-rocq
marketplace: https://github.com/marketplace/actions/set-up-rocq
version: v1.12.0
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the installation of Rocq with opam, supporting caching of opam dependencies. It allows users to specify a version of Rocq to install, additional opam repositories, and various configurations such as saving caches, stripping binary annotations, and handling special strings like "latest" and "dev".
---


Version updated for **https://github.com/tchajed/setup-rocq** to version **v1.12.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/set-up-rocq) to find the latest changes.

## Action Summary

This GitHub Action automates the installation of Rocq with opam, supporting caching of opam dependencies. It allows users to specify a version of Rocq to install, additional opam repositories, and various configurations such as saving caches, stripping binary annotations, and handling special strings like "latest" and "dev".

## What's Changed

## Fixes

**The OCaml and opam versions are now part of the cache key.**

`CACHE_PLATFORM_PREFIX` was only platform and architecture, but the action creates a switch *only on a cache miss*. A cache was therefore allowed to match across compilers, which pinned the switch to whatever OCaml it was first built with — bumping the OCaml version had no effect at all. Both are now in the primary key and in every fallback prefix.

This invalidates existing caches once (`v3` → `v4`); the next run on each key rebuilds and re-saves.

**Other fixes**

- `ensureSwitch()` verifies a restored switch exists and has the requested compiler, rather than letting a partial or stale archive fail later with an error that does not explain itself.
- `post-if: always()`, so a job whose build fails after a successful Rocq install still saves the cache. `saveCache()` refuses to run unless setup completed, so a half-built switch is never saved.
- `opam env` values containing an escaped single quote are no longer truncated, and `PATH` entries are compared whole rather than by substring.
- `pin-depends` now recognizes `coq-core`, `coq-stdlib`, `coqide-server` and the `rocq-prover` metapackage, which name a Rocq release but were silently dropped.
- The dune config is written before anything is built, so the Rocq build itself populates the dune cache the post step saves.

## New

**`ocaml-version` input.** The compiler was hardcoded to 5.4.0. There is a dedicated Rocq 8.x install path that could not actually be used, because Coq 8.x cannot build against OCaml 5.

```yaml
- uses: tchajed/setup-rocq@v1
  with:
    rocq-version: '9.2.0'
    ocaml-version: '5.3.0'
```

**Outputs.** For `latest`, `dev` and `weekly` the version is the solver's choice, and callers had no way to learn what they got.

| Output | Description |
| --- | --- |
| `cache-hit` | Whether an opam cache was restored |
| `cache-primary-key` | The key this run computed and would save under |
| `cache-matched-key` | The key actually restored; empty on a miss |
| `rocq-version` | The Rocq version installed, as reported by opam |
| `ocaml-version` | The OCaml version in the switch |
| `opam-switch-prefix` | The switch prefix Rocq was installed into |

A restore also tries two shorter prefixes, so `cache-hit` alone does not identify *which* archive was restored — compare `cache-matched-key` against `cache-primary-key` when that distinction matters.

## Testing

Unit tests 28 → 110, coverage 51% → 78%; `unix.ts` and `post.ts` previously had none. CI gains a macOS job.

New end-to-end suite in [setup-rocq-test](https://github.com/tchajed/setup-rocq-test), covering the cache round trip, `post-if: always()`, `pin-depends`, and every `rocq-version` across Linux and macOS against four sample Rocq projects. It found two bugs in this release that the unit tests could not, including one where `core.getState()` cannot observe state saved in the same step.

**Full Changelog**: https://github.com/tchajed/setup-rocq/compare/v1.11.0...v1.12.0
