---
title: esc-action
date: 2026-05-29 06:41:00 +00:00
tags:
  - pulumi
  - GitHub Actions
draft: false
repo: https://github.com/pulumi/esc-action
marketplace: https://github.com/marketplace/actions/esc-action
version: v1.6.0
dependentsNumber: "194"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/pulumi/esc-action** to version **v1.6.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **194** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/esc-action) to find the latest changes.

## Action Summary

The **Pulumi ESC GitHub Action** integrates Pulumi's Environments, Secrets, and Configuration (ESC) system into GitHub workflows, enabling secure management and injection of secrets, environment variables, and configuration files. It addresses issues like outdated `.env` files, secret sprawl, and secure access to shared resources by supporting dynamic credentials, automatic secret rotation, and seamless integration with developer tools and CI/CD pipelines. This action simplifies workflows by automating the retrieval and injection of secrets, ensuring they are valid and secure at runtime.

## What's Changed

## What's Changed

* Update action runtime to Node.js 24 (fixes #40) by @tehsis in https://github.com/pulumi/esc-action/pull/45

### Upgrade notes

GitHub Actions is deprecating Node.js 20 and will force all actions to run on Node.js 24 starting **June 2, 2026** (see [GitHub's announcement](https://github.blog/changelog/2025-09-16-github-actions-default-runtime-updated-to-node24/)). This release migrates the action runtime ahead of that deadline. **No action inputs or outputs have changed**. For most users, upgrading is just a tag bump.

**Full Changelog**: https://github.com/pulumi/esc-action/compare/v1.5.0...v1.6.0
