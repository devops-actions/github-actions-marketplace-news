---
title: Blue/Green Beanstalk
date: 2023-12-08 03:22:25 +00:00
tags:
  - tmshkr
  - GitHub Actions
draft: false
repo: tmshkr/blue-green-beanstalk
marketplace: https://github.com/marketplace/actions/blue-green-beanstalk
version: v3
dependentsNumber: "1"
---


Version updated for **tmshkr/blue-green-beanstalk** to version **v3**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/blue-green-beanstalk) to find the latest changes.

## Release notes

* Adds new `wait_for_deployment` and `wait_for_termination` inputs for greater control of when the action should wait
* Adds `prep` input, which is helpful for preparing the environment before deploying in a later step
* Changes the default value of `deploy` to be `false`, so that it must be set to `true` in order to deploy
* Adds `OptionSettings` and `TemplateName` inputs to the deploy function, so that configuration changes can be made without creating a new environment
