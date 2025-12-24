---
title: Compose DevOps Healthcheck
date: 2025-12-24 21:10:06 +00:00
tags:
  - ylazakovich
  - GitHub Actions
draft: false
repo: https://github.com/ylazakovich/compose-health-check-action
marketplace: https://github.com/marketplace/actions/compose-devops-healthcheck
version: v1.1.0
dependentsNumber: "1"
---


Version updated for **https://github.com/ylazakovich/compose-health-check-action** to version **v1.1.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-devops-healthcheck) to find the latest changes.

## Action Summary

The **Compose Health Check Action** is a GitHub Action designed to automate the monitoring of Docker Compose services during CI workflows. It ensures that all specified services pass their health checks, failing the CI pipeline if any service is unhealthy, broken, or missing health checks. This action provides clear diagnostics, supports platform autodetection, and simplifies debugging by validating container health before continuing the workflow.

## Release notes

## v1.1.0 (23.12.2025)

- Added JSON report generation mechanism with configurable output format (text, json, or both) [#23](https://github.com/ylazakovich/compose-health-check-action/pull/23)
  - Introduced `report-format` input and `report_json_b64` output for machine-readable health check reports
  - Enhanced summary statistics with aggregated counters across all service states
- Implemented comprehensive test suite using BATS (Bash Automated Testing System) [#24](https://github.com/ylazakovich/compose-health-check-action/pull/24)
  - Added test coverage for healthy, unhealthy, compose-failed, and no-services scenarios
  - Replaced individual workflow-based tests with unified BATS test runner and JUnit reporting

**Full Changelog**: https://github.com/ylazakovich/compose-health-check-action/compare/v1.0.2...v1.1.0
