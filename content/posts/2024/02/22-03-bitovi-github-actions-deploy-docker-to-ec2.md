---
title: Deploy Docker to AWS (EC2)
date: 2024-02-22 03:19:58 +00:00
tags:
  - bitovi
  - GitHub Actions
draft: false
repo: bitovi/github-actions-deploy-docker-to-ec2
marketplace: https://github.com/marketplace/actions/deploy-docker-to-aws-ec2
version: v1.0.1
dependentsNumber: "143"
---


Version updated for **bitovi/github-actions-deploy-docker-to-ec2** to version **v1.0.1**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **143** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-docker-to-aws-ec2) to find the latest changes.

## Release notes

## What's Changed
* enhance traffic visibility by @mickmcgrath13 in https://github.com/bitovi/github-actions-deploy-docker-to-ec2/pull/147
* Commons upgrade by @LeoDiazL in https://github.com/bitovi/github-actions-deploy-docker-to-ec2/pull/149

## In particular, this release contains:
- Improved EFS module to support creation and import of EFS volumes, adding more options
- Added more outputs, and exposed them in a new README section
- Some VPC fixes. Added option for NAT gateways.
- ELB logs now expires after 90 days (default)
- Fixes in the aws_resource_identifier name handling. (Was failing if manually set and was longer than the super-short id)
- Better tf_state bucket validation. Now we check to create a file and delete it.
- Added a new footer with Bitovi contact info.
- Encryption added to RDS
- Cleanup and small fixes here and there.

**Full Changelog**: https://github.com/bitovi/github-actions-deploy-docker-to-ec2/compare/v1.0.0...v1.0.1
