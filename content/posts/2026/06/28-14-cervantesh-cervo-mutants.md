---
title: CervoMutants
date: 2026-06-28 14:59:14 +00:00
tags:
  - cervantesh
  - GitHub Actions
draft: false
repo: https://github.com/cervantesh/cervo-mutants
marketplace: https://github.com/marketplace/actions/cervomutants
version: v0.4.4
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/cervantesh/cervo-mutants** to version **v0.4.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cervomutants) to find the latest changes.

## What's Changed

# CervoMutants v0.4.4

## Changelog

### Changed

- The root GitHub Action now declares Marketplace-ready metadata through
  `author`, `branding.icon`, and `branding.color` in `action.yml`, which keeps
  the action contract unchanged while allowing GitHub Marketplace publication.

### Documentation

- Updated the live install and GitHub Action docs to pin `v0.4.4` as the
  latest public release and aligned the released external-wave manifest default
  used by the hosted validation workflow.

### Verification

- `go test ./...`
- `go run ./cmd/releasehelper verify-compat`
- `go run ./cmd/releasehelper notes --version v0.4.4 --out .tmp/release-notes-v0.4.4.md`

## Upgrade Notes

## Summary

- `v0.4.4` is a patch release focused on the published GitHub Action surface.
- The root `action.yml` now carries the metadata GitHub expects for GitHub
  Marketplace publication without changing inputs, outputs, or runner-facing
  behavior.
- Installation, release, and hosted-wave alignment docs now point at
  `v0.4.4` as the current public release.

## Operator Action

- If you pin the GitHub Action by tag, move from `@v0.4.3` to `@v0.4.4` after
  this release is published.
- No workflow input or artifact-path migration is required for existing action
  consumers.
- If you maintain install or onboarding docs downstream, update any explicit
  `v0.4.3` examples to `v0.4.4`.

## Rollback

- If this release causes unexpected GitHub Action behavior, pin back to
  `cervantesh/cervo-mutants@v0.4.3`.
- If you install via `go install`, reinstall the prior tag:
  `go install github.com/cervantesh/cervo-mutants/cmd/cervomut@v0.4.3`.
- If you install from release archives, reinstall the previous `v0.4.3`
  archive for your target platform.

