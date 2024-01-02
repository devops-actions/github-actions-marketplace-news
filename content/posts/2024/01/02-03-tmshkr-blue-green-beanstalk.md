---
title: Blue/Green Beanstalk
date: 2024-01-02 03:23:14 +00:00
tags:
  - tmshkr
  - GitHub Actions
draft: false
repo: tmshkr/blue-green-beanstalk
marketplace: https://github.com/marketplace/actions/blue-green-beanstalk
version: v4.0.0
dependentsNumber: "1"
---


Version updated for **tmshkr/blue-green-beanstalk** to version **v4.0.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/blue-green-beanstalk) to find the latest changes.

## Release notes

* Improves shared load balancer support with the update_listener_rules option
* Action will now exit early with a non-error code when when the target environment is unhealthy and terminate_unhealthy_environment is set to false, the target environment is not ready and wait_for_environment is set to false, or the target environment is terminating and wait_for_termination is set to false
* The promote input has been renamed to swap_cnames
