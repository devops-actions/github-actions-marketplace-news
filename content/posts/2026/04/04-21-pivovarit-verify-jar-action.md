---
title: verify-jar-action
date: 2026-04-04 21:40:34 +00:00
tags:
  - pivovarit
  - GitHub Actions
draft: false
repo: https://github.com/pivovarit/verify-jar-action
marketplace: https://github.com/marketplace/actions/verify-jar-action
version: v1.4.0
dependentsNumber: "8"
actionType: Composite
---


Version updated for **https://github.com/pivovarit/verify-jar-action** to version **v1.4.0**.

- This action is used across all versions by **8** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verify-jar-action) to find the latest changes.

## Action Summary

The `verify-jar-action` GitHub Action automates the process of scanning JAR files in a specified directory to ensure that all `.class` files comply with a defined maximum Java version or bytecode version. It helps prevent compatibility issues by failing the build if any class exceeds the allowed version, with an option for report-only mode to audit violations without interrupting the workflow. Key features include detailed per-JAR reports, configurable scanning limits, and support for GitHub Step Summaries.

## What's Changed

## What's Changed
* skip javadoc, sources, and test-sources JARs from scanning by @pivovarit in https://github.com/pivovarit/verify-jar-action/pull/12
* add detailed per-JAR failure report with all violations to Step Summary by @pivovarit in https://github.com/pivovarit/verify-jar-action/pull/13
* report-only mode by @pivovarit in https://github.com/pivovarit/verify-jar-action/pull/14


**Full Changelog**: https://github.com/pivovarit/verify-jar-action/compare/v1.3.0...v1.4.0
