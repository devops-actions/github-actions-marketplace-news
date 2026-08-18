---
title: Run TestBot
date: 2026-08-18 13:25:08 +00:00
tags:
  - testbots-ai
  - GitHub Actions
draft: false
repo: https://github.com/testbots-ai/Run-Testbot
marketplace: https://github.com/marketplace/actions/run-testbot
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action automates the execution of TestBots using the `testbots-ai/Run-Testbot` action. It loads a test bot configuration from `configs/testbot-config.json`, sets up JWT authentication, and runs the test bot within a GitHub Actions workflow. The results are stored in the workflow's output and can be accessed for review or further processing.
---


Version updated for **https://github.com/testbots-ai/Run-Testbot** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-testbot) to find the latest changes.

## Action Summary

This GitHub Action automates the execution of TestBots using the `testbots-ai/Run-Testbot` action. It loads a test bot configuration from `configs/testbot-config.json`, sets up JWT authentication, and runs the test bot within a GitHub Actions workflow. The results are stored in the workflow's output and can be accessed for review or further processing.

## What's Changed

- Increased workflow timeouts for long-running TestBot executions (up to ~5h45m), right under GitHub's 360-minute cap: `POLL_TIMEOUT_MINUTES` → 345, job `timeout-minutes` → 358, step `timeout-minutes` → 350.
- Packaged action (`uses: testbots-ai/Run-Testbot@v1.0.1`) now generates a JUnit XML report (`results/junit.xml`) automatically.
- Added `USAGE_GUIDE.md` and Marketplace install instructions; full usage guide now also included in `README.md` so it shows on the Marketplace listing.
- Clearer failure reasons surfaced in the GitHub Job Summary for the vendored workflow.
