---
title: Sync Closing Labels
date: 2026-05-02 13:39:49 +00:00
tags:
  - williambdean
  - GitHub Actions
draft: false
repo: https://github.com/williambdean/closing-labels
marketplace: https://github.com/marketplace/actions/sync-closing-labels
version: v0.0.7
dependentsNumber: "11"
actionType: Docker
---


Version updated for **https://github.com/williambdean/closing-labels** to version **v0.0.7**.

- This action is used across all versions by **11** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sync-closing-labels) to find the latest changes.

## Action Summary

The **Sync Closing Labels** GitHub Action automatically transfers labels from issues closed by a pull request to the pull request itself. This streamlines label management by ensuring consistent tracking of issue contexts in PRs, reducing manual effort and potential errors. Key features include customizable label exclusion, respect for manually removed labels, and seamless integration with GitHub's API for efficient label synchronization.

## What's Changed

## What's Changed

### Python Migration
- Rewrote the action from shell scripts to a uv-managed Python package
- GitHub API calls now use httpx directly — no gh CLI or jq required in the Docker image
- GraphQL queries extracted to .graphql files, loaded via importlib.resources
- Multi-stage Dockerfile: uv builder → python:3.13-slim final image

### New Inputs
- `gh_token`: explicit token input (defaults to `github.token`)
- `dry_run`: preview labels without applying them

### CI Improvements
- Added unit tests with pytest + pytest-httpx
- Docker smoke test on every PR
- End-to-end dry-run against fixture PR using real GitHub API
- Integration test workflow (pull_request_target) — safe against pwn-request attacks
- CodeQL scanning

### Other
- Added SECURITY.md and security section in README.md
- dependabot configured for uv ecosystem
- pre-commit with ruff lint + format
