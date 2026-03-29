---
title: ML-CI Model Validation
date: 2026-03-29 21:50:52 +00:00
tags:
  - ml-ci-labs
  - GitHub Actions
draft: false
repo: https://github.com/ml-ci-labs/ml-ci-action
marketplace: https://github.com/marketplace/actions/ml-ci-model-validation
version: v0.4.1
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/ml-ci-labs/ml-ci-action** to version **v0.4.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ml-ci-model-validation) to find the latest changes.

## Action Summary

The **ML-CI Action** automates machine learning model validation and data quality checks within GitHub pull requests, helping detect model regressions, schema drift, and data issues before merging. It ensures robust CI by comparing metrics against baselines using thresholds or statistical tests, validating training data integrity, and generating model cards automatically. This action eliminates the need for external dependencies or platforms and directly reports results in pull requests via markdown or JSON artifacts.

## What's Changed

Patch release to finalize Marketplace publication and stabilize the Action UX.

- remove the version number from the PR comment footer so screenshots stay valid
- fix empty optional Action inputs so they correctly fall back to defaults
- emit workspace-relative artifact output paths for downstream workflow steps
- refresh the README PR comment screenshot
- update Marketplace metadata and branding in action.yml

