---
title: TimeTick Tests Runner
date: 2026-08-02 21:08:52 +00:00
tags:
  - TimeTickIO
  - GitHub Actions
draft: false
repo: https://github.com/TimeTickIO/timetick-ci
marketplace: https://github.com/marketplace/actions/timetick-tests-runner
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action automates OCPP tests using Timetick, a tool for verifying vehicle-to-grid (V2G) interoperability. It can run individual tests or test plans and automatically fail the pipeline if any tests fail. The action supports various options such as creating simulators, specifying existing simulators and hardware, and extracting results into outputs that can be used in subsequent steps or attached to merge requests for GitLab CI/CD pipelines.
---


Version updated for **https://github.com/TimeTickIO/timetick-ci** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/timetick-tests-runner) to find the latest changes.

## Action Summary

This GitHub Action automates OCPP tests using Timetick, a tool for verifying vehicle-to-grid (V2G) interoperability. It can run individual tests or test plans and automatically fail the pipeline if any tests fail. The action supports various options such as creating simulators, specifying existing simulators and hardware, and extracting results into outputs that can be used in subsequent steps or attached to merge requests for GitLab CI/CD pipelines.

## What's Changed

- docs: correct GitLab usage (badafe6)
- feat: add serial number configuration (b2a9067)
- docs: gh action template info (81855f9)
- init: v1 for github and gitlab (3b1b4d3)
