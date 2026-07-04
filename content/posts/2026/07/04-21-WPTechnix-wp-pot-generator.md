---
title: WP POT Generator
date: 2026-07-04 21:49:03 +00:00
tags:
  - WPTechnix
  - GitHub Actions
draft: false
repo: https://github.com/WPTechnix/wp-pot-generator
marketplace: https://github.com/marketplace/actions/wp-pot-generator
version: v1.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/WPTechnix/wp-pot-generator** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wp-pot-generator) to find the latest changes.

## What's Changed

# v1.0.0 – Initial Release

First public release of **WP POT Generator**, a GitHub Action for generating WordPress `.pot` translation files using WP-CLI inside a Docker container.

## ✨ Features

* Generate `.pot` files for WordPress plugins and themes
* Powered by `wp i18n make-pot` running in Docker
* Automatic detection of plugin/theme slug
* Automatic detection of the text domain
* Support for the `<slug>` placeholder in custom output paths
* 10 configurable inputs for flexible generation
* 4 action outputs for use in GitHub Actions workflows
* Validation and clear GitHub Actions log annotations for improved error reporting

## 🧪 Quality

* Comprehensive test suite covering plugins, themes, custom configurations, include/exclude patterns, and source subdirectories
* CI pipeline with schema validation, ShellCheck, actionlint, and end-to-end tests
* Dependabot configuration for GitHub Actions and Docker dependencies
* Conventional Commit enforcement with Commitlint

## 🚀 Quick Start

```yaml
- name: Generate POT file
  uses: WPTechnix/wp-pot-generator@v1
```

See the README for full documentation and configuration examples.

