---
title: Setup GMAT
date: 2026-05-01 06:17:26 +00:00
tags:
  - astro-tools
  - GitHub Actions
draft: false
repo: https://github.com/astro-tools/setup-gmat
marketplace: https://github.com/marketplace/actions/setup-gmat
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/astro-tools/setup-gmat** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-gmat) to find the latest changes.

## Action Summary

The `setup-gmat` GitHub Action automates the installation and configuration of NASA's General Mission Analysis Tool (GMAT) in continuous integration (CI) environments on Linux, Windows, and macOS. It handles downloading, caching, environment setup, and a basic functionality check of GMAT, as well as bootstrapping the `gmatpy` Python API. This action simplifies the process of integrating GMAT into CI workflows, ensuring compatibility with specific Python versions and GMAT versions.

## What's Changed

First usable release. Installs GMAT R2026a on Ubuntu runners and bootstraps gmatpy for use in CI.

### Added

- GitHub Action that installs GMAT for the requested version on the requested runner OS, runs `BuildApiStartupFile.py`, and smoke-checks the install with a one-line gmatpy propagation against a stock sample (#19, #20, #21, #22, #23, #25).
- Inputs: `version` (default `R2026a`), `cache` (default `true`), `python-version` (optional override) (#19).
- Outputs: `gmat-root`, `gmat-version`, `cache-hit`. `GMAT_ROOT` is also exported to the workflow environment so subsequent steps see it without reading outputs (#25).
- Install caching via `@actions/cache`, keyed on action major version, GMAT version, runner OS, and runner architecture (#24).
- Self-CI on `ubuntu-latest` × `R2026a` running two consecutive jobs (cache miss, then cache hit) and asserting the resolved root is byte-identical between runs (#26).
- Node 24 runtime, single-file `dist/index.js` bundle via `@vercel/ncc`, and a CI gate that fails the build if `dist/` drifts from `src/` (#1, #18).
- MkDocs Material documentation site at <https://astro-tools.github.io/setup-gmat/>: getting started, inputs/outputs reference, FAQ, troubleshooting, and recipes (pytest, mission script, skip-on-docs) (#13, #14, #30, #31, #32).
- README rewritten around real v0.1 usage with a supported-versions table, Python prerequisite, and a matrix-CI quick-start (#12, #29, #34).

### Fixed

- Resolve `GMAT_ROOT` by walking installer wrapper directories instead of guessing a fixed depth, so installs whose archive layout adds an extra wrapper level still resolve correctly (#28).

---

**Quick start**

```yaml
- uses: actions/setup-python@v5
  with:
    python-version: '3.12'
- uses: astro-tools/setup-gmat@v0
  with:
    version: R2026a
    cache: true
```

Documentation: <https://astro-tools.github.io/setup-gmat/>
Full changelog: <https://github.com/astro-tools/setup-gmat/blob/v0.1.0/CHANGELOG.md>

