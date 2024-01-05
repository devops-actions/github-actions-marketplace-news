---
title: Blue/Green Beanstalk
date: 2024-01-05 03:24:02 +00:00
tags:
  - tmshkr
  - GitHub Actions
draft: false
repo: tmshkr/blue-green-beanstalk
marketplace: https://github.com/marketplace/actions/blue-green-beanstalk
version: v4.0.1
dependentsNumber: "1"
---


Version updated for **tmshkr/blue-green-beanstalk** to version **v4.0.1**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/blue-green-beanstalk) to find the latest changes.

## Release notes

* Improves logging output
* Filters environments in `updateTargetGroups` so that unhealthy and unready environments are not set as targets
* Reverts behavior of `terminate_unhealthy_environment`, `wait_for_environment`, and `wait_for_termination` inputs so that the action fails when the environment is unhealthy, unready, or terminating
