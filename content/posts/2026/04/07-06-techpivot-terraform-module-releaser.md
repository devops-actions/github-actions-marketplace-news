---
title: Terraform Module Releaser
date: 2026-04-07 06:15:24 +00:00
tags:
  - techpivot
  - GitHub Actions
draft: false
repo: https://github.com/techpivot/terraform-module-releaser
marketplace: https://github.com/marketplace/actions/terraform-module-releaser
version: v2.1.0
dependentsNumber: "30"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/techpivot/terraform-module-releaser** to version **v2.1.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **30** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-module-releaser) to find the latest changes.

## Action Summary

The **Terraform Module Releaser** GitHub Action automates the versioning, release management, and documentation of Terraform modules within GitHub monorepos. It simplifies workflows by automatically creating module-specific Git tags, GitHub releases, and documentation (including changelogs and usage examples), while maintaining independent versioning for each module. This action eliminates the need for external dependencies, ensures clean repository management, and supports both cloud and on-premises environments.

## What's Changed

## 2.1.0 (2026-04-06)

### ✨ New Features

- **Pre-Release Option for GitHub Releases** 🏷️: You can now mark Terraform-Module GitHub-specfic releases as pre-releases using a new `pre-release` config input (default: false). This helps teams in monorepos avoid conflicts with other release tools and ensures more accurate release tracking. @tokio-on-jupiter @virgofx (#427)

### 🛠 Improvements

- **Node.js Runtime Update** 🚀: Updated Node.js runtime from v20 to v24 in action configuration and documentation, ensuring compatibility with the latest features and security updates. @virgofx (#424)

### 🔧 Developer Experience

- **TypeScript 6.0.2 Upgrade** 🧑‍💻: Upgraded TypeScript to v6.0.2, improving type safety and developer tooling across the project. @virgofx (#424)
- **SonarQube Action Pinning Guidelines** 📋: Updated SonarQube scan action to v7.0.0 and added best practices for pinning third-party actions, enhancing CI reliability and security. @virgofx (#387)

###### Full Changelog: https://github.com/techpivot/terraform-module-releaser/compare/v2.0.0...v2.1.0
