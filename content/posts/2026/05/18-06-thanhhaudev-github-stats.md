---
title: GitHub README.md Metrics
date: 2026-05-18 06:33:36 +00:00
tags:
  - thanhhaudev
  - GitHub Actions
draft: false
repo: https://github.com/thanhhaudev/github-stats
marketplace: https://github.com/marketplace/actions/github-readme-md-metrics
version: v1.5.3
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/thanhhaudev/github-stats** to version **v1.5.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-readme-md-metrics) to find the latest changes.

## Action Summary

This GitHub Action automatically updates a user's profile README with coding activity and repository statistics, such as coding streaks, commit patterns, language usage, and WakaTime metrics. It solves the problem of manually updating profile stats by automating the process on a scheduled basis. Key capabilities include support for customizable metrics, integration with WakaTime for detailed coding data, and flexible configuration for various display options.

## What's Changed


### Added
- Automated release workflow: pushing a `vX.Y.Z` tag publishes a GitHub Release and updates the floating `v1` tag.
- `CHANGELOG.md` (this file).
- `docs/` split: `docs/metrics.md`, `docs/configuration.md`, `docs/caching.md`, `docs/scheduling.md`.

### Changed
- README rewritten in concise format (513 → ~85 lines); advanced topics moved to `docs/`.
- `pkg/container.metrics()` now references `config.Metric*` constants instead of bare string literals.
- README + docs reference `thanhhaudev/github-stats@v1` instead of `@master` so users pin a stable major.

### Fixed
- AI footprint row label: `Total Prompt Chars` (raw `ai_prompt_length`) replaces the misleading `Average Prompt` while WakaTime omits `ai_average_prompt_length` from `/stats`. Reverts to `Average Prompt` automatically once the field appears.

[Unreleased]: https://github.com/thanhhaudev/github-stats/compare/v1.5.3...HEAD
[1.5.3]: https://github.com/thanhhaudev/github-stats/releases/tag/v1.5.3

