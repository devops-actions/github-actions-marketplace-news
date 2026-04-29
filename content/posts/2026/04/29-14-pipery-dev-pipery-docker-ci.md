---
title: Pipery Docker CI
date: 2026-04-29 14:40:54 +00:00
tags:
  - pipery-dev
  - GitHub Actions
draft: false
repo: https://github.com/pipery-dev/pipery-docker-ci
marketplace: https://github.com/marketplace/actions/pipery-docker-ci
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pipery-dev/pipery-docker-ci** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipery-docker-ci) to find the latest changes.

## Action Summary

The **Pipery Docker CI** GitHub Action provides a reusable and automated continuous integration pipeline for building, testing, and deploying Docker images. It streamlines processes such as linting, security scanning, image building, testing, versioning, packaging, and releasing to a container registry, with structured logging for enhanced observability via the Pipery platform. This action reduces the complexity of managing Docker CI workflows while offering full visibility into the pipeline's execution.

## What's Changed

## v1.0.0

Complete Docker CI pipeline: Hadolint lint, SAST, SCA, build, test, version, push image + SHA tag, reintegrate.

Every step runs under **psh** (Pipery Shell) for automatic structured JSONL logging.

### Usage

```yaml
uses: pipery-dev/pipery-docker-ci@v1
```

See the [README](https://github.com/pipery-dev/pipery-docker-ci#readme) for the full inputs reference.
