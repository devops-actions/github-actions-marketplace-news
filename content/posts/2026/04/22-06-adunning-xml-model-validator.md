---
title: XML Model Validator
date: 2026-04-22 06:25:27 +00:00
tags:
  - adunning
  - GitHub Actions
draft: false
repo: https://github.com/adunning/xml-model-validator
marketplace: https://github.com/marketplace/actions/xml-model-validator
version: v2.2.1
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/adunning/xml-model-validator** to version **v2.2.1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/xml-model-validator) to find the latest changes.

## Action Summary

The **XML Model Validator** GitHub Action automates the validation of XML files using `xml-model` processing instructions, supporting Relax NG and Schematron standards. It provides inline annotations for validation errors, detailed step summaries, and structured outputs, enabling efficient feedback on pull requests and downstream automation. This action is ideal for repositories with complex XML workflows, such as technical publishing, scholarly editing, and journal XML, by streamlining schema validation and offering actionable insights directly within GitHub.

## What's Changed

This patch release ships an updated Schematron engine by bumping `schxslt2` from 1.10.1 to 1.10.3. There are no intentional CLI or GitHub Action interface changes in 2.2.1.

## Highlights

- Bumped `name.dmaus.schxslt:schxslt2` from `1.10.1` to `1.10.3`.

## Fixes

- Added the Gradle wrapper to the repository.
- Updated CI, release workflow, and documentation to use `./gradlew`.
- Removed the deprecated `overwrite-settings` input from the GitHub Action setup.
- Refined internal formatting and small CLI help/version-provider cleanups.
