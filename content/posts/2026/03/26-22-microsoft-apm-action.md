---
title: Setup APM
date: 2026-03-26 22:03:11 +00:00
tags:
  - microsoft
  - GitHub Actions
draft: false
repo: https://github.com/microsoft/apm-action
marketplace: https://github.com/marketplace/actions/setup-apm
version: v1.4.1
dependentsNumber: "9"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/microsoft/apm-action** to version **v1.4.1**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **9** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-apm) to find the latest changes.

## Action Summary

The APM Action for GitHub automates the installation and deployment of agent primitives (such as instructions, prompts, skills, and agents) using Microsoft's Agent Package Manager (APM) in CI/CD workflows. It simplifies tasks like dependency management, security scanning, and artifact packaging, enabling cross-job workflows and integrity verification without requiring extensive configuration. This action addresses challenges in consistent deployment, security compliance, and efficient bundling of agent packages across jobs and environments.

## Release notes

## What's Changed

**Bug fix:** Do not shadow caller's `GITHUB_TOKEN` with `GITHUB_APM_PAT` ([#21](https://github.com/microsoft/apm-action/pull/21))

When a caller provides `GITHUB_TOKEN` via step/job-level `env:` (e.g., a GitHub App token from gh-aw for cross-org private repo access), the action no longer injects the default `github.token` into `GITHUB_APM_PAT`. Since APM CLI's token precedence is `GITHUB_APM_PAT > GITHUB_TOKEN`, this was causing the wrong token to be used, resulting in "Repository not found" / "Authentication failed" errors.

Also treats empty-string `GITHUB_TOKEN` as not-provided, ensuring the input token is correctly forwarded in edge cases.

**Full Changelog**: https://github.com/microsoft/apm-action/compare/v1.4.0...v1.4.1


## What's Changed
* fix: do not shadow caller GITHUB_TOKEN with GITHUB_APM_PAT by @danielmeppiel in https://github.com/microsoft/apm-action/pull/21


**Full Changelog**: https://github.com/microsoft/apm-action/compare/v1.4.0...v1.4.1
