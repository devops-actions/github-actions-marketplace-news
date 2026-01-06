---
title: End-of-life (EOL) GitHub Action
date: 2026-01-06 13:16:58 +00:00
tags:
  - broadsage
  - GitHub Actions
draft: false
repo: https://github.com/broadsage/endoflife-action
marketplace: https://github.com/marketplace/actions/end-of-life-eol-github-action
version: v4.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/broadsage/endoflife-action** to version **v4.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/end-of-life-eol-github-action) to find the latest changes.

## Action Summary

The EOL GitHub Action automates the tracking of software lifecycle and end-of-life (EOL) dates for over 380 software products, ensuring dependencies remain secure and up to date. It provides features such as multi-channel notifications (e.g., Slack, Discord, Teams), automated issue creation, CI/CD test matrix generation, and intelligent filtering to manage and mitigate risks associated with outdated or unsupported software. This action is designed to streamline dependency management and enhance project reliability through seamless integration into CI/CD workflows.

## Release notes

## [4.1.0](https://github.com/broadsage/endoflife-action/compare/v4.0.0...v4.1.0) (2026-01-06)


### Features

* add parallel API request processing for 80% performance improvement (Phase 5) ([9cda352](https://github.com/broadsage/endoflife-action/commit/9cda352620f39a971faa822d1f9f32d4c55e2332))
* add product filtering by category and tag ([26e6816](https://github.com/broadsage/endoflife-action/commit/26e6816f8740ea390864358c77be231173d724f7))
* add SBOM integration and enhanced webhook security (Phase 4) ([d691eaa](https://github.com/broadsage/endoflife-action/commit/d691eaac35587c002d6f028e4f4a10a85fb2bddb))
* complete API v1 coverage and eliminate code duplication ([cf484b5](https://github.com/broadsage/endoflife-action/commit/cf484b5ecec3b4f61e8b4ded0524b2c0a1e63c7a))
* implement SBOM integration, concurrency control, and enhanced reporting ([a7262e4](https://github.com/broadsage/endoflife-action/commit/a7262e469231d6822d5c5e6b238256d12412f38f))


### Bug Fixes

* resolve API v1 compatibility and clean up GitHub Action annotations ([6e6a50e](https://github.com/broadsage/endoflife-action/commit/6e6a50eefd561059f8b99820e2b348d5dd24ed15))


### Code Refactoring

* align inputs/outputs, enhance security, and update docs for v4 ([c27e133](https://github.com/broadsage/endoflife-action/commit/c27e133e1612b3c227bac79c6012e26478d82878))
* align with EndOfLife.date API v1 terminology (release vs cycle) ([24caf07](https://github.com/broadsage/endoflife-action/commit/24caf07bc274c804d88ad413c5050ddebb9844d1))


### Miscellaneous

* **deps:** Pin dependencies ([#17](https://github.com/broadsage/endoflife-action/issues/17)) ([996c704](https://github.com/broadsage/endoflife-action/commit/996c704b222fabc268e8a07b8fb404a2674d0125))
* **deps:** update ESLint ([#19](https://github.com/broadsage/endoflife-action/issues/19)) ([38dfa29](https://github.com/broadsage/endoflife-action/commit/38dfa29067c73c0cc064b785f102484424cca53c))
* **deps:** update GitHub Actions SDK ([#20](https://github.com/broadsage/endoflife-action/issues/20)) ([5decc56](https://github.com/broadsage/endoflife-action/commit/5decc56a528e265676d0706086d108c42ac5ba79))


### Tests

* improve branch coverage and fix ESM compatibility issues ([59dc579](https://github.com/broadsage/endoflife-action/commit/59dc57912caa39d1e44a012a231a86ad8bc383cc))
