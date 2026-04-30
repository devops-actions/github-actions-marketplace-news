---
title: obsidian-plugin-lint
date: 2026-04-30 21:54:20 +00:00
tags:
  - Kodaskills
  - GitHub Actions
draft: false
repo: https://github.com/Kodaskills/oplint-action
marketplace: https://github.com/marketplace/actions/obsidian-plugin-lint
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Kodaskills/oplint-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/obsidian-plugin-lint) to find the latest changes.

## Action Summary

The `oplint-action` GitHub Action automates the process of linting Obsidian plugins using OPLint, ensuring compliance with predefined rules and standards. It generates a compliance score, grade, and violation details, and can provide actionable feedback through pull request comments, badges, and detailed report artifacts. This action streamlines quality assurance for Obsidian plugin developers by integrating automated linting and reporting into their CI/CD workflows.

## What's Changed

 ## Initial release

  Run [OPLint](https://github.com/kodaskills/oplint) on your Obsidian plugin in CI.

  ### Features
  - Compliance score (0–100) and letter grade
  - Configurable failure threshold (`fail_on: error | warning | info | none`)
  - GitHub step summary with score, grade, and violations
  - PR comment with full lint results
  - Static badge URL and Shields.io endpoint JSON
  - Report artifacts (Markdown, HTML, JSON)

  ### Usage
  ```yaml
  - uses: kodaskills/oplint-action@v1

  See README for full configuration.
  ```
