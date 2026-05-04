---
title: Helm Chart Release
date: 2026-05-04 14:44:45 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/helm-chart-release-action
marketplace: https://github.com/marketplace/actions/helm-chart-release
version: v1.0.3
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/somaz94/helm-chart-release-action** to version **v1.0.3**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/helm-chart-release) to find the latest changes.

## Action Summary

The `helm-chart-release-action` is a GitHub Action designed to automate the packaging, publishing, and distribution of Helm charts. It streamlines the release process by combining tasks such as creating Helm chart packages, updating and publishing them to a Helm repository on a `gh-pages` branch, and optionally pushing them to an OCI (Open Container Initiative) registry. This action simplifies Helm chart lifecycle management, supports both single and multi-chart workflows, and offers flexible configurations like dry-run mode, dependency updates, and version control.

## What's Changed


### Bug Fixes

- Gate appVersion override by GITHUB_REF_TYPE to skip non-tag triggers (a8b91fc)

### Documentation

- Update changelog (fae8c13)

### Miscellaneous

- Set CODEOWNERS to @somaz94 (b66a14d)
- Drop unused docker dependabot ecosystem (composite action, no Dockerfile) (c77df68)

**Full Changelog**: https://github.com/somaz94/helm-chart-release-action/compare/v1.0.2...v1.0.3

