---
title: Setup APM
date: 2026-03-19 06:00:05 +00:00
tags:
  - microsoft
  - GitHub Actions
draft: false
repo: https://github.com/microsoft/apm-action
marketplace: https://github.com/marketplace/actions/setup-apm
version: v1.3.4
dependentsNumber: "7"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/microsoft/apm-action** to version **v1.3.4**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **7** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-apm) to find the latest changes.

## Action Summary

The **APM Action** is a GitHub Action that automates the installation of the APM (Agent Package Manager) CLI and the deployment of agent primitives such as instructions, prompts, skills, and agents within CI/CD workflows. It simplifies dependency management, security scanning, and artifact packaging by supporting tasks like bundle creation, integrity verification, and cross-job artifact sharing. This action streamlines the integration of APM into workflows with minimal configuration, enabling efficient and secure management of agent-related resources.

## Release notes

### Fixed

- Preserve caller's `GITHUB_TOKEN` when already set in environment (#16). v1.3.3 would overwrite a PAT set via job-level `env:` with the less-privileged default `github.token`. Now uses `??=` to only set the token when not already present.

## What's Changed
* fix: preserve caller's GITHUB_TOKEN when already set in environment by @danielmeppiel in https://github.com/microsoft/apm-action/pull/16


**Full Changelog**: https://github.com/microsoft/apm-action/compare/v1.3.3...v1.3.4
