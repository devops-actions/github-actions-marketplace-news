---
title: OpenTelemetry for GitHub Workflows, Jobs and Steps
date: 2026-08-23 05:58:58 +00:00
tags:
  - plengauer
  - GitHub Actions
draft: false
repo: https://github.com/plengauer/Thoth
marketplace: https://github.com/marketplace/actions/opentelemetry-for-github-workflows-jobs-and-steps
version: v5.61.2
dependentsNumber: "14"
actionType: Composite
actionSummary: |
  This GitHub Action automates the collection of OpenTelemetry traces, metrics, and logs from shell scripts and GitHub workflows. It provides automatic context propagation through HTTP requests, auto-instrumentation of common commands, injection into child processes, executables with shebangs, and job-level instrumentation in GitHub actions. The project is designed to simplify observability for both development and CI/CD environments.
---


Version updated for **https://github.com/plengauer/Thoth** to version **v5.61.2**.

- This action is used across all versions by **14** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opentelemetry-for-github-workflows-jobs-and-steps) to find the latest changes.

## Action Summary

This GitHub Action automates the collection of OpenTelemetry traces, metrics, and logs from shell scripts and GitHub workflows. It provides automatic context propagation through HTTP requests, auto-instrumentation of common commands, injection into child processes, executables with shebangs, and job-level instrumentation in GitHub actions. The project is designed to simplify observability for both development and CI/CD environments.

## What's Changed

## What's Changed
* fix: detect all redirection-only `exec` forms in `_otel_inject_and_exec_by_location` (#4088) by @plengauer in https://github.com/plengauer/Thoth/pull/4090
* Automatic Version Bump by @plengauer in https://github.com/plengauer/Thoth/pull/4093


**Full Changelog**: https://github.com/plengauer/Thoth/compare/v5.61.1...v5.61.2
