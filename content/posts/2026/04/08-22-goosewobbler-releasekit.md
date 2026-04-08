---
title: ReleaseKit – Automated Versioning & Release
date: 2026-04-08 22:09:31 +00:00
tags:
  - goosewobbler
  - GitHub Actions
draft: false
repo: https://github.com/goosewobbler/releasekit
marketplace: https://github.com/marketplace/actions/releasekit-automated-versioning-release
version: v0.11.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/goosewobbler/releasekit** to version **v0.11.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/releasekit-automated-versioning-release) to find the latest changes.

## Action Summary

ReleaseKit is a lightweight, composable release automation tool for JavaScript and Rust projects, designed specifically for CI/CD pipelines. It automates semantic versioning, changelog generation, and package publishing by leveraging Git history and conventional commits, with support for monorepos and PR release previews. Key capabilities include AI-enhanced release notes, flexible templating, and modular tools that can be used independently or as part of an integrated release workflow.

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


**Full Changelog**: https://github.com/goosewobbler/releasekit/compare/v0.4.0...v0.11.1
