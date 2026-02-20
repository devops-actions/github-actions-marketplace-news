---
title: run-matlab-command (with optional timeout=>success)
date: 2026-02-20 21:30:25 +00:00
tags:
  - equipez
  - GitHub Actions
draft: false
repo: https://github.com/equipez/run-matlab-command
marketplace: https://github.com/marketplace/actions/run-matlab-command-with-optional-timeout-success
version: v2.0
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/equipez/run-matlab-command** to version **v2.0**.
- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-matlab-command-with-optional-timeout-success) to find the latest changes.

## Action Summary

The `equipez/run-matlab-command` GitHub Action allows users to execute MATLAB commands within a CI/CD pipeline on Linux and macOS runners. It supports long-running processes with an optional time limit feature, treating timeouts as successful executions, which is particularly useful for stress testing scenarios. The action automates the setup and execution of MATLAB commands, ensuring the necessary tools (e.g., `run-matlab-command`) are available and providing timeout handling for robust workflow management.

## Release notes

1. change `timeout` to `timelimit`; 2. `success-on-timeout` is renamed to `run-bash-command`.

**Full Changelog**: https://github.com/equipez/run-matlab-command/compare/v1...v2.0
