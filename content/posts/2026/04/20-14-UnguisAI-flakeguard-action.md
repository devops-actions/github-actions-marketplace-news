---
title: FlakeGuard JUnit Flake Detector
date: 2026-04-20 14:28:46 +00:00
tags:
  - UnguisAI
  - GitHub Actions
draft: false
repo: https://github.com/UnguisAI/flakeguard-action
marketplace: https://github.com/marketplace/actions/flakeguard-junit-flake-detector
version: v1.0.3
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/UnguisAI/flakeguard-action** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/flakeguard-junit-flake-detector) to find the latest changes.

## Action Summary

FlakeGuard is a GitHub Action that analyzes JUnit XML test results to detect and report flaky tests—tests with inconsistent pass/fail outcomes—directly within the GitHub Actions workflow UI. It automates the tracking of test history, identifies flaky tests using deterministic rules, and generates a detailed markdown summary for easy review. This action helps improve test reliability by flagging suspect tests and providing insights into their behavior across multiple runs.

## What's Changed

FlakeGuard JUnit Flake Detector detects suspect flaky tests from JUnit history directly in GitHub Actions.

What's in this release
- Retries GitHub Marketplace publication with a fresh version after the earlier name-collision fix
- Keeps the Marketplace-facing action metadata as FlakeGuard JUnit Flake Detector
- Preserves the existing FlakeGuard behavior: parse JUnit XML, retain rolling history, and surface suspect flakes in the workflow summary
