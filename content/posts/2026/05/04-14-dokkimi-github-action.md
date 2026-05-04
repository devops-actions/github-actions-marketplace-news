---
title: Dokkimi Run Tests
date: 2026-05-04 14:46:10 +00:00
tags:
  - dokkimi
  - GitHub Actions
draft: false
repo: https://github.com/dokkimi/github-action
marketplace: https://github.com/marketplace/actions/dokkimi-run-tests
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/dokkimi/github-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dokkimi-run-tests) to find the latest changes.

## Action Summary

The Dokkimi GitHub Action automates the execution of integration, end-to-end (E2E), and visual regression tests in a Kubernetes environment within GitHub Actions workflows. It sets up a single-node Kubernetes cluster, runs tests using the Dokkimi CLI, and manages the entire lifecycle, including cleanup, without requiring prior infrastructure expertise. This action simplifies complex testing workflows by handling test orchestration, resource management, and environment setup, reducing manual effort and accelerating CI/CD pipelines.

## What's Changed

Removed unnecessary dokkimi clean from cleanup step for better performance
