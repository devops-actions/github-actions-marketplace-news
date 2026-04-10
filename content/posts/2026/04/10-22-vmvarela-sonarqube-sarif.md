---
title: SonarQube to GitHub Security Tab (SARIF)
date: 2026-04-10 22:00:10 +00:00
tags:
  - vmvarela
  - GitHub Actions
draft: false
repo: https://github.com/vmvarela/sonarqube-sarif
marketplace: https://github.com/marketplace/actions/sonarqube-to-github-security-tab-sarif
version: v1.2.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/vmvarela/sonarqube-sarif** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sonarqube-to-github-security-tab-sarif) to find the latest changes.

## Action Summary

This GitHub Action integrates SonarQube code analysis results with GitHub by converting SonarQube issues into SARIF files, enabling their use in GitHub's Security tab, pull request annotations, and check run summaries. It automates the process of filtering issues to relevant files in pull requests, ensuring targeted feedback for reviewers, and provides a seamless way to upload SARIF data for branch security analysis. This bridges the gap between SonarQube and GitHub's developer workflows, making results accessible where developers work.

## What's Changed

## What's Changed

## 🚀 Features

- fix: handle SonarQube 10k issue limit with type partitioning and date bisection (#47) @vmvarela
- feat: add pre-flight config validation (connectivity, token, project key) (#41) @vmvarela
- feat: expose detailed processing metrics as action outputs (#40) @vmvarela
- feat: add exponential backoff retry for transient HTTP errors (#39) @vmvarela

## 🧰 Maintenance

- fix: handle SonarQube 10k issue limit with type partitioning and date bisection (#47) @vmvarela
- deps: bump axios from 1.13.6 to 1.14.0 in the production-dependencies group (#44) @[dependabot[bot]](https://github.com/apps/dependabot)
- deps: bump vite from 8.0.0 to 8.0.5 (#46) @[dependabot[bot]](https://github.com/apps/dependabot)
- deps: bump picomatch from 4.0.3 to 4.0.4 (#42) @[dependabot[bot]](https://github.com/apps/dependabot)
- feat: add pre-flight config validation (connectivity, token, project key) (#41) @vmvarela
- feat: expose detailed processing metrics as action outputs (#40) @vmvarela
- feat: add exponential backoff retry for transient HTTP errors (#39) @vmvarela
- deps: bump the dev-dependencies group with 4 updates (#38) @[dependabot[bot]](https://github.com/apps/dependabot)

## 📝 Documentation

- feat: add pre-flight config validation (connectivity, token, project key) (#41) @vmvarela

## ⬆️ Dependency Updates

- deps: bump axios from 1.13.6 to 1.14.0 in the production-dependencies group (#44) @[dependabot[bot]](https://github.com/apps/dependabot)
- deps: bump vite from 8.0.0 to 8.0.5 (#46) @[dependabot[bot]](https://github.com/apps/dependabot)
- deps: bump picomatch from 4.0.3 to 4.0.4 (#42) @[dependabot[bot]](https://github.com/apps/dependabot)
- deps: bump the dev-dependencies group with 4 updates (#38) @[dependabot[bot]](https://github.com/apps/dependabot)

**Full Changelog**: https://github.com/vmvarela/sonarqube-sarif/compare/v1.1.0...v1.2.0

