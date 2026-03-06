---
title: Workflow Var Action - Replace env vars in file
date: 2026-03-06 13:45:56 +00:00
tags:
  - sushidev-team
  - GitHub Actions
draft: false
repo: https://github.com/sushidev-team/workflow-var-action
marketplace: https://github.com/marketplace/actions/workflow-var-action-replace-env-vars-in-file
version: v1.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sushidev-team/workflow-var-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/workflow-var-action-replace-env-vars-in-file) to find the latest changes.

## Action Summary

The **Replace Env Vars Action** is a GitHub Action designed to automate the replacement of placeholder tokens (e.g., `__TOKEN__`) in files with corresponding environment variable values. It ensures safe handling of special characters in values (e.g., `|`, `&`, `/`) and leaves unmatched placeholders untouched. This action streamlines the process of dynamically configuring files, such as deployment manifests, by injecting environment-specific or secret values.

## Release notes

## 1.0.0 (2026-02-12)


### Features

* initial release - replace __TOKENS__ with env vars ([8352da7](https://github.com/sushidev-team/workflow-var-action/commit/8352da70d40189b954e7d6b2076be582cc8d4622))
* normalize escaped pipes (\|) to plain pipes (|) ([6e75d80](https://github.com/sushidev-team/workflow-var-action/commit/6e75d803f4b346459d5d6e3819bcf7fef2a42922))


### Bug Fixes

* add release please ([fec0f2b](https://github.com/sushidev-team/workflow-var-action/commit/fec0f2b1e507b554d90532533c25ef48d87f3ab2))
* implement release please ([788f020](https://github.com/sushidev-team/workflow-var-action/commit/788f020878508676a58d2f089ced25145339b1e0))
* name ([797f82a](https://github.com/sushidev-team/workflow-var-action/commit/797f82a540a69b011105bbca3983237c86508fec))
