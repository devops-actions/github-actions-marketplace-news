---
title: CloudReactor AWS ECS Deployer
date: 2024-02-08 19:09:11 +00:00
tags:
  - CloudReactor
  - GitHub Actions
draft: false
repo: CloudReactor/aws-ecs-cloudreactor-deployer
marketplace: https://github.com/marketplace/actions/cloudreactor-aws-ecs-deployer
version: v4.2.1
dependentsNumber: "4"
---


Version updated for **CloudReactor/aws-ecs-cloudreactor-deployer** to version **v4.2.1**.
- This action is used across all versions by **4** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cloudreactor-aws-ecs-deployer) to find the latest changes.

## Release notes

* Use CODEBUILD_SOURCE_VERSION as a fallback for CLOUDBUILD_RESOLVED_SOURCE_VERSION when setting version signature
*  Add option for deploy script to skip using git for version computation
* Sanitize Docker image tag
* Use AWS_REGION if set
*  Add ability to assume AWS role in driver script, other script improvements
