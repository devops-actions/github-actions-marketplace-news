---
title: Deploy Docker to AWS (EC2)
date: 2025-12-29 21:07:40 +00:00
tags:
  - bitovi
  - GitHub Actions
draft: false
repo: https://github.com/bitovi/github-actions-deploy-docker-to-ec2
marketplace: https://github.com/marketplace/actions/deploy-docker-to-aws-ec2
version: v1.0.3
dependentsNumber: "222"
---


Version updated for **https://github.com/bitovi/github-actions-deploy-docker-to-ec2** to version **v1.0.3**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **222** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-docker-to-aws-ec2) to find the latest changes.

## Action Summary

This GitHub Action, `bitovi/github-actions-deploy-docker-to-ec2`, automates the deployment of Docker-based applications to AWS EC2 instances. It provisions the necessary AWS resources, installs Docker, and runs `docker compose up` to deploy the application. By streamlining the deployment process, it solves the complexity of manually setting up infrastructure and running Docker applications on EC2, while offering features like resource uniqueness and optional backup retention for efficient management.

## Release notes

## What's Changed
- Added docker_backup_retention, allowing cleanup of old backups. Set the number of backups to keep, defaults to unlimited.
- Fixed some bugs related to certificate handling. Specifically, dependencies and first-time root-cert creation.
- ⚠️ `aws_elb_access_log_bucket_name` was not being set correctly, hence it was set to a fixed value, ignoring input.
- Added ALB with WAF option - Including priorities for rules and the possibility to add your own.

**Full Changelog**: https://github.com/bitovi/github-actions-deploy-docker-to-ec2/compare/v1.0.2...v1.0.3
