---
title: Ops Errors
date: 2025-12-18 21:18:02 +00:00
tags:
  - Malnati
  - GitHub Actions
draft: false
repo: https://github.com/Malnati/ops-errors
marketplace: https://github.com/marketplace/actions/ops-errors
version: v1.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/Malnati/ops-errors** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ops-errors) to find the latest changes.

## Release notes

This pull request introduces several improvements to error handling, updates the GitHub Actions configuration, and refines output variable naming for clarity and correctness. The most important changes are grouped below.

**GitHub Actions and Dependency Management:**

* Added a `.github/dependabot.yml` file to enable weekly automated dependency updates for GitHub Actions workflows.
* Updated the referenced version of the action in `action.yml` from `v1.0.0` to `v1.0.1` to ensure the latest bug fixes and improvements are used.

**Output Variable and Error Handling Improvements:**

* Changed the output variable name in `action.yml` from `errors` to `errors_path` for clarity and to match the actual output from the setup step.
* Improved the `with_error_log` function in `scripts/lib.sh` to handle error file cleanup more robustly, provide clearer error messages, and ensure errors are appended to the log with context.Removed comments and clarified package ecosystem.
