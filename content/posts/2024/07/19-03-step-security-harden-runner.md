---
title: Harden-Runner
date: 2024-07-19 03:20:36 +00:00
tags:
  - step-security
  - GitHub Actions
draft: false
repo: step-security/harden-runner
marketplace: https://github.com/marketplace/actions/harden-runner
version: v2.9.0
dependentsNumber: "3,710"
---


Version updated for **step-security/harden-runner** to version **v2.9.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **3,710** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/harden-runner) to find the latest changes.

## Release notes

## What's Changed
Release v2.9.0 by @h0x0er and @varunsh-coder in https://github.com/step-security/harden-runner/pull/435
This release includes:
- Enterprise Tier - Telemetry Upload Enhancement:
For the enterprise tier, this change helps overcome size constraints, allowing for more reliable telemetry uploads from the Harden-Runner agent to the StepSecurity backend API. No configuration change is needed to enable this.
- Harden-Runner Agent Authentication:
The Harden-Runner agent now uses a per-job key to authenticate to the StepSecurity backend API to submit telemetry. This change prevents the submission of telemetry data anonymously for a given job, improving the integrity of the data collection process. No configuration change is needed to enable this.
- README Update:
A Table of Contents has been added to the README file to improve navigation. This makes it easier for users to find the information they need quickly.
- Dependency Update:
Updated the `braces` npm package dependency to a non-vulnerable version. The vulnerability in `braces` did not affect the Harden Runner Action

**Full Changelog**: https://github.com/step-security/harden-runner/compare/v2...v2.9.0
