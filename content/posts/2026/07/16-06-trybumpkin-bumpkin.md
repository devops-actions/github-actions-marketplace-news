---
title: Bumpkin Release Planner
date: 2026-07-16 06:24:31 +00:00
tags:
  - trybumpkin
  - GitHub Actions
draft: false
repo: https://github.com/trybumpkin/bumpkin
marketplace: https://github.com/marketplace/actions/bumpkin-release-planner
version: v2.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Bumpkin automates the creation of reviewed release candidates by analyzing merged pull requests, proposing version bumps and generating public changelogs. It helps teams with inconsistent commit conventions manage releases efficiently and ensures that releases are thoroughly reviewed before publication. The action is suitable for teams publishing GitHub Releases from merged PRs, especially those dealing with mixed-merge workflows or repositories with varying commit discipline.
---


Version updated for **https://github.com/trybumpkin/bumpkin** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bumpkin-release-planner) to find the latest changes.

## Action Summary

Bumpkin automates the creation of reviewed release candidates by analyzing merged pull requests, proposing version bumps and generating public changelogs. It helps teams with inconsistent commit conventions manage releases efficiently and ensures that releases are thoroughly reviewed before publication. The action is suitable for teams publishing GitHub Releases from merged PRs, especially those dealing with mixed-merge workflows or repositories with varying commit discipline.

## What's Changed

## Breaking Changes
- [PR #85](https://github.com/trybumpkin/bumpkin/pull/85) by @anasalsharif: Split analysis and diff boundaries
- [PR #88](https://github.com/trybumpkin/bumpkin/pull/88) by @anasalsharif: Separate orchestration boundaries
- [PR #89](https://github.com/trybumpkin/bumpkin/pull/89) by @anasalsharif: Split GitHub integration boundaries
- [PR #90](https://github.com/trybumpkin/bumpkin/pull/90) by @anasalsharif: Split evaluation and corpus tooling

## Fixes
- [PR #91](https://github.com/trybumpkin/bumpkin/pull/91) by @anasalsharif: Standardize model runtime environment

## Needs Review
- [PR #86](https://github.com/trybumpkin/bumpkin/pull/86) by @anasalsharif: Split model provider request paths (PR recommendation did not produce a normalized release label)
- [PR #87](https://github.com/trybumpkin/bumpkin/pull/87) by @anasalsharif: Separate policy evaluation modules (PR recommendation did not produce a normalized release label)

## Contributors
@anasalsharif
