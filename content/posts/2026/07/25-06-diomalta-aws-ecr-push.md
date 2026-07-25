---
title: diomalta/aws-ecr-push
date: 2026-07-25 06:59:00 +00:00
tags:
  - diomalta
  - GitHub Actions
draft: false
repo: https://github.com/diomalta/aws-ecr-push
marketplace: https://github.com/marketplace/actions/diomalta-aws-ecr-push
version: v1.1.4
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  This action automates the process of building, tagging, and pushing a Docker image to an Amazon Elastic Container Registry (ECR) repository. It solves the problem of managing images in ECR by providing a reusable workflow for developers to deploy their containerized applications efficiently. The key capabilities include setting up authentication credentials, specifying the ECR repository details, and allowing optional customization of tags and architecture.
---


Version updated for **https://github.com/diomalta/aws-ecr-push** to version **v1.1.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/diomalta-aws-ecr-push) to find the latest changes.

## Action Summary

This action automates the process of building, tagging, and pushing a Docker image to an Amazon Elastic Container Registry (ECR) repository. It solves the problem of managing images in ECR by providing a reusable workflow for developers to deploy their containerized applications efficiently. The key capabilities include setting up authentication credentials, specifying the ECR repository details, and allowing optional customization of tags and architecture.

## What's Changed

## Security

Upgrades **libexpat 2.6.2 → 2.8.1** in the action image (#3) — thanks @carlossilva-cubos.

The `docker:25` base layer already shipped 2.6.2, which satisfied the `python3` ← `aws-cli` dependency, so `apk add --no-cache` never upgraded it on its own; an explicit version constraint was required.

Verified: builds on `linux/amd64` and `arm64`, runtime dependencies (`aws`, `docker`, `openssl`, `git`) resolve, and `tests/push_test.sh` passes.

## Known follow-up

`docker:25` is Alpine 3.20.2, [EOL since 2026-04-01](https://alpinelinux.org/releases/) — 2.8.1 is the ceiling on that branch, and `libcrypto3`, `libcurl` and `ca-certificates-bundle` remain on 3.20-era versions. Bumping the base to `docker:28` (Alpine 3.22, supported to 2027-05) is the next step.

**Full Changelog**: https://github.com/diomalta/aws-ecr-push/compare/v1.1.3...v1.1.4

