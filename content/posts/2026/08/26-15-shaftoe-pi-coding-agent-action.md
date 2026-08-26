---
title: pi GitHub Action
date: 2026-08-26 15:02:20 +00:00
tags:
  - shaftoe
  - GitHub Actions
draft: false
repo: https://github.com/shaftoe/pi-coding-agent-action
marketplace: https://github.com/marketplace/actions/pi-github-action
version: v2.27.1
dependentsNumber: "14"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action integrates the [Pi coding agent](https://pi.dev) with Git hosting platform workflows, supporting multiple platforms that provide GitHub-compatible APIs and CI/CD environment variables. It provides a familiar workflow for running Pi as CLI, offers minimal batteries included UX, supports chaining sessions and composing workflows, integrates with GitHub workflows natively, and replicates interactive session sharing capabilities. The action is useful for issue assistance, PR assistance, automated code reviews, recurring tasks, and can be integrated into custom pipelines to generate prompts from upstream actions/workflows.
---


Version updated for **https://github.com/shaftoe/pi-coding-agent-action** to version **v2.27.1**.

- This action is used across all versions by **14** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pi-github-action) to find the latest changes.

## Action Summary

This GitHub Action integrates the [Pi coding agent](https://pi.dev) with Git hosting platform workflows, supporting multiple platforms that provide GitHub-compatible APIs and CI/CD environment variables. It provides a familiar workflow for running Pi as CLI, offers minimal batteries included UX, supports chaining sessions and composing workflows, integrates with GitHub workflows natively, and replicates interactive session sharing capabilities. The action is useful for issue assistance, PR assistance, automated code reviews, recurring tasks, and can be integrated into custom pipelines to generate prompts from upstream actions/workflows.

## What's Changed

## [2.27.1] - 2026-08-26

### Changed

- **deps-ci**: bump github/codeql-action from 4.37.3 to 4.37.6 (#402)
- **deps-ci**: bump github/codeql-action from 4.37.6 to 4.37.7 (#406)

### Fixed

- bump Pi SDK to v0.84.3
- **deps**: bump Pi to v0.84.0 (#400)
- **pi-action**: bundle AWS Bedrock provider into dist to fix missing module error (#398) (#399)
- load npm extensions from bundled Pi runtime (#405)
- **github**: recover missing PR context from event payload (#401)

[2.27.1]: https://github.com/shaftoe/pi-coding-agent-action/compare/v2.27.0...v2.27.1

