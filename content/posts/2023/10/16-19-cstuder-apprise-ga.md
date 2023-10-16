---
title: Apprise Notification
date: 2023-10-16 19:00:52 +00:00
tags:
  - cstuder
  - GitHub Actions
draft: false
repo: cstuder/apprise-ga
marketplace: https://github.com/marketplace/actions/apprise-notification
version: v3.0.2
dependentsNumber: "13"
---


Version updated for **cstuder/apprise-ga** to version **v3.0.2**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **13** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/apprise-notification) to find the latest changes.

## Release notes

Unfortunately python 3.12 drops the module imp which is needed by j2cli.
Update j2cli to do not use the imp module seems to be non-trivial (see https://github.com/kolypto/j2cli/issues/80 for more details)

So the simplest fix would be to pin the python version to 3.11
