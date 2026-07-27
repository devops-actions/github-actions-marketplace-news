---
title: AI Changelog Updater
date: 2026-07-27 22:51:23 +00:00
tags:
  - vscheuber
  - GitHub Actions
draft: false
repo: https://github.com/vscheuber/ai-changelog-action
marketplace: https://github.com/marketplace/actions/ai-changelog-updater
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action AI Changelog Updater automates the process of updating the "Unreleased" section in a `CHANGELOG.md` file using an LLM. It gathers Git history, pull-request details, related repository activity, and existing content to create a user-focused changelog entry while preserving existing Unreleased content. When preparing full releases, it consolidates changelog notes from pre-releases and merges them into the final release notes. The action supports various LLM providers and model names, and users can customize the audience type and prompt for more tailored output.
---


Version updated for **https://github.com/vscheuber/ai-changelog-action** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-changelog-updater) to find the latest changes.

## Action Summary

The GitHub Action AI Changelog Updater automates the process of updating the "Unreleased" section in a `CHANGELOG.md` file using an LLM. It gathers Git history, pull-request details, related repository activity, and existing content to create a user-focused changelog entry while preserving existing Unreleased content. When preparing full releases, it consolidates changelog notes from pre-releases and merges them into the final release notes. The action supports various LLM providers and model names, and users can customize the audience type and prompt for more tailored output.

## What's Changed

### Added
- Introduced a self-release pipeline to automate the release process, including tests and changelog bootstrap. This enhancement streamlines the workflow for maintaining and releasing new versions. (#81a4029)

### Changed
- Replaced the self-release workflow with a release-type driven release pipeline, enhancing flexibility and control over the release process. (#1f3fb44)
- Updated `action.yml` description for improved clarity, making it easier for users to understand the purpose and usage of the action. (#a651689)

### Documentation
- Enhanced `README.md` with additional information to better guide users on how to utilize the tool effectively. (#81a4029)

