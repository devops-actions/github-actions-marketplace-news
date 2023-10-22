---
title: Yarn Lock Changes
date: 2023-10-22 19:05:22 +00:00
tags:
  - Simek
  - GitHub Actions
draft: false
repo: Simek/yarn-lock-changes
marketplace: https://github.com/marketplace/actions/yarn-lock-changes
version: v0.11.3
dependentsNumber: "1,359"
---


Version updated for **Simek/yarn-lock-changes** to version **v0.11.3**.
- This action is used across all versions by **1,359** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/yarn-lock-changes) to find the latest changes.

## Release notes

### Changes visible for end-users:
* fix error while parsing lock files with optional `name` key in entries (thanks to @nathanforce for the issue report and initial fix)

---

> [!NOTE]
> In the next major action release the support for Node 14 and 16 will be dropped because of the latest [`@actions/github` release](https://github.com/actions/toolkit/blob/main/packages/github/RELEASES.md#600) which drops the support for those engines due to Octokit packages update.
>
> If you are running the action using different runner than the default one, it might be a good time to make sure that your workflow uses at least Node 18. Otherwise, the future Node version switch should be seamless for you.
