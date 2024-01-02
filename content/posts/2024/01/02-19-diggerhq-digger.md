---
title: run-digger
date: 2024-01-02 19:02:27 +00:00
tags:
  - diggerhq
  - GitHub Actions
draft: false
repo: diggerhq/digger
marketplace: https://github.com/marketplace/actions/run-digger
version: v0.3.9
dependentsNumber: "14"
---


Version updated for **diggerhq/digger** to version **v0.3.9**.
- This action is used across all versions by **14** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-digger) to find the latest changes.

## Release notes

* Introducing official docker image for digger backend (https://github.com/diggerhq/digger/pkgs/container/digger_backend)
* Migration to Atlas for gorm migrations, this will lead to more stable database changes for self-hosted (#982)

*Note:* for folks migrating backend from versions from previous version to v0.3.9: Due to moving to atlas our initial migration will cause your upgrade to break since it will try to apply the same migration twice after moving from gorm. In order to avoid this after upgrade you can specify `BASELINE_MIGRATION = 20231227132525` as an environment variable in order for the backend to skip the initial migration

