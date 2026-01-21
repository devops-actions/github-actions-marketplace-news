---
title: Compose DevOps Healthcheck
date: 2026-01-21 05:55:51 +00:00
tags:
  - ylazakovich
  - GitHub Actions
draft: false
repo: https://github.com/ylazakovich/compose-health-check-action
marketplace: https://github.com/marketplace/actions/compose-devops-healthcheck
version: v2.0.0
dependentsNumber: "1"
---


Version updated for **https://github.com/ylazakovich/compose-health-check-action** to version **v2.0.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-devops-healthcheck) to find the latest changes.

## Action Summary

The Compose Health Check Action automates the validation of Docker Compose services in CI workflows, ensuring all services are healthy before proceeding. It runs Docker Compose, waits for container health checks, and fails the workflow if any service is unhealthy or encounters errors, providing clear diagnostics for troubleshooting. This action streamlines the detection of service health issues, enhancing reliability and efficiency in CI pipelines.

## Release notes

## v2.0.0 (18.01.2026)

- Added `docker-command` input to run a custom `docker compose` command
- Default to checking all services when none are specified
- Hardened input parsing to avoid unsafe eval/word-splitting
- Expanded Bats coverage with v1/v2 flows and quoted-path scenarios


**Full Changelog**: https://github.com/ylazakovich/compose-health-check-action/compare/v1...v2.0.0
