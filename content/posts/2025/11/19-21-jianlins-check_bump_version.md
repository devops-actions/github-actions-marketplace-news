---
title: GitHub Release Version Bumper
date: 2025-11-19 21:01:30 +00:00
tags:
  - jianlins
  - GitHub Actions
draft: false
repo: https://github.com/jianlins/check_bump_version
marketplace: https://github.com/marketplace/actions/github-release-version-bumper
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/jianlins/check_bump_version** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-release-version-bumper) to find the latest changes.

## Release notes

# Release Note: Publish `check_bump_version` GitHub Action to Marketplace

## Overview
`check_bump_version` is now available on the GitHub Marketplace! This action automates version bump checks in your CI/CD workflows, helping maintain consistent and up-to-date project versioning.

## Features
- Checks if the project version has been updated
- Seamless integration with GitHub Actions workflows
- Customizable via `action.yml`
- Clear feedback and status reporting

## Usage
Add to your workflow:
```yaml
- name: Check Version Bump
  uses: jianlins/check_bump_version@v1
    with:
      bump-type: 'patch' # or 'minor'/'major'
      current-version: '0.0.1' # optional, set your desired version
```
For more details, check the [home repo](https://github.com/jianlins/check_bump_version)
