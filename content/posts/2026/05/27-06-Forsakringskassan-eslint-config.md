---
title: forsakringskassan/eslint-config
date: 2026-05-27 06:34:33 +00:00
tags:
  - Forsakringskassan
  - GitHub Actions
draft: false
repo: https://github.com/Forsakringskassan/eslint-config
marketplace: https://github.com/marketplace/actions/forsakringskassan-eslint-config
version: v15.0.0
dependentsNumber: "22"
actionType: Composite
---


Version updated for **https://github.com/Forsakringskassan/eslint-config** to version **v15.0.0**.

- This action is used across all versions by **22** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/forsakringskassan-eslint-config) to find the latest changes.

## Action Summary

`eslint-config-fk` provides a shareable ESLint configuration tailored for Försäkringskassan's coding standards. It simplifies and enforces consistent code quality by offering pre-configured rules, optional specialized configurations for various environments (e.g., TypeScript, Vue, Jest), and seamless integration with CI/CD pipelines to prevent warnings from being overlooked. The package also eliminates the need for separate ESLint dependencies, streamlining setup for developers.

## What's Changed

## 15.0.0 (2026-05-25)

### ⚠ BREAKING CHANGES

* **deps:** This configuration now uses the `eslint-plugin-import-x` fork
instead of `eslint-plugin-import`. If your repo contains overrides or
eslint-disable suppressions they must now be changed to use the new rule names
with the `import-x` prefix. Or better yet, file a bug describing the scenario so
it can be fixed properly.

### Features

* **deps:** migrate from `eslint-plugin-import` to `eslint-plugin-import-x` 27d866e
* **deps:** update eslint to v10 83639cd

