---
title: Download a Build Artifact
date: 2026-02-27 05:54:03 +00:00
tags:
  - actions
  - GitHub Actions
draft: false
repo: https://github.com/actions/download-artifact
marketplace: https://github.com/marketplace/actions/download-a-build-artifact
version: v8.0.0
dependentsNumber: "858,917"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/actions/download-artifact** to version **v8.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **858,917** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/download-a-build-artifact) to find the latest changes.

## Action Summary

The `@actions/download-artifact` GitHub Action is designed to automate the retrieval of artifacts generated in GitHub Actions workflows. It simplifies downloading single or multiple artifacts, supports filtering, decompressing, and managing artifacts from different workflow runs or repositories. By providing streamlined access to workflow artifacts, it enhances CI/CD pipeline efficiency and addresses tasks such as artifact management and integrity verification.

## Release notes

## v8 - What's new

### Direct downloads

To support direct uploads in `actions/upload-artifact`, the action will no longer attempt to unzip all downloaded files. Instead, the action checks the `Content-Type` header ahead of unzipping and skips non-zipped files. Callers wishing to download a zipped file as-is can also set the new `skip-decompress` parameter to `false`.

### Enforced checks (breaking)

A previous release introduced digest checks on the download. If a download hash didn't match the expected hash from the server, the action would log a warning. Callers can now configure the behavior on mismatch with the `digest-mismatch` parameter. To be secure by default, we are now defaulting the behavior to `error` which will fail the workflow run.

### ESM

To support new versions of the @actions/* packages, we've upgraded the package to ESM.

## What's Changed
* Don't attempt to un-zip non-zipped downloads by @danwkennedy in https://github.com/actions/download-artifact/pull/460
* Add a setting to specify what to do on hash mismatch and default it to `error` by @danwkennedy in https://github.com/actions/download-artifact/pull/461


**Full Changelog**: https://github.com/actions/download-artifact/compare/v7...v8.0.0
