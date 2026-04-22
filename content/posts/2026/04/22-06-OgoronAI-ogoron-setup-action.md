---
title: Ogoron Setup
date: 2026-04-22 06:23:45 +00:00
tags:
  - OgoronAI
  - GitHub Actions
draft: false
repo: https://github.com/OgoronAI/ogoron-setup-action
marketplace: https://github.com/marketplace/actions/ogoron-setup
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/OgoronAI/ogoron-setup-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ogoron-setup) to find the latest changes.

## Action Summary

The **Ogoron Setup Action** automates the initialization or migration of Ogoron configurations in a repository by downloading the required Ogoron Linux bundle, setting up or upgrading repository artifacts, and performing an analysis step. It addresses the need for seamless repository setup and updates, while providing key capabilities such as preparing the Ogoron UI workspace and creating or updating pull requests with the resulting changes. This action is designed specifically for manual bootstrap or migration workflows.

## What's Changed

Initial public release of the Ogoron Setup action.

This action bootstraps or upgrades Ogoron in a repository, can run `ogoron analyze business`, can prepare the UI workspace, and can open a pull request with the resulting repository changes.

Current scope:
  - Linux runners only
  - Requires `OGORON_REPO_TOKEN`
  - `OGORON_LLM_API_KEY` is required only in BYOK mode
