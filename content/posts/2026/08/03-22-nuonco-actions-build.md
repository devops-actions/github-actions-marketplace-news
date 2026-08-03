---
title: Build Component
date: 2026-08-03 22:55:54 +00:00
tags:
  - nuonco
  - GitHub Actions
draft: false
repo: https://github.com/nuonco/actions-build
marketplace: https://github.com/marketplace/actions/build-component
version: v1.5.3
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the creation of a new build for a Nuon component using the Nuon CLI. It simplifies the process of building components by abstracting away the need to manually execute the CLI commands, especially useful for CI/CD pipelines. The action supports OIDC authentication for token retrieval and provides an option to fall back on storing a secret API token if OIDC is not available.
---


Version updated for **https://github.com/nuonco/actions-build** to version **v1.5.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-component) to find the latest changes.

## Action Summary

This GitHub Action automates the creation of a new build for a Nuon component using the Nuon CLI. It simplifies the process of building components by abstracting away the need to manually execute the CLI commands, especially useful for CI/CD pipelines. The action supports OIDC authentication for token retrieval and provides an option to fall back on storing a secret API token if OIDC is not available.

## What's Changed

- fix: repair GitHub Actions builds (#24) (780e941)
- chore: add MIT license (#23) (e86244a)
- chore: remove integration test (#22) (dad3832)
- feat: improve action output (#21) (6b8b7be)
- fix: properly set build id as output (#20) (2be440d)
- feat: expose app_id field (#19) (b36932e)
- feat: use reusable pr checks workflow (#15) (e233878)
- refactor: put integration tests in their own workflow (#14) (369ad75)
- fix: reusable tagging workflow was merged (#13) (e2e3d99)
- refactor: clean up unused workflow (#12) (641161a)
