---
title: JFrog Artifactory Upload/Download
date: 2026-04-10 14:12:51 +00:00
tags:
  - koolhandluke
  - GitHub Actions
draft: false
repo: https://github.com/koolhandluke/artifactory-helper
marketplace: https://github.com/marketplace/actions/jfrog-artifactory-upload-download
version: v1.0.4
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/koolhandluke/artifactory-helper** to version **v1.0.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jfrog-artifactory-upload-download) to find the latest changes.

## Action Summary

This GitHub Action facilitates the uploading and downloading of build artifacts to and from JFrog Artifactory with predictable paths and minimal configuration. It addresses the limitations of GitHub's ephemeral storage by enabling seamless artifact sharing across workflows, repositories, and extended retention periods. The action automates artifact management by deriving storage paths from GitHub context and supports flexible file handling for efficient CI/CD processes.

## What's Changed

- update desc (36e34f4)
- update descr (00d4b78)
- docs: update action name and add download to quick start (648e748)
- feat: write tagged version to job summary in tag workflow (3cd677c)
- rename workflow (dd58536)
- fix: skip PR label detection when tag.yml triggered via workflow_dispatch (8acf6e3)
- test: stub GITHUB_REPOSITORY/RUN_NUMBER env vars to fix CI test failure (3e8a29f)
- fix: warn and continue when build-add-git fails (no .git directory) (aa3faa0)
- feat: commit dist/ to main, remove release.yml (d73c93d)
- ci: add workflow_dispatch, fix shell injection, add concurrency to release (c7beb1a)
