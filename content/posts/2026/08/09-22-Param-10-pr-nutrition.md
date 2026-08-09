---
title: PR Nutrition
date: 2026-08-09 22:02:02 +00:00
tags:
  - Param-10
  - GitHub Actions
draft: false
repo: https://github.com/Param-10/pr-nutrition
marketplace: https://github.com/marketplace/actions/pr-nutrition
version: v0.3.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  PR Nutrition is a local-first PR triage CLI that provides a simple review-readiness label based on Git metadata and file paths. It helps reviewers quickly identify the most important files to focus on, reducing the time spent reading through large or complex PRs. The tool uses a risk score to determine which changes are low-risk, medium-risk, or high-risk, making it easier for developers to prioritize their work.
---


Version updated for **https://github.com/Param-10/pr-nutrition** to version **v0.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-nutrition) to find the latest changes.

## Action Summary

PR Nutrition is a local-first PR triage CLI that provides a simple review-readiness label based on Git metadata and file paths. It helps reviewers quickly identify the most important files to focus on, reducing the time spent reading through large or complex PRs. The tool uses a risk score to determine which changes are low-risk, medium-risk, or high-risk, making it easier for developers to prioritize their work.

## What's Changed

## 0.3.0 - 2026-08-09

### Added

- Markdown focus-file groups are capped at 10 entries per group with an `...and N more` line; JSON still returns the full lists.
- Eval precision reporting: every case has an `intent`, and `pnpm eval` prints false-positive avoidance and true-positive pass rates.
- Broader dependency manifests for Python, Ruby, Java/Gradle, and PHP (`requirements.txt`, `Gemfile`, `pom.xml`, `build.gradle`, `composer.json`, and related lockfiles).
- Shallow monorepo evidence discovery under `packages/*`, `apps/*`, `libs/*`, and `services/*`.
- Always-on Coverage section in Markdown and JSON describing what was checked and what was not.
- `pr-nutrition check` for pre-PR local analysis with focus-file groups enabled by default.
- Opt-in `--fail-on <low|medium|high>` on the main command and `check` (exit code `3` when the threshold is met).

### Changed

- CI risk is presence-based at full points (20), matching migrations and authentication.
- CLI `--version` reads the published package version from `package.json` instead of a hardcoded string.
- Focus-file sorting precomputes reviewable line counts instead of scanning the file list on every comparison.
