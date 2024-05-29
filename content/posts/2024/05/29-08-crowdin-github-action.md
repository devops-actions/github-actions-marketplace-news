---
title: crowdin-action
date: 2024-05-29 08:46:20 +00:00
tags:
  - crowdin
  - GitHub Actions
draft: false
repo: crowdin/github-action
marketplace: https://github.com/marketplace/actions/crowdin-action
version: v2.0.0
dependentsNumber: "8,558"
---


Version updated for **crowdin/github-action** to version **v2.0.0**.
- This action is used across all versions by **8,558** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/crowdin-action) to find the latest changes.

## Release notes

## What's Changed

### Features

- Now the Action uses the new [CLI v4](https://crowdin.github.io/crowdin-cli/blog/2024/05/28/cli-v4)

### Deprecations

Removed deprecated options:

- `add_crowdin_branch`
- `new_branch_title`
- `new_branch_export_pattern`
- `new_branch_priority`
- `delete_crowdin_branch`

Instead, use the `command: branch add <name>` to create a new branch.

- `identity` - this option doesn't make much sense in the context of the GitHub action, where environment variables are a de facto standard for credentials loading.

---

**Full Changelog**: https://github.com/crowdin/github-action/compare/v1.20.4...v2.0.0
