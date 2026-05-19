---
title: GitHub README.md Metrics
date: 2026-05-19 07:20:41 +00:00
tags:
  - thanhhaudev
  - GitHub Actions
draft: false
repo: https://github.com/thanhhaudev/github-stats
marketplace: https://github.com/marketplace/actions/github-readme-md-metrics
version: v1.5.5
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/thanhhaudev/github-stats** to version **v1.5.5**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-readme-md-metrics) to find the latest changes.

## Action Summary

This GitHub Action automates the generation and updating of coding activity and GitHub profile statistics directly into a user's profile README. It solves the problem of manually tracking and displaying metrics like coding streaks, commit patterns, and WakaTime-based coding time. Key capabilities include customizable metrics for coding activity, language usage, and commit insights, with support for integration with external services like WakaTime for enhanced tracking.

## What's Changed


### Added
- Root `Makefile` targets for local development, including GitHub CLI-backed runs that avoid storing `GITHUB_TOKEN` in `cmd/.env`.
- Focused regression coverage for commit fetching, WakaTime cache fallback, README marker replacement, pagination, and config metadata parity.

### Changed
- Upgrade the Go module, Docker builder image, and CI setup to Go 1.26.3.
- Make `pkg/container` receive its clock dependency explicitly instead of requiring a context value.
- Make commit fetching return deterministic repository-level results while branch fetches run concurrently.

### Fixed
- Redact sensitive runtime logs.
- Compact AI footprint line counts.
- Preserve valid UTF-8 when truncating Unicode stats labels.
- Return branch fetch failures with repo and branch context instead of sharing a top-level error channel across repo and branch workers.


