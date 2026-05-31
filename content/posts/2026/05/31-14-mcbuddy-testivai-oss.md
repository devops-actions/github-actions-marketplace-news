---
title: TestivAI Visual Report
date: 2026-05-31 14:41:33 +00:00
tags:
  - mcbuddy
  - GitHub Actions
draft: false
repo: https://github.com/mcbuddy/testivai-oss
marketplace: https://github.com/marketplace/actions/testivai-visual-report
version: testivai/witness-playwright1.2.1
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/mcbuddy/testivai-oss** to version **@testivai/witness-playwright@1.2.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/testivai-visual-report) to find the latest changes.

## Action Summary

The TestivAI GitHub Action provides a local-first solution for visual regression testing in modern web applications. It automates the capture, diffing, and reporting of visual changes in pull requests, generating pixel-based comparisons and self-contained HTML reports without requiring external services. Additionally, it integrates seamlessly with CI/CD pipelines like GitHub Actions to streamline PR-based visual approvals, with the option to enhance functionality through a hosted cloud service for AI-powered analysis and team workflows.

## What's Changed

### Patch Changes

-   db80bc5: refactor: extract ignoreSelectors logic into pure testable helper module

    Move the `collectIgnoreSelectors`, `buildIgnoreSelectorsCSS`, and
    `readWitnessConfigSelectors` functions from inline code inside `snapshot.ts`
    into a dedicated `src/config/ignore-selectors.ts` module.

    No behaviour change — the logic is identical. The refactor makes the
    three-source selector merge and CSS generation unit-testable without
    a browser (26 unit tests added covering all edge cases).

