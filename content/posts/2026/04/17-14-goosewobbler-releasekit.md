---
title: ReleaseKit – Automated Versioning & Release
date: 2026-04-17 14:12:13 +00:00
tags:
  - goosewobbler
  - GitHub Actions
draft: false
repo: https://github.com/goosewobbler/releasekit
marketplace: https://github.com/marketplace/actions/releasekit-automated-versioning-release
version: v0.15.3
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/goosewobbler/releasekit** to version **v0.15.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/releasekit-automated-versioning-release) to find the latest changes.

## Action Summary

ReleaseKit is a lightweight and modular release automation tool for JavaScript and Rust projects, designed to streamline versioning, changelog generation, and package publishing in CI/CD pipelines. Leveraging conventional commits, it automates semantic versioning, changelog creation (optionally enhanced by AI), and publishing to platforms like npm and crates.io, with monorepo support and flexible configuration. Its composable tools and GitHub Action integration provide developers with a seamless and customizable release workflow.

## What's Changed

## What's Changed
* fix(version): create per-package tags in multi-package sync mode by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/90
* fix: correct changelog data and tag matching for per-package sync releases by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/91
* fix: version default regression by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/92
* fix(notes): populate releaseNotes output and simplify GitHub release body fallback by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/93
* fix(version): count commits from repo root in sync mode by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/94
* fix(notes): suppress heading and add compare URL in per-package release notes by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/95
* feat(release): add preview command to dispatcher by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/96
* feat: introduce Github Action with release and preview modes by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/97
* fix: update action-release workflow to use new tag format and improve version extraction logic by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/99
* chore(deps-dev): bump the development-dependencies group across 1 directory with 5 updates by @dependabot[bot] in https://github.com/goosewobbler/releasekit/pull/38
* chore(deps): bump the production-dependencies group across 1 directory with 7 updates by @dependabot[bot] in https://github.com/goosewobbler/releasekit/pull/79
* refactor: move command factories to new modules with no isMain guard by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/100
* chore: change default mode to preview in action.yml and update command order in CLI and dispatcher by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/101
* feat: add support for scope labels by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/102
* feat(release): improve label handling by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/103
* test(release): standardise test descriptions for clarity by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/104
* refactor: update label handling from 'release' to 'bump' for consistency by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/105
* feat: enhance label extraction to support 'bump' labels by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/106
* fix(version): hook up package filtering with wildcard support by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/107
* refactor(ci): enhance label handling for bump and release scenarios by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/108
* fix(release): implement effective target handling for scope labels by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/109
* fix(release): implement effective target handling for scope labels by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/110
* fix: refine prerelease handling in version calculation by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/113
* refactor: improve modularity by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/114
* chore(deps-dev): bump the development-dependencies group with 2 updates by @dependabot[bot] in https://github.com/goosewobbler/releasekit/pull/112
* feat: workflow boilerplate reduction by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/117
* refactor(action): migrate SSH key input to secrets in action.yml  by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/119
* chore(deps): bump liquidjs from 10.25.2 to 10.25.5 by @dependabot[bot] in https://github.com/goosewobbler/releasekit/pull/118
* chore(deps): bump the production-dependencies group across 1 directory with 5 updates by @dependabot[bot] in https://github.com/goosewobbler/releasekit/pull/120
* feat: resolve packages in gate by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/121
* feat: add stable option to release & version commands for prerelease graduation by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/125
* feat(action): add stable input option for prerelease graduation by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/126
* feat(ci): add lockfile validation step to CI workflow by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/127
* fix: apply bump for first release when no previous tag exists by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/128
* fix: enhance first release handling in version calculation by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/130
* fix(version): refine first release condition to respect stableOnly flag  by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/131
* fix(version): improve first release handling to ensure correct version bumping by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/132
* fix(version): simplify first release handling to return current version directly by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/133
* refactor: remove defaultScope handling and enforce target specification by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/134
* fix(version): implement dynamic tag stripping based on template configuration by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/135
* fix(publish): ensure reliable publishing from package directory by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/136
* chore: add publish debug by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/137
* fix(core): add conditional debug logging based on DEBUG environment var by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/138
* feat: add skip-checkout option to ReleaseKit action by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/139
* fix(release): allow manual release without target when no PRs are found by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/140
* feat: enhance error handling and verbose output in action script  by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/141
* fix(action): exclude userPnpmStore from NODE_PATH to prevent E2BIG errors  by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/142
* feat(action): add support for fetching and syncing remote changes with optional skip-checkout by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/143
* fix(action): disable Git hooks during sync process  by @goosewobbler in https://github.com/goosewobbler/releasekit/pull/144


**Full Changelog**: https://github.com/goosewobbler/releasekit/compare/v0.4.0...v0.15.3
