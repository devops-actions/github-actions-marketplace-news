---
title: pi GitHub Action
date: 2026-05-04 22:21:01 +00:00
tags:
  - shaftoe
  - GitHub Actions
draft: false
repo: https://github.com/shaftoe/pi-coding-agent-action
marketplace: https://github.com/marketplace/actions/pi-github-action
version: v2.15.3
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/shaftoe/pi-coding-agent-action** to version **v2.15.3**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pi-github-action) to find the latest changes.

## Action Summary

The **Pi Coding Agent Action** integrates the Pi coding agent with CI/CD workflows on platforms like GitHub, Codeberg, and Forgejo. It automates tasks such as issue analysis, generating reports, creating or updating pull requests, and conducting automated code reviews. This action simplifies the integration of Pi into workflows by offering user-friendly features like log formatting, auto-replies, and efficient interaction with GitHub-compatible APIs, streamlining code review and issue resolution processes.

## What's Changed

## [2.15.3] - 2026-05-04

### Changed

- default to openai for examples
- split context.ts into cohesive modules and create tools subpackage (#170)
- update readme about optional token input

### Fixed

- catch Pi agent session errors and fail the workflow (#168)

[2.15.3]: https://github.com/shaftoe/pi-coding-agent-action/compare/v2.15.2...v2.15.3

