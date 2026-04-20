---
title: gako-tag-action
date: 2026-04-20 14:30:00 +00:00
tags:
  - monperrus
  - GitHub Actions
draft: false
repo: https://github.com/monperrus/gako-tag-action
marketplace: https://github.com/marketplace/actions/gako-tag-action
version: v0.2.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/monperrus/gako-tag-action** to version **v0.2.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gako-tag-action) to find the latest changes.

## Action Summary

The **gako-tag-action** is a GitHub Action designed to automate version tagging for commits pushed to the `main` branch by incrementing the version number based on the specified component (e.g., `major`, `minor`, or `micro`). It solves the problem of manually managing version tags by automatically identifying the latest tag, computing the next version, and pushing the new tag to the repository. Key capabilities include customizable version increments, handling of initial tags, and outputting the new and previous tags for further workflow integration.

## What's Changed

- Merge pull request #4 from monperrus/copilot/rename-every-occurrence-of-auto-tag-action (81e416c)
- Merge pull request #3 from monperrus/copilot/update-bump-type-default (1085a56)
- Update README.md to reflect new default bump_type of "minor" (e9f0405)
- refactor: rename auto-tag-action to gako-tag-action everywhere (6b35b07)
- Change default bump_type from "micro" to "minor" in action.yaml (94fa3b3)
- Initial plan (7a30934)
- Initial plan (3a9acc0)
- Clarify version tag computation in README (aacec34)
- Merge pull request #2 from monperrus/copilot/add-github-actions-workflow (5f0c851)
- Add auto-tag workflow for self-tagging on push to main (07f5189)
