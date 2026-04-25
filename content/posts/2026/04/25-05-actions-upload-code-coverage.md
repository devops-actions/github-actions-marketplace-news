---
title: Upload Code Coverage
date: 2026-04-25 05:56:48 +00:00
tags:
  - actions
  - GitHub Actions
draft: false
repo: https://github.com/actions/upload-code-coverage
marketplace: https://github.com/actions/upload-code-coverage
version: v1.0.0
dependentsNumber: "?"
actionType: composite
---


Version updated for **https://github.com/actions/upload-code-coverage** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **composite** action.

Go to the [GitHub Marketplace](https://github.com/actions/upload-code-coverage) to find the latest changes.

## Action Summary

The **Upload Code Coverage** GitHub Action automates the process of uploading Cobertura XML coverage reports to GitHub's code coverage API. It simplifies tasks such as encoding, identifying the correct commit SHA, detecting pull request numbers, and interacting with the upload API. This action is designed to streamline code coverage reporting for pull requests and branch pushes, enhancing code quality tracking and visibility in CI workflows.

## What's Changed

- Update references for actions/upload-code-coverage (b969047)
- Merge pull request #3 from code-quality-org/tjgurwara99/action-change (dd8808a)
- Update action to only send ref when pr number is not included and vice versa (8ac3b82)
- Merge pull request #1 from code-quality-org/skip-merge-queue (5d8f3aa)
- Skip coverage upload for merge queue runs (d237c0c)
- Add caveats section noting fork PR limitation (4448730)
- Skip coverage upload for fork PRs (71ed76a)
- Note temporary repo location in README (ca786bc)
- Add helpful error for missing permissions (f0f93e2)
- Add composite action for code coverage upload (fb6ed62)
