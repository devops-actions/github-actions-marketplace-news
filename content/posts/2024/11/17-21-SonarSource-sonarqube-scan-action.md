---
title: Official SonarQube Scan
date: 2024-11-17 21:01:02 +00:00
tags:
  - SonarSource
  - GitHub Actions
draft: false
repo: SonarSource/sonarqube-scan-action
marketplace: https://github.com/marketplace/actions/official-sonarqube-scan
version: v4.0.0
dependentsNumber: "12,932"
---


Version updated for **SonarSource/sonarqube-scan-action** to version **v4.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **12,932** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/official-sonarqube-scan) to find the latest changes.

## Release notes

## What's Changed
* SQSCANGHA-46 Replace the Docker action by a composite action by @henryju and @antonioaversa in https://github.com/SonarSource/sonarqube-scan-action/pull/145

This new major version removes Docker, moving to a [composite action](https://docs.github.com/en/actions/sharing-automations/creating-actions/creating-a-composite-action).
This has multiple benefits:
- you can now use our GitHub action with Java and Dart project, which previously didn’t support it due to Docker isolation
- your run won’t fail anymore in peak workload scenarios due to the Docker image hitting the rate limit on DockerHub
- the scan won’t need to run the scan as a root user, as recommended by GitHub for operations happening in a Docker container
- you will be able to run the action as part of your workflow on any Operating System

We expect no issues for the vast majority of users, and we encourage you to move to the new version.
You can read more about this new release [here](https://community.sonarsource.com/t/the-upcoming-release-of-github-action-for-sonarqube-v-4-0-0-remove-docker/130180).

**Full Changelog**: https://github.com/SonarSource/sonarqube-scan-action/compare/v3.1.0...v4.0.0
