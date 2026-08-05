---
title: sarif-kit
date: 2026-08-05 14:53:23 +00:00
tags:
  - sarif-kit
  - GitHub Actions
draft: false
repo: https://github.com/sarif-kit/sarif-kit
marketplace: https://github.com/marketplace/actions/sarif-kit
version: v0.1.0
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  The sarif-kit action converts the native output of various scanners and linters into valid SARIF 2.1.0, making them compatible with GitHub Code Scanning. It automates the process of converting tool outputs to SARIF format, which is required for integrating security scans into CI/CD pipelines. The action supports tools like pip-audit, yamllint, and codespell, automatically detecting the correct adapter and providing options for customizing the input and output paths, including rewriting absolute paths as relative ones and handling multiple findings in a single SARIF file.
---


Version updated for **https://github.com/sarif-kit/sarif-kit** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sarif-kit) to find the latest changes.

## Action Summary

The sarif-kit action converts the native output of various scanners and linters into valid SARIF 2.1.0, making them compatible with GitHub Code Scanning. It automates the process of converting tool outputs to SARIF format, which is required for integrating security scans into CI/CD pipelines. The action supports tools like pip-audit, yamllint, and codespell, automatically detecting the correct adapter and providing options for customizing the input and output paths, including rewriting absolute paths as relative ones and handling multiple findings in a single SARIF file.

## What's Changed

sarif-kit converts the native output of pip-audit, yamllint and codespell into SARIF 2.1.0 that GitHub Code Scanning accepts. This first release covers the converter core, the three adapters, the CLI and the GitHub Action.

The CLI has three commands. convert turns a tool's output into SARIF, either with --tool or with --auto, which works the adapter out from the shape of the input. validate checks any SARIF file against the official schema. merge combines files while keeping to GitHub's rule of one analysis category per run. Exit codes are 0 for success, 1 for findings under --fail-on-findings and 2 for errors, and there is a man page.

The action wraps the CLI in a prebuilt container image, ghcr.io/sarif-kit/sarif-kit:0.1.0, so nothing installs Python on your runner. Chain github/codeql-action/upload-sarif to get the alerts into the Security tab.

Passing the schema is not what makes an adapter finished here. Every adapter ships with real captured fixtures and golden tests, and its output has been uploaded to a real repository and read in the Code Scanning UI. [sarif-kit/demo](https://github.com/sarif-kit/demo) runs all three tools against a repository broken on purpose, if you want to see the alerts before wiring anything up.

