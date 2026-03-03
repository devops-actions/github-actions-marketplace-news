---
title: Socket Basics Security Scanner
date: 2026-03-03 05:50:32 +00:00
tags:
  - SocketDev
  - GitHub Actions
draft: false
repo: https://github.com/SocketDev/socket-basics
marketplace: https://github.com/marketplace/actions/socket-basics-security-scanner
version: 1.1.3
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/SocketDev/socket-basics** to version **1.1.3**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/socket-basics-security-scanner) to find the latest changes.

## Action Summary

Socket Basics is a unified security scanning tool that integrates multiple scanners, including SAST, secrets detection, container scanning, and dependency analysis, to provide comprehensive security insights. It automates the process of running scans, consolidating results into a standardized format, and delivering actionable feedback via pull request comments or notification channels. The tool simplifies security management with centralized policy configuration and reporting through the Socket Dashboard, making it suitable for both GitHub Actions and other CI/CD workflows.

## Release notes

## What's Changed
* Pin `opengrep` version, add Docker smoketest by @lelia in https://github.com/SocketDev/socket-basics/pull/41
* Add GitHub workflow for `pytest` by @lelia in https://github.com/SocketDev/socket-basics/pull/42
* Fix Slack and MS Teams notifiers not reading URL from dashboard config by @dc-larsen in https://github.com/SocketDev/socket-basics/pull/37
* Add structured findings to webhook payload by @dc-larsen in https://github.com/SocketDev/socket-basics/pull/38


**Full Changelog**: https://github.com/SocketDev/socket-basics/compare/1.1.2...1.1.3
