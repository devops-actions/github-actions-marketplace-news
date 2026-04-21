---
title: Helm Chart Release
date: 2026-04-21 14:26:33 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/helm-chart-release-action
marketplace: https://github.com/marketplace/actions/helm-chart-release
version: v1.0.2
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/somaz94/helm-chart-release-action** to version **v1.0.2**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/helm-chart-release) to find the latest changes.

## Action Summary

The `helm-chart-release-action` is a GitHub Action that automates the release process for Helm charts by packaging them, publishing them to a `gh-pages` branch as a Helm repository, and optionally pushing them to an OCI registry. It streamlines the Helm chart release pipeline, supporting both single and multi-chart workflows, with features like dry-run validation, app version auto-bumping, and flexible toggles for gh-pages and OCI push operations. This action simplifies and accelerates Helm chart deployments while ensuring consistent and repeatable processes for developers.

## What's Changed


### Bug Fixes

- Use 'latest' string for helm_version (azure/setup-helm v5 rejects empty) (062ccac)

### Documentation

- Update changelog (5254bcf)

**Full Changelog**: https://github.com/somaz94/helm-chart-release-action/compare/v1.0.1...v1.0.2

