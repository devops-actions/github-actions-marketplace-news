---
title: Conditional Container Builder with Fallback
date: 2026-05-06 07:30:23 +00:00
tags:
  - bcgov
  - GitHub Actions
draft: false
repo: https://github.com/bcgov/action-builder-ghcr
marketplace: https://github.com/marketplace/actions/conditional-container-builder-with-fallback
version: v4.3.0
dependentsNumber: "201"
actionType: Composite
---


Version updated for **https://github.com/bcgov/action-builder-ghcr** to version **v4.3.0**.

- This action is used across all versions by **201** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/conditional-container-builder-with-fallback) to find the latest changes.

## Action Summary

This GitHub Action automates the conditional building of Docker/Podman containers based on file changes, optimizing CI/CD pipelines by only rebuilding specific packages or applications when necessary. It supports fallback tagging for unchanged builds, integrates with the GitHub Container Registry (ghcr.io), and generates security-related artifacts like attestations and Software Bill of Materials (SBOMs). Key capabilities include configurable build contexts, triggers, and metadata tagging to streamline container management and deployment workflows.

## What's Changed

## What's Changed
* chore(deps): update actions/attest-build-provenance action to v3 by @renovate[bot] in https://github.com/bcgov/action-builder-ghcr/pull/125
* chore(deps): update docker/metadata-action digest to c299e40 by @renovate[bot] in https://github.com/bcgov/action-builder-ghcr/pull/126
* chore(deps): update actions/checkout action to v6 by @renovate[bot] in https://github.com/bcgov/action-builder-ghcr/pull/127
* chore(deps): update actions/upload-artifact action to v6 by @renovate[bot] in https://github.com/bcgov/action-builder-ghcr/pull/128
* chore(deps): update actions/attest-build-provenance action to v3.1.0 by @renovate[bot] in https://github.com/bcgov/action-builder-ghcr/pull/129
* feat: add automatic fork PR detection and retag authentication by @DerekRoberts in https://github.com/bcgov/action-builder-ghcr/pull/131
* chore(deps): update actions/attest-build-provenance action to v3.2.0 by @renovate[bot] in https://github.com/bcgov/action-builder-ghcr/pull/134
* chore(deps): update bcgov/action-diff-triggers action to v1.1.0 by @renovate[bot] in https://github.com/bcgov/action-builder-ghcr/pull/135
* chore(deps): update github actions (major) by @renovate[bot] in https://github.com/bcgov/action-builder-ghcr/pull/136
* chore(deps): update bcgov/action-diff-triggers action to v1.1.1 by @renovate[bot] in https://github.com/bcgov/action-builder-ghcr/pull/137
* chore(deps): update docker/login-action action to v4 by @renovate[bot] in https://github.com/bcgov/action-builder-ghcr/pull/138
* chore(deps): update github actions (major) by @renovate[bot] in https://github.com/bcgov/action-builder-ghcr/pull/139
* feat: suppress raw attestation error when permissions are missing by @DerekRoberts in https://github.com/bcgov/action-builder-ghcr/pull/140
* chore(deps): update shrink/actions-docker-registry-tag action to v5 by @renovate[bot] in https://github.com/bcgov/action-builder-ghcr/pull/143
* feat: pull_request_target only, drop dual-trigger complexity by @DerekRoberts in https://github.com/bcgov/action-builder-ghcr/pull/153
* feat: enable rich metadata labels by default by @DerekRoberts in https://github.com/bcgov/action-builder-ghcr/pull/145
* feat: registry caching for branch-agnostic cache sharing by @DerekRoberts in https://github.com/bcgov/action-builder-ghcr/pull/154
* fix: Use vars step for lowercase (action syntax) by @DerekRoberts in https://github.com/bcgov/action-builder-ghcr/pull/156


**Full Changelog**: https://github.com/bcgov/action-builder-ghcr/compare/v4.2.1...v4.3.0
