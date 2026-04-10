---
title: QualityMax Test Runner
date: 2026-04-10 22:01:00 +00:00
tags:
  - Quality-Max
  - GitHub Actions
draft: false
repo: https://github.com/Quality-Max/qualitymax-github-action
marketplace: https://github.com/marketplace/actions/qualitymax-test-runner
version: v1.2.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Quality-Max/qualitymax-github-action** to version **v1.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qualitymax-test-runner) to find the latest changes.

## Action Summary

The **QualityMax Test Runner GitHub Action** automates AI-powered end-to-end (E2E) testing in CI/CD pipelines by executing tests on each code push, pull request, or scheduled run. It simplifies the testing process with features like automatic test generation and maintenance, flaky test detection with auto-retries, and PR comments summarizing test results. This action ensures faster feedback, seamless integration, and improved software quality with minimal configuration.

## What's Changed

Removes `--with-deps` flag that was hanging the action for 8+ minutes during local test execution. Pins Playwright to 1.49.0 and removes silent flag for visibility.
