---
title: Setup runner cli
date: 2026-07-17 06:55:19 +00:00
tags:
  - kjanat
  - GitHub Actions
draft: false
repo: https://github.com/kjanat/runner
marketplace: https://github.com/marketplace/actions/setup-runner-cli
version: v0.20.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  **runner** is an action designed to help developers quickly identify and run commands across multiple task runners and package managers within their projects. It provides a tab completion feature that suggests available tasks and packages, reducing the need to remember specific command structures or configurations for different repositories. This tool enhances efficiency by automating the process of selecting the correct runner and command for executing tasks, making it easier to manage and run project-related commands without manual configuration.
---


Version updated for **https://github.com/kjanat/runner** to version **v0.20.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-runner-cli) to find the latest changes.

## Action Summary

**runner** is an action designed to help developers quickly identify and run commands across multiple task runners and package managers within their projects. It provides a tab completion feature that suggests available tasks and packages, reducing the need to remember specific command structures or configurations for different repositories. This tool enhances efficiency by automating the process of selecting the correct runner and command for executing tasks, making it easier to manage and run project-related commands without manual configuration.

## What's Changed

### Added

- `[install].on_collision` (`RUNNER_INSTALL_ON_COLLISION`) decides what
  `runner install` does when two detected package managers write the same
  directory. `"resolve"` (the default) installs with the PM already resolved
  for that ecosystem (lockfile, `packageManager`, `[pm].node`) and skips the
  other, printing which one it skipped; `"error"` refuses to pick and exits 2.
  Under `"resolve"`, naming both writers in `[install].pms` still runs both;
  `"error"` refuses the collision even when both writers are explicitly named.

### Changed

- Package managers that write the same install directory no longer install
  concurrently. `bun install` and `deno install` over one `node_modules/` now
  run one after another; managers with their own directories (cargo, uv, go)
  still overlap.
- The install-dir collision warning is confined to `runner install` and
  `doctor`, the surfaces that can act on it. It was reaching `run`, `list`,
  `info`, and every nested runner process, none of which install anything.
  `doctor` also reports the install plan (which PM installs a shared directory,
  and which is shadowed) as a `conflicts[]` entry alongside duplicate task
  names.
- Detection warnings are printed once per project, not once per runner process.
  A `package.json` script that calls `runner` again (`"fmt": "runner run
  lint:fix fmt:dprint"`) no longer repeats its parent's warnings.

### Fixed

- Deno counts as a `node_modules` writer in any project with a `package.json`,
  not only one that sets `nodeModulesDir` explicitly. Deno's documented default
  for a `package.json` project is the manual `node_modules` mode, so
  `deno install` was writing the same tree as bun/npm/pnpm/yarn while runner
  reported no collision at all.
- Two node lockfiles in one directory are settled by which one git tracks
  before falling back to the fixed `bun > pnpm > yarn > npm` preference. A
  project that commits `bun.lock` and gitignores `package-lock.json` is a bun
  project, whichever way the preference order happens to point. Committed
  status is the signal, not ignore status: a gitignored lockfile is ambiguous
  (it can mean "we never commit lockfiles", which is evidence the manager *is*
  used). One lockfile still answers by itself, and no git process is spawned
  unless a directory holds two or more.
- A prerelease package-manager build (`bun@1.3.0-canary`) satisfies a
  `devEngines` range like `>=1.2` instead of reporting a version mismatch.
  Semver excludes prereleases from ranges that don't name one, which is correct
  for a dependency solver and wrong for a "is the installed tool new enough"
  check.
- `runner install` no longer orphans a running package manager when waiting on
  another one fails.

## What's Changed
* feat(install): resolve install-dir collisions by @kjanat in https://github.com/kjanat/runner/pull/88


**Full Changelog**: https://github.com/kjanat/runner/compare/v0.19.1...v0.20.0

