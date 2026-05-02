---
title: Setup GMAT
date: 2026-05-02 06:01:43 +00:00
tags:
  - astro-tools
  - GitHub Actions
draft: false
repo: https://github.com/astro-tools/setup-gmat
marketplace: https://github.com/marketplace/actions/setup-gmat
version: v0.2.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/astro-tools/setup-gmat** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-gmat) to find the latest changes.

## Action Summary

The `setup-gmat` GitHub Action automates the installation and configuration of NASA's General Mission Analysis Tool (GMAT) on CI environments across Linux, Windows, and macOS. It handles downloading, caching, and setting up GMAT, bootstraps the `gmatpy` Python API, and performs a basic installation validation. By streamlining the setup process and managing dependencies, this action simplifies the integration of GMAT in automated workflows for mission analysis and simulation tasks.

## What's Changed

Cross-platform coverage and full version matrix. setup-gmat now installs GMAT on Linux, Windows, and macOS runners against R2022a, R2025a, or R2026a — every cell of that matrix exercised in self-CI on every PR and on a weekly cron.

### Added

- Windows installer support and an OS-dispatch refactor that lifts the v0.1 Linux-hardcoded install path into per-OS `download` / `extract` modules (#48).
- macOS DMG installer support: `hdiutil attach` (read-only, `-nobrowse`, mountpoint under `RUNNER_TEMP`), `cp -R` of the resolved root off the mount, `hdiutil detach` (#49).
- Supported `version` input expanded from R2026a-only to R2022a, R2025a, and R2026a. R2023a and R2024a were never released by NASA and are explicitly rejected with a pointer to the FAQ (#47).
- Installer SHA-256 (first 12 chars) folded into the cache key, so a re-uploaded installer at the same SourceForge URL invalidates cleanly without a version bump (#50).
- Cross-platform self-CI matrix exercising every supported `(runner, version)` pair on every PR — `{ubuntu-latest, windows-latest, macos-latest}` × `{R2022a, R2025a, R2026a}`, with `macos-latest × R2022a` excluded (R2022a's macOS DMG ships x86_64-only `gmatpy` bindings and Apple Silicon runners cannot dlopen it) (#51).
- Weekly self-CI cron on `main` (Mondays 06:00 UTC) — early-warning channel for SourceForge URL drift, mirror retirements, and installer-archive layout changes (#52).
- Mirror-drift `drift.yml` workflow: a daily HEAD-only liveness check across every supported `(version, OS)` triple that fails before a download attempt would (#53).
- `uv`-based Python 3.9 install for R2022a in the self-test matrix, since `actions/setup-python@v5` no longer ships 3.9 binaries on every runner (#55).
- Multi-version compatibility recipe documenting the full `{ubuntu, windows, macos} × {R2022a, R2025a, R2026a}` matrix with the `macos × R2022a` exclude and per-version Python pin (#56).
- Troubleshooting and FAQ updates covering Windows-specific failure modes, macOS DMG mount/architecture failures, and the R2023a / R2024a version gap (#57).
- README and docs landing surface refreshed for the v0.2 surface: 3-OS quick-start matrix, supported-versions table, Python ABI per GMAT release table, and `_(current)_` roadmap row updated (#58).

### Changed

- v0.1's R2026a-hardcoded assumptions removed: cache key, smoke check, and version-resolution logic are now driven by the validated `version` input rather than embedded R2026a constants (audit folded into #47).
- v0.1's Linux-hardcoded assumptions removed: `download` / `extract` / `GMAT_ROOT` resolution moved behind a per-OS dispatch instead of a single Linux tarball path (audit folded into #48).

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
Full changelog: <https://github.com/astro-tools/setup-gmat/blob/v0.2.0/CHANGELOG.md>

