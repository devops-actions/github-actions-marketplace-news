---
title: Build Watermark
date: 2026-08-14 06:00:17 +00:00
tags:
  - svaraborut
  - GitHub Actions
draft: false
repo: https://github.com/svaraborut/watermark
marketplace: https://github.com/marketplace/actions/build-watermark
version: v2
dependentsNumber: "3"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action automatically generates professional CI/CD watermarks for your projects, enhancing traceability and versioning by embedding build information directly into deployment assets. It allows users to configure customizable watermark formats, including automatic versioning based on dependencies or manual input, which helps in identifying builds quickly during troubleshooting.
---


Version updated for **https://github.com/svaraborut/watermark** to version **v2**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-watermark) to find the latest changes.

## Action Summary

This GitHub Action automatically generates professional CI/CD watermarks for your projects, enhancing traceability and versioning by embedding build information directly into deployment assets. It allows users to configure customizable watermark formats, including automatic versioning based on dependencies or manual input, which helps in identifying builds quickly during troubleshooting.

## What's Changed

v2 - Template Values as Outputs
We are excited to announce the release of Watermark GitHub Action v2. This release builds on the watermark generation engine with direct access to every template value as its own output, plus new filename-safe variants for branches and tags.

Key features include:

- Individual outputs for every keyword: Every value used to build your watermark (REF, BRANCH, SHA, SHA7, VERSION, DATE, and more) is now exposed as its own action output, so you can use them directly without parsing a custom format.
- BRANCH_FILE and BRANCH_PREFIX: Get the branch name in a filename-safe format, or just the portion before the first slash, ideal for grouping builds by branch naming convention (e.g. feat/my-feature) and creating safe preview deployments of individual branches. 
- TAG_FILE: A filename-safe version of the triggering tag, ready to use in artifact or file names.

This release makes it easier to consume watermark data throughout your pipeline, beyond just the final formatted string, giving you more flexibility when naming build artifacts, deployments, and release assets.
