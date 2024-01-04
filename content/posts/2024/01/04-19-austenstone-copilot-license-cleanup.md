---
title: Copilot License Cleanup
date: 2024-01-04 19:18:48 +00:00
tags:
  - austenstone
  - GitHub Actions
draft: false
repo: austenstone/copilot-license-cleanup
marketplace: https://github.com/marketplace/actions/copilot-license-cleanup
version: v1.2
dependentsNumber: "?"
---


Version updated for **austenstone/copilot-license-cleanup** to version **v1.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/copilot-license-cleanup) to find the latest changes.

## Release notes

adds support for multiple organizations through either a comma separated list of organizations or by providing an enterprise that the action can inspect to identify all organizations.  It also updates dependencies to close existing Dependabot issues.  

Enhancements to functionality:

* Added support for fetching a comma separated list of organizations.  
* Added support for fetching all organizations from an enterprise
* Added error handling if an organization does not have Copilot enabled
* Updated README with instructions for extra scopes needed for an enterprise or multiple organizations
* Added examples in README for new usage


Updates to dependencies:

* `package.json`: Updated the versions of `@types/node`, `@typescript-eslint/eslint-plugin`, `@typescript-eslint/parser`, and `eslint` to address open Dependabot issues.
