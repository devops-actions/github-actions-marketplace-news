---
title: OpenTelemetry for GitHub Workflows, Jobs and Steps
date: 2026-08-20 22:45:07 +00:00
tags:
  - plengauer
  - GitHub Actions
draft: false
repo: https://github.com/plengauer/Thoth
marketplace: https://github.com/marketplace/actions/opentelemetry-for-github-workflows-jobs-and-steps
version: v5.61.1
dependentsNumber: "14"
actionType: Composite
actionSummary: |
  This GitHub Action automates the tracing, metrics, and logging of shell scripts and GitHub workflows using OpenTelemetry. It automatically propagates context via HTTP, instruments all available commands, injects into child scripts and executables, and logs from stderr and GitHub action log commands. The project is installable via Debian or RPM packages and offers workflow-level and job-level instrumentation for GitHub actions.
---


Version updated for **https://github.com/plengauer/Thoth** to version **v5.61.1**.

- This action is used across all versions by **14** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opentelemetry-for-github-workflows-jobs-and-steps) to find the latest changes.

## Action Summary

This GitHub Action automates the tracing, metrics, and logging of shell scripts and GitHub workflows using OpenTelemetry. It automatically propagates context via HTTP, instruments all available commands, injects into child scripts and executables, and logs from stderr and GitHub action log commands. The project is installable via Debian or RPM packages and offers workflow-level and job-level instrumentation for GitHub actions.

## What's Changed

## What's Changed
* fix: do not run the script's EXIT trap on exec paths (#4043) by @plengauer in https://github.com/plengauer/Thoth/pull/4072
* Automatic Version Bump by @plengauer in https://github.com/plengauer/Thoth/pull/4074


**Full Changelog**: https://github.com/plengauer/Thoth/compare/v5.61.0...v5.61.1
