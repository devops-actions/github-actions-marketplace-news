---
title: Runtime Contract Check
date: 2026-07-15 14:55:21 +00:00
tags:
  - piotr-adamski
  - GitHub Actions
draft: false
repo: https://github.com/piotr-adamski/runtime-contract
marketplace: https://github.com/marketplace/actions/runtime-contract-check
version: v0.1.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action for `runtime-contract` checks whether environment variables used by a specific application component are actually supplied to that component in the correct build or runtime phase. It automates the process of static analysis and ensures that configuration contracts are adhered to, without executing code or accessing secret values. The action provides outputs for exit codes, result files, and CLI version verification.
---


Version updated for **https://github.com/piotr-adamski/runtime-contract** to version **v0.1.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runtime-contract-check) to find the latest changes.

## Action Summary

The GitHub Action for `runtime-contract` checks whether environment variables used by a specific application component are actually supplied to that component in the correct build or runtime phase. It automates the process of static analysis and ensures that configuration contracts are adhered to, without executing code or accessing secret values. The action provides outputs for exit codes, result files, and CLI version verification.

## What's Changed

# runtime-contract v0.1.2

This patch makes the root composite GitHub Action safe for five-minute adoption from a clean
consumer repository while preserving the product CLI as the only analyzer and argument parser.

## Changes

- Add the root composite Action, injection-safe process adapter, public inputs and outputs,
  three-platform compatibility CI, consumer E2E, SARIF guidance, and Marketplace checklist.
- Exclude `.github` from default discovery so `runtime-contract check .` does not interpret the
  consumer's workflow YAML as Kubernetes. An explicit configuration `include` can still opt in.
- Publish the package from an exact current `main` SHA through PyPI Trusted Publishing before
  creating immutable Action tags. No PyPI token is used.

## Release gates

- Merge through the rebase-only protected branch.
- Require all pull-request checks and exact-main workflows to pass.
- Publish `runtime-contract==0.1.2` from the verified exact-main SHA.
- Create the signed immutable `v0.1.2` tag only after the PyPI version exists.
- Promote `v0` only after public immutable-tag adoption succeeds.

The existing `v0.1.1` Action tag remains immutable and is not promoted because public adoption
found the `.github` discovery conflict. It does not identify a PyPI package release.

