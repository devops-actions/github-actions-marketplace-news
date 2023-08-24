---
title: semantic-versioning-maven
date: 2023-08-24 03:02:55 +00:00
tags:
  - RichardInnocent
  - GitHub Actions
draft: false
repo: RichardInnocent/semantic-versioning-maven
marketplace: https://github.com/marketplace/actions/semantic-versioning-maven
version: v0.1.0
dependentsNumber: 9
---


Version updated for **RichardInnocent/semantic-versioning-maven** to version **v0.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **9** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/semantic-versioning-maven) to find the latest changes.

## Release notes

- Specifying an access token is no longer required. If no access token is specified then the default permissions for the action are used.
- Specifying the fetch depth for the Git checkout is no longer required. A deep clone is now performed by the action.
- Fixed issue where the process was exiting prematurely if a commit wasn't semantic. This commit should be skipped but was causing the process to exit and stopped any additional commits from being processed.
- Stopped using deprecated `set-output` command to set GitHub Actions outputs.
