---
title: Generate llms.txt
date: 2026-04-19 13:55:44 +00:00
tags:
  - qte77
  - GitHub Actions
draft: false
repo: https://github.com/qte77/gha-llms-txt-action
marketplace: https://github.com/marketplace/actions/generate-llms-txt
version: v0.1.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/qte77/gha-llms-txt-action** to version **v0.1.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/generate-llms-txt) to find the latest changes.

## Action Summary

This GitHub Action, **gha-llms-txt-action**, automates the generation of an `llms.txt` documentation file from a specified template, using variable substitution and optional link validation. It streamlines tasks such as ensuring template references are valid and creating pull requests with updated content when changes are detected. The action is designed to simplify maintaining consistent documentation while integrating seamlessly into CI/CD workflows.

## What's Changed

Initial release — composite GitHub Action for llms.txt generation.

- Generate llms.txt from templates via envsubst
- Template variables: `${BLOB}`, `${PROJECT_NAME}`, `${PROJECT_DESC}`
- Template link validation (checks BLOB paths exist in repo)
- Optional PR creation with llms.txt updates
- BATS infra tests, CodeQL security scanning
