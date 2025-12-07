---
title: PR Comment Pro
date: 2025-12-07 21:01:08 +00:00
tags:
  - Malnati
  - GitHub Actions
draft: false
repo: https://github.com/Malnati/pr-comment
marketplace: https://github.com/marketplace/actions/pr-comment-pro
version: v7.0.0
dependentsNumber: "1"
---


Version updated for **https://github.com/Malnati/pr-comment** to version **v7.0.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-comment-pro) to find the latest changes.

## Release notes

These changes updates the `action.yml` to Malnati/pr-comment@v7.0.0 for the `Malnati/pr-comment` GitHub Action, introducing a major version upgrade to v7.0.0. The changes focus on modularizing the architecture, improving template flexibility, enhancing sticky comment support, and providing better input validation and error handling. The inputs, steps, and documentation have been refactored for clarity and extensibility, with many descriptions now in Portuguese.

**Major Version & Architecture Update:**

* Upgraded the action from `v6.1.0` to `v7.0.0`, with a modular architecture and improved documentation.

**Template System Enhancements:**

* Added support for custom Markdown templates via `template_path` and direct string templates via `template_string`, with priority for direct string input. Also introduced a `variables` input for extra JSON-based substitutions.
* Refactored template rendering to use environment variable substitution and improved logic for selecting and processing the template source.

**Sticky Comment Improvements:**

* Enhanced sticky comment logic by searching for existing comments using a unique `message_id` and updating them if found, otherwise creating new ones. This logic is now more robust and clearly separated in the workflow steps.

**Input Validation & Permissions:**

* Improved input validation and permissions checks, including early failure on missing required inputs and better API access diagnostics for the GitHub token.

**Error Handling & User Feedback:**

* Refined error messages and user feedback throughout the workflow, including clearer success/failure messages and step grouping for easier debugging.
