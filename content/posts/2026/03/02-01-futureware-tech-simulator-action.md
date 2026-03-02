---
title: Launch iOS Simulator
date: 2026-03-02 01:58:52 +00:00
tags:
  - futureware-tech
  - GitHub Actions
draft: false
repo: https://github.com/futureware-tech/simulator-action
marketplace: https://github.com/marketplace/actions/launch-ios-simulator
version: v5
dependentsNumber: "747"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/futureware-tech/simulator-action** to version **v5**.
- This action is used across all versions by **747** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/launch-ios-simulator) to find the latest changes.

## Action Summary

This GitHub Action enables the automated launching of iOS, tvOS, and watchOS simulators in CI/CD workflows on both GitHub-hosted and self-hosted runners. It simplifies the process of testing applications by managing device profiles, OS versions, and simulator states, helping developers streamline testing and ensure consistent environments. Key features include device model selection, automatic booting, retries, and optional cleanup after job completion.

## Release notes

- Fix flaky boot issues by adding a retry parameter (#563).
- Print stdout/stderr even if the command fails (#562).
