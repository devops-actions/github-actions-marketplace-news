---
title: GitHub Action for Extracting Atmos Settings
date: 2023-10-03 18:54:37 +00:00
tags:
  - cloudposse
  - GitHub Actions
draft: false
repo: cloudposse/github-action-atmos-get-setting
marketplace: https://github.com/marketplace/actions/github-action-for-extracting-atmos-settings
version: 0.4.1
dependentsNumber: "3"
---


Version updated for **cloudposse/github-action-atmos-get-setting** to version **0.4.1**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-action-for-extracting-atmos-settings) to find the latest changes.

## Release notes

## 🚀 Enhancements

<details>
  <summary>Fix output file handling for components that contain slashes @osterman (#14)</summary>

  ## what
* Slash slashes in the path

## why
* Components may contain slashes (e.g. `eks/cluster`), which will cause redirection to the `$OUTPUT_FILE` to fail if the directory does not exist.
* 
![CleanShot 2023-09-14 at 15 30 57](https://github.com/cloudposse/github-action-atmos-get-setting/assets/52489/069efe42-8660-4c03-a42a-e67721cc6efb)

</details>

