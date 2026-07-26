---
title: Upload an artifact with wget
date: 2026-07-26 22:20:23 +00:00
tags:
  - xlii-chl
  - GitHub Actions
draft: false
repo: https://github.com/xlii-chl/upload-artifact-with-wget
marketplace: https://github.com/marketplace/actions/upload-an-artifact-with-wget
version: v4.0.5-github
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action `@actions/upload-artifact-with-wget` is a lightweight alternative to the official `actions/upload-artifact` action designed for self-hosted runners where all work was done in an Alpine container. It uploads actions artifacts from workflow runs, providing support for simple workflows and optimizing performance by using just the necessary executables (`zip` and `wget`). This action simplifies artifact upload tasks by reducing resource usage compared to the NodeJS version.
---


Version updated for **https://github.com/xlii-chl/upload-artifact-with-wget** to version **v4.0.5-github**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/upload-an-artifact-with-wget) to find the latest changes.

## Action Summary

The GitHub Action `@actions/upload-artifact-with-wget` is a lightweight alternative to the official `actions/upload-artifact` action designed for self-hosted runners where all work was done in an Alpine container. It uploads actions artifacts from workflow runs, providing support for simple workflows and optimizing performance by using just the necessary executables (`zip` and `wget`). This action simplifies artifact upload tasks by reducing resource usage compared to the NodeJS version.

## What's Changed

- Adaptations for Github (58dedc2)
- Merge tag 'v4.0.5' into v4-github (e09c788)
- readme: more complete job example (81169d5)
- readme: add URL for codeberg.org (7356b48)
- Rename test and display wget's version as a debug hint (44e4705)
- Typo (5e31a79)
- Merge tag 'v4.0.4' into v4-github (2244749)
- Simplifying artifact-url generation since Forgejo follows Github (fabd98e)
- Manual launch via workflow_dispatch + readme update (1922406)
- Merge tag 'v4.0.3' into v4-github (deb9a27)
