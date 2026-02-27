---
title: Setup Alpacon CLI
date: 2026-02-27 05:53:55 +00:00
tags:
  - alpacax
  - GitHub Actions
draft: false
repo: https://github.com/alpacax/alpacon-setup-action
marketplace: https://github.com/marketplace/actions/setup-alpacon-cli
version: v1.1.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/alpacax/alpacon-setup-action** to version **v1.1.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-alpacon-cli) to find the latest changes.

## Action Summary

The Alpacon Setup Action is a GitHub Action that automates the installation of the Alpacon CLI in a workflow environment, ensuring it is available for subsequent steps. It eliminates the need for manual installation by checking for the CLI's presence and installing it if necessary. This action streamlines workflows by serving as a prerequisite for other Alpacon actions, enabling seamless integration and efficient use of the Alpacon CLI.

## Release notes

## What's Changed

- Add `set -e` for fail-fast error handling in composite action steps
- Change `curl -s` to `curl -sS` to show error messages while hiding progress bar
- Add `permissions: contents: read` to test workflow (least privilege)
- Add `set -e` to test workflow run blocks
- Improve README with troubleshooting table, supported runners, and related actions
- Use pinned version tags in documentation examples
