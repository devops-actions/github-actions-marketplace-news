---
title: Setup APM
date: 2026-03-11 05:54:20 +00:00
tags:
  - microsoft
  - GitHub Actions
draft: false
repo: https://github.com/microsoft/apm-action
marketplace: https://github.com/marketplace/actions/setup-apm
version: v1.2.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/microsoft/apm-action** to version **v1.2.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-apm) to find the latest changes.

## Action Summary

The APM Action is a GitHub Action that automates the installation of the APM (Agent Package Manager) CLI and the deployment of agent-related resources (e.g., instructions, prompts, skills, agents) into CI workflows. It simplifies managing and sharing agent primitives by supporting tasks such as installing dependencies, generating documentation, packaging resources into self-contained bundles, and restoring them across jobs without requiring repeated installations. This action streamlines workflows by enabling efficient configuration, packaging, and reuse of agent dependencies in distributed CI/CD pipelines.

## Release notes

## What's Changed

### Bug Fixes
- **Fix `clearPrimitives` path boundary** — Anchor traversal guard to `working-directory` instead of `GITHUB_WORKSPACE`, unblocking tools like gh-aw that use isolated workspaces outside the runner checkout (#8)
- **Fix ncc static-analysis mangling** — Replace `path.resolve()` with `path.join()` for subpath construction to prevent `@vercel/ncc` from rewriting paths into garbage concatenations (#8)
- Use `@v1` in README examples (#7)

### Improvements  
- **Robust traversal guard** — Use `path.relative()` instead of `startsWith()` prefix check, handling edge cases like root directories (#9)
- **Test hygiene** — Wrap env var mutations in `try/finally` for guaranteed cleanup (#9)
- Add `copilot` as primary target name in docs and action.yml (#7)

**Full Changelog**: https://github.com/microsoft/apm-action/compare/v1.1.0...v1.2.0

## What's Changed
* docs: add 'copilot' as primary target name in docs and action.yml by @danielmeppiel in https://github.com/microsoft/apm-action/pull/7
* fix: anchor clearPrimitives boundary to working-directory, not GITHUB_WORKSPACE by @danielmeppiel in https://github.com/microsoft/apm-action/pull/8
* refactor: use path.relative for traversal guard, wrap env mutation in try/finally by @danielmeppiel in https://github.com/microsoft/apm-action/pull/9


**Full Changelog**: https://github.com/microsoft/apm-action/compare/v1.1.0...v1.2.0
