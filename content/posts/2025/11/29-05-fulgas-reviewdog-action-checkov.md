---
title: Run Checkov with reviewdog
date: 2025-11-29 05:29:31 +00:00
tags:
  - fulgas
  - GitHub Actions
draft: false
repo: https://github.com/fulgas/reviewdog-action-checkov
marketplace: https://github.com/marketplace/actions/run-checkov-with-reviewdog
version: v2.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/fulgas/reviewdog-action-checkov** to version **v2.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-checkov-with-reviewdog) to find the latest changes.

## Release notes

# [2.0.0](https://github.com/fulgas/reviewdog-action-checkov/compare/v1.2.0...v2.0.0) (2025-11-28)


* feat!: migrate to GHCR pre-built images with Dockerfile CI testing ([3fca159](https://github.com/fulgas/reviewdog-action-checkov/commit/3fca159d2cd6747bfeed9530f6fe497db3e11cc5))


### BREAKING CHANGES

* The action now uses pre-built Docker images from GHCR for
faster execution. The entrypoint receives inputs via environment variables
(INPUT_*) instead of command-line arguments.

Changes:
- Update action.yml to use docker://ghcr.io/fulgas/reviewdog-action-checkov:1.2.0
- Switch from args-based to environment variable-based input handling
- Update CI workflow to build and test from Dockerfile before publishing
- Ensure all framework tests run against locally built images
- Update README with new usage patterns and development workflow

Benefits:
- Faster action execution (no build time)
- CI still validates Dockerfile changes before publishing
- Users get stable, tested images
- Developers can iterate on Dockerfile with confidence

Migration guide for users:
- No action required for standard usage
- Custom Dockerfile users should switch to GHCR image or build their own

Signed-off-by: Nelson Silva <2473927+fulgas@users.noreply.github.com>




