---
title: Compose DevOps Healthcheck
date: 2026-01-27 13:44:48 +00:00
tags:
  - ylazakovich
  - GitHub Actions
draft: false
repo: https://github.com/ylazakovich/compose-health-check-action
marketplace: https://github.com/marketplace/actions/compose-devops-healthcheck
version: v2.2.0
dependentsNumber: "1"
---


Version updated for **https://github.com/ylazakovich/compose-health-check-action** to version **v2.2.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-devops-healthcheck) to find the latest changes.

## Action Summary

The Compose Health Check Action is a GitHub Action designed to automate the validation of health checks for Docker Compose services within CI workflows. It ensures that services are healthy by running Docker Compose, waiting for defined health checks, and failing the workflow early if any services are unhealthy or broken. This action simplifies debugging and provides clear diagnostics, helping developers maintain reliable containerized applications.

## Release notes

## v2.2.0 (27.01.2026)

- When `docker compose up` fails but a container exits with non-zero, treat it as unhealthy and print health/log diagnostics.

**Full Changelog**: https://github.com/ylazakovich/compose-health-check-action/compare/v2.1.1...v2.2.0
