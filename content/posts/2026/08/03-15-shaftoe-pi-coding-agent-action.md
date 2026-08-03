---
title: pi GitHub Action
date: 2026-08-03 15:06:04 +00:00
tags:
  - shaftoe
  - GitHub Actions
draft: false
repo: https://github.com/shaftoe/pi-coding-agent-action
marketplace: https://github.com/marketplace/actions/pi-github-action
version: v2.27.0
dependentsNumber: "11"
actionType: Node
nodeVersion: 24
actionSummary: |
  The action integrates the Pi coding agent with GitHub workflows, allowing developers to automate tasks such as issue assistance, PR review, and recurring tasks using Git hosting platforms like GitHub, Codeberg, or self-hosted Forgejo. It provides a familiar CLI interface for running Pi within CI/CD pipelines, offering features like session sharing, auto replies, and integration with GitHub APIs.
---


Version updated for **https://github.com/shaftoe/pi-coding-agent-action** to version **v2.27.0**.

- This action is used across all versions by **11** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pi-github-action) to find the latest changes.

## Action Summary

The action integrates the Pi coding agent with GitHub workflows, allowing developers to automate tasks such as issue assistance, PR review, and recurring tasks using Git hosting platforms like GitHub, Codeberg, or self-hosted Forgejo. It provides a familiar CLI interface for running Pi within CI/CD pipelines, offering features like session sharing, auto replies, and integration with GitHub APIs.

## What's Changed

## [2.27.0] - 2026-08-03

### Added

- dispose Pi sessions after orchestration (#394)
- migrate from Bun to Node + Vitest + pnpm (#392)
- opt tools into strict sampling, bump Pi to v0.82.1 (#393)

### Changed

- **deps-ci**: bump actions/setup-node from 6 to 7 (#389)
- **deps-ci**: bump github/codeql-action from 4 to 4.37.3 (#395)
- **deps**: update dependencies, Pi to v0.80.10 (#388)
- **deps**: update dependencies, Pi to v0.81.1 (#390)

### Fixed

- **release**: resolve tsx not found in semantic-release prepareCmd (#397)

[2.27.0]: https://github.com/shaftoe/pi-coding-agent-action/compare/v2.26.0...v2.27.0

