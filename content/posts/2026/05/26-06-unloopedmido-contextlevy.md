---
title: ContextLevy
date: 2026-05-26 06:25:15 +00:00
tags:
  - unloopedmido
  - GitHub Actions
draft: false
repo: https://github.com/unloopedmido/contextlevy
marketplace: https://github.com/marketplace/actions/contextlevy
version: v2.4.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/unloopedmido/contextlevy** to version **v2.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/contextlevy) to find the latest changes.

## Action Summary

ContextLevy is a GitHub Action designed to enhance repository hygiene by identifying and flagging problematic pull request changes that could introduce noise or bloat, such as generated code, build artifacts, lockfile churn, and agent instruction modifications. It automates the process of scanning diffs, estimating the context weight of files, and providing targeted comments to help teams using AI coding agents maintain clean, efficient repositories. This action is particularly valuable for teams leveraging AI-assisted development by preventing unnecessary context debt and streamlining code reviews.

## What's Changed

## ContextLevy v2.4.0

### Added
- Fallow dead-code analysis (`npm run check:fallow`) with project-specific configuration and CI coverage.
- Mode presets: `advisory` (default), `strict`, `minimal`, and `legacy` for v2.3 behavior.
- `contextlevy init` to scaffold `contextlevy.config.yml` and an optional GitHub workflow.
- `contextlevy check` as the primary CLI command, with `diff` retained as an alias.
- Category-aware gates with `fail-on-categories`, `warn-only-categories`, and `comment-on-hygiene`.
- Review summary headlines, prioritized findings, and enriched CLI JSON metadata.
- `allowlist-paths` as an alias for `allow-paths`.
- Quick start documentation for local setup, modes, allowlists, and hooks.
### Changed
- Default behavior now uses advisory mode: compact comments, no cost table, hygiene-aware comment posting, and agent-config alerts.
- PR comments can post for hygiene categories or agent instruction changes below the token threshold.
- Severity and compact findings now reduce false alarms for lockfile-only and small agent-config changes.
- CI and `npm run check` now include Fallow alongside Biome, typecheck, and tests.
- Internal parser, git, token, and auth helpers no longer export unused implementation details.
- Cost table copy now frames estimates as illustrative rather than billing-grade.
### Notes for existing adopters
- Set `mode: legacy` in `contextlevy.config.yml` to restore v2.3 defaults.

Full changelog: https://github.com/unloopedmido/contextlevy/compare/v2.3.0...v2.4.0

