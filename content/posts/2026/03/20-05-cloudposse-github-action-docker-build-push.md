---
title: Docker build and push
date: 2026-03-20 05:51:09 +00:00
tags:
  - cloudposse
  - GitHub Actions
draft: false
repo: https://github.com/cloudposse/github-action-docker-build-push
marketplace: https://github.com/marketplace/actions/docker-build-and-push
version: v3.0.0
dependentsNumber: "111"
actionType: Composite
---


Version updated for **https://github.com/cloudposse/github-action-docker-build-push** to version **v3.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **111** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docker-build-and-push) to find the latest changes.

## Action Summary

This GitHub Action automates the process of building Docker images and pushing them to a specified registry, such as Docker Hub or Amazon ECR. It simplifies container image management by integrating build caching, multi-platform support, and authentication into CI/CD workflows. This action is ideal for teams looking to streamline Docker image creation and deployment as part of their software delivery pipeline.

## Release notes

<details>
  <summary>Enhance Docker image summary with structured inspect output @goruha (#98)</summary>
## what
- Replace raw JSON metadata dump in step summary with a rich, structured markdown summary
- Add new `summary` input (default `true`) to control step summary generation independently from `inspect`
- Add new `inspect` output exposing the full `docker inspect` JSON
- Change `metadata` output to use `docker/build-push-action` metadata directly instead of a separate shell step
- Remove the old `Get Metadata` step entirely
- Disable `inspect` in test workflows (`test-docker-build.yml`, `test-docker-build-multi-platform.yml`)
- Control `DOCKER_BUILD_SUMMARY` env var based on `inspect` and `summary` inputs

## why
- The previous raw JSON summary was hard to read in GitHub Actions job summaries
- The new format surfaces key image details at a glance: size, architecture, OS, license, tag, digest, revision, source, runtime config, env vars, labels, and layers — each in collapsible sections
- Separating `summary` from `inspect` gives users finer control over what gets generated

## references
- https://github.com/docker/build-push-action
</details>

