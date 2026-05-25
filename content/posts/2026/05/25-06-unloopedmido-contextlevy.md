---
title: ContextLevy
date: 2026-05-25 06:29:45 +00:00
tags:
  - unloopedmido
  - GitHub Actions
draft: false
repo: https://github.com/unloopedmido/contextlevy
marketplace: https://github.com/marketplace/actions/contextlevy
version: v2.3.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/unloopedmido/contextlevy** to version **v2.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/contextlevy) to find the latest changes.

## Action Summary

ContextLevy is a GitHub Action designed to analyze pull request (PR) changes in repositories that rely on AI coding agents. Its main purpose is to identify changes that could increase context size, such as generated code, coverage artifacts, or lockfile churn, which may lead to slower, more costly, and less efficient AI agent operations. By providing focused PR comments, ContextLevy helps teams proactively manage context-related repository debt and optimize AI-assisted workflows.

## What's Changed

## ContextLevy v2.3.0

### Added
- Biome integration for linting and formatting (`npm run check`).
### Changed
- Recommended config filename is now `contextlevy.config.yml` (legacy `.contextlevy.yml` and related paths still supported).
- Documentation split into focused guides under `docs/` (CONFIG, ACTION, CLI, TROUBLESHOOTING, DEVELOPMENT, ARCHITECTURE); README trimmed to quick start and index.
- Source reorganized into `core/`, `config/`, `format/`, `github/`, `cli/`, and `git/` modules with explicit dependency boundaries.

Full changelog: https://github.com/unloopedmido/contextlevy/compare/v2.2.2...v2.3.0

