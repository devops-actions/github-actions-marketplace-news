---
title: Read or Modify JSON
date: 2026-08-04 07:13:03 +00:00
tags:
  - SocksTheWolf
  - GitHub Actions
draft: false
repo: https://github.com/SocksTheWolf/github-action-json
marketplace: https://github.com/marketplace/actions/read-or-modify-json
version: v1.5.0
dependentsNumber: "4"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action provides a way to edit or read JSON files, including `package.json`. It allows users to replace or remove specific keys within the JSON file and supports recursive merging of nested objects. The action is useful for automating tasks that require updating configuration files in a repository.
---


Version updated for **https://github.com/SocksTheWolf/github-action-json** to version **v1.5.0**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/read-or-modify-json) to find the latest changes.

## Action Summary

This GitHub Action provides a way to edit or read JSON files, including `package.json`. It allows users to replace or remove specific keys within the JSON file and supports recursive merging of nested objects. The action is useful for automating tasks that require updating configuration files in a repository.

## What's Changed

* Moves entire action to typescript
* Changes build method to more up to date (uses rollup)
* Allows for new input `removeKey`
* Don't write the json file if there's no changes to the file made
* Update readme
* Update dependencies
* Change to NPM over yarn
* Add dryRun input
