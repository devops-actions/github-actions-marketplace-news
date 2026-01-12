---
title: verify-jar-action
date: 2026-01-12 05:56:22 +00:00
tags:
  - pivovarit
  - GitHub Actions
draft: false
repo: https://github.com/pivovarit/verify-jar-action
marketplace: https://github.com/marketplace/actions/verify-jar-action
version: v1.1.0
dependentsNumber: "3"
---


Version updated for **https://github.com/pivovarit/verify-jar-action** to version **v1.1.0**.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verify-jar-action) to find the latest changes.

## Action Summary

The **verify-jar-action** GitHub Action scans JAR files in a specified directory to ensure that no `.class` files are compiled for a Java version higher than the allowed maximum. It automates compatibility checks for Java bytecode versions, helping to prevent runtime issues caused by version mismatches in Java applications. The action is particularly useful for maintaining compatibility in CI workflows by failing builds that violate the specified Java version constraints.

## Release notes

## What's Changed
* Add max-checks parameter to speed up validation by @pivovarit in https://github.com/pivovarit/verify-jar-action/pull/3

**Full Changelog**: https://github.com/pivovarit/verify-jar-action/compare/v1...v1.1.0
