---
title: Insomnia Run
date: 2026-01-04 21:28:57 +00:00
tags:
  - scarowar
  - GitHub Actions
draft: false
repo: https://github.com/scarowar/insomnia-run
marketplace: https://github.com/marketplace/actions/insomnia-run
version: v0.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/scarowar/insomnia-run** to version **v0.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/insomnia-run) to find the latest changes.

## Action Summary

This GitHub Action automates the execution of Insomnia API collections and test suites within CI/CD pipelines, providing streamlined testing and reporting capabilities. It solves the problem of integrating API testing into development workflows by offering features such as automatic pull request comments, markdown reports, secure secret handling, and environment targeting. The action enhances efficiency and collaboration by delivering clear test results directly in pull requests and workflow summaries.

## Release notes

## Insomnia Run v0.1.0

Initial release of the Insomnia Run GitHub Action.

### Features

- **GitHub Actions Native**: Drop-in action with simple YAML configuration
- **Automatic PR Comments**: Post test results directly to pull requests
- **Markdown Reports**: Clean, readable output for workflow summaries
- **Flexible Exit Codes**: Control workflow failure behavior
- **Environment Support**: Target different Insomnia environments per run
- **Secure Secrets**: Pass credentials safely via GitHub Secrets


### Usage

```yaml
- uses: scarowar/insomnia-run@v0.1.0
  with:
    command: collection
    working-directory: .insomnia
```

### Documentation

https://scarowar.github.io/insomnia-run/
