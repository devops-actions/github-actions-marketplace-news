---
title: Upload a Build Artifact
date: 2026-02-27 05:53:59 +00:00
tags:
  - actions
  - GitHub Actions
draft: false
repo: https://github.com/actions/upload-artifact
marketplace: https://github.com/marketplace/actions/upload-a-build-artifact
version: v7.0.0
dependentsNumber: "1,919,640"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/actions/upload-artifact** to version **v7.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **1,919,640** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/upload-a-build-artifact) to find the latest changes.

## Action Summary

The `@actions/upload-artifact` GitHub Action automates the process of uploading files or directories, referred to as artifacts, from workflow runs to be stored and shared within a GitHub Actions workflow. It addresses the need for efficient artifact management, enabling faster uploads, immediate availability of artifacts in the UI and API, and improved performance in large or complex workflows. The action also supports features such as compression, retention policies, and the ability to handle multiple or wildcard file paths for flexible artifact handling.

## Release notes

## v7 What's new

### Direct Uploads

Adds support for uploading single files directly (unzipped). Callers can set the new `archive` parameter to `false` to skip zipping the file during upload. Right now, we only support single files. The action will fail if the glob passed resolves to multiple files. The `name` parameter is also ignored with this setting. Instead, the name of the artifact will be the name of the uploaded file.

### ESM

To support new versions of the `@actions/*` packages, we've upgraded the package to ESM.

## What's Changed
* Add proxy integration test by @Link- in https://github.com/actions/upload-artifact/pull/754
* Upgrade the module to ESM and bump dependencies by @danwkennedy in https://github.com/actions/upload-artifact/pull/762
* Support direct file uploads by @danwkennedy in https://github.com/actions/upload-artifact/pull/764

## New Contributors
* @Link- made their first contribution in https://github.com/actions/upload-artifact/pull/754

**Full Changelog**: https://github.com/actions/upload-artifact/compare/v6...v7.0.0
