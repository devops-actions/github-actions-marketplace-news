---
title: Gatling Enterprise Action
date: 2023-10-09 19:01:50 +00:00
tags:
  - gatling
  - GitHub Actions
draft: false
repo: gatling/enterprise-action
marketplace: https://github.com/marketplace/actions/gatling-enterprise-action
version: v1.1.0
dependentsNumber: "3"
---


Version updated for **gatling/enterprise-action** to version **v1.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gatling-enterprise-action) to find the latest changes.

## Release notes

Improve run summary logs to avoid spamming the action's output logs.

- By default, only log every 5 seconds during the first minute, then back off to logging every 60 seconds.
- Allow configuring this behavior, or disabling the run summary logs completely, with new action inputs. For instance, the default configuration is equivalent to:
  ```yaml
  inputs:
    - run_summary_enabled: true
    # 5 x 12 = 60 => log every 5 seconds during the first 60 seconds:
    - run_summary_initial_refresh_interval: 5
    - run_summary_initial_refresh_count: 12
    # after the initial behavior ends, switch to logging every 60 seconds:
    - run_summary_refresh_interval: 60
  ```
