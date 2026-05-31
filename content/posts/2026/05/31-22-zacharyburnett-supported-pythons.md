---
title: supported-pythons
date: 2026-05-31 22:15:18 +00:00
tags:
  - zacharyburnett
  - GitHub Actions
draft: false
repo: https://github.com/zacharyburnett/supported-pythons
marketplace: https://github.com/marketplace/actions/supported-pythons
version: 2.0.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/zacharyburnett/supported-pythons** to version **2.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supported-pythons) to find the latest changes.

## Action Summary

The `supported-pythons` GitHub Action identifies active (non-end-of-life) Python minor versions supported by a specified Python package, using the package's `pyproject.toml` file. It automates the process of determining compatible Python versions, allowing workflows to dynamically test or build projects across supported Python versions. Key outputs include a list of supported versions, as well as the oldest and latest supported versions, enabling streamlined CI/CD pipelines.

## What's Changed

## What's Changed
* remove reusable workflow as redundant by @zacharyburnett in https://github.com/zacharyburnett/supported-pythons/pull/5
* fix blank input and default to workflow repository and sha instead of assuming local clone by @zacharyburnett in https://github.com/zacharyburnett/supported-pythons/pull/4


**Full Changelog**: https://github.com/zacharyburnett/supported-pythons/compare/2.0.1...2.0.2
