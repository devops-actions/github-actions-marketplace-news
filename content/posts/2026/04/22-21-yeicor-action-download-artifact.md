---
title: Download workflow artifact (patched by yeicor)
date: 2026-04-22 21:23:41 +00:00
tags:
  - yeicor
  - GitHub Actions
draft: false
repo: https://github.com/yeicor/action-download-artifact
marketplace: https://github.com/marketplace/actions/download-workflow-artifact-patched-by-yeicor
version: v1.0.1
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/yeicor/action-download-artifact** to version **v1.0.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/download-workflow-artifact-patched-by-yeicor) to find the latest changes.

## Action Summary

The **Download Workflow Artifact GitHub Action** enables users to download and extract artifacts uploaded by a previous workflow, even if the artifact originates from a different workflow, repository, or commit. This action addresses the limitation of the official `actions/download-artifact` by allowing artifact retrieval using flexible criteria such as workflow name, commit SHA, branch, PR, or run ID. It automates cross-workflow artifact sharing and provides extensive options for specifying and filtering artifact sources.

## What's Changed

## What's Changed
* fix: stream artifact downloads to disk to avoid OOM on large artifacts by @Copilot in https://github.com/yeicor/action-download-artifact/pull/1

## New Contributors
* @Copilot made their first contribution in https://github.com/yeicor/action-download-artifact/pull/1

**Full Changelog**: https://github.com/yeicor/action-download-artifact/compare/v1.0.0...v1.0.1
