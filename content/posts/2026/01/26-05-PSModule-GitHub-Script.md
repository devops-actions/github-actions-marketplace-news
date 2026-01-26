---
title: GitHub-Script (by PSModule)
date: 2026-01-26 05:59:02 +00:00
tags:
  - PSModule
  - GitHub Actions
draft: false
repo: https://github.com/PSModule/GitHub-Script
marketplace: https://github.com/marketplace/actions/github-script-by-psmodule
version: v1.7.10
dependentsNumber: "23"
---


Version updated for **https://github.com/PSModule/GitHub-Script** to version **v1.7.10**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **23** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-script-by-psmodule) to find the latest changes.

## Action Summary

The GitHub-Script Action allows users to execute PowerShell scripts within GitHub Actions workflows using the GitHub PowerShell module. It automates tasks such as interacting with the GitHub API, managing repositories, and customizing workflows through PowerShell scripts. This action provides flexibility with features like inline or file-based scripts, authentication options, and control over script output and debugging.

## Release notes

# 🩹 [Patch]: Standardize project structure and rename release workflow (#81)

This PR standardizes the project structure and updates workflows to align with PSModule conventions.

## Changed

- Rename `Auto-Release.yml` workflow to `Release.yml` for consistency
- Update release action from `PSModule/Auto-Release@v1.9.5` to `PSModule/Release-GHRepository@v2`
- Rename `scripts/` folder to `src/` to follow standard project layout
- Update `action.yml` to reference scripts from new `src/` location
- Add linter workflow configuration

## Removed

- Remove unused `.jscpd.json` linter configuration file

## Summary

This PR brings the GitHub-Script action in line with PSModule's standardized project structure. The `scripts/` folder is renamed to `src/` for consistency across all actions, and the release workflow is updated to use the renamed `Release-GHRepository` action.
