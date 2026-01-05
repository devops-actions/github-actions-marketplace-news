---
title: Intent Layer
date: 2026-01-05 05:50:35 +00:00
tags:
  - madisonbullard
  - GitHub Actions
draft: false
repo: https://github.com/madisonbullard/github-action-intent-layer
marketplace: https://github.com/marketplace/actions/intent-layer
version: v0.1.0-alpha.2
dependentsNumber: "?"
---


Version updated for **https://github.com/madisonbullard/github-action-intent-layer** to version **v0.1.0-alpha.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/intent-layer) to find the latest changes.

## Action Summary

The Intent Layer GitHub Action automates the maintenance of hierarchical context files (`AGENTS.md`, `CLAUDE.md`) within a codebase, ensuring they remain synchronized with changes made through pull requests. By analyzing PR changes, it helps AI agents better understand code structure, boundaries, and patterns, enabling informed decision-making. It provides capabilities for proposing, approving, and committing updates to these context files, streamlining collaboration and reducing manual effort in managing AI-ready documentation.

## Release notes

## Changes

- Implemented complete GitHub Action entry point (`index.ts`) with full orchestration
- Added analyze mode for PR change analysis and intent layer suggestions
- Added checkbox-handler mode for interactive approval/revert workflow
- Fixed all Biome linting issues (non-null assertions, unused imports, optional chaining)
- All 1236 tests passing

## Pre-release Notice

This is an alpha pre-release for testing purposes. The action is not yet ready for production use.
