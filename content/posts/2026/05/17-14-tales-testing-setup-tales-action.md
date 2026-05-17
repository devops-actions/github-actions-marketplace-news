---
title: Setup Tales
date: 2026-05-17 14:04:35 +00:00
tags:
  - tales-testing
  - GitHub Actions
draft: false
repo: https://github.com/tales-testing/setup-tales-action
marketplace: https://github.com/marketplace/actions/setup-tales
version: v1.0.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/tales-testing/setup-tales-action** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-tales) to find the latest changes.

## Action Summary

The `setup-tales-action` GitHub Action automates the installation of the Tales CLI, a tool for end-to-end (E2E) testing, from GitHub Releases. It simplifies the setup process by downloading and adding the `tales` binary to the system's `PATH`, enabling seamless integration into CI/CD workflows. This action ensures consistent environments for running Tales commands in subsequent workflow steps and provides options for version selection, checksum verification, and custom installation paths.

## What's Changed

## Changes
- Fix `version: latest` against repos that only have pre-releases. GitHub's `/releases/latest` API returns 404 in that case; the action now falls back to `/releases?per_page=1` and picks the most recent release (incl. pre-releases). Stable releases still win when present — behavior is unchanged for repos that have a stable.

## Compatibility
- Inputs/outputs: unchanged.
- Supported platforms: linux/x86_64, linux/arm64, darwin/x86_64, darwin/arm64.
- Floating `v1` tag now points at `v1.0.3`.
