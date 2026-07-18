---
title: Quick OCP
date: 2026-07-18 06:57:50 +00:00
tags:
  - palmsoftware
  - GitHub Actions
draft: false
repo: https://github.com/palmsoftware/quick-ocp
marketplace: https://github.com/marketplace/actions/quick-ocp
version: v1.0.0
dependentsNumber: "14"
actionType: Composite
actionSummary: |
  **Summary:**
  
  This GitHub Action uses OpenShift Local to quickly deploy an OCP (OpenShift Container Platform) cluster on a GitHub Actions runner. It supports specific versions and configurations, including memory allocation, disk size, and operator readiness checks. The action also includes connectivity requirements and options for preloading images into the cluster registry.
---


Version updated for **https://github.com/palmsoftware/quick-ocp** to version **v1.0.0**.

- This action is used across all versions by **14** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/quick-ocp) to find the latest changes.

## Action Summary

**Summary:**

This GitHub Action uses OpenShift Local to quickly deploy an OCP (OpenShift Container Platform) cluster on a GitHub Actions runner. It supports specific versions and configurations, including memory allocation, disk size, and operator readiness checks. The action also includes connectivity requirements and options for preloading images into the cluster registry.

## What's Changed

## What's Changed
* fix: add set -e to 3 scripts missing it by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/94
* fix: align version validation regex to 4.18+ by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/95
* feat: add setup-duration output for deployment timing by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/96
* feat: add kubeconfig-path output by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/97
* feat: add configurable operator wait timeout by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/98
* feat: validate numeric inputs before CRC configuration by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/99
* feat: add bundle cache hit/miss output by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/100
* feat: expand connectivity check to include GitHub API by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/101
* feat: add shellcheck to Makefile and CI, fix all findings by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/102
* feat: add nightly tests for cluster-monitoring and preload-images by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/103
* feat: add proxy configuration support by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/104
* fix: add diagnostic output on operator wait timeout by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/105
* fix: add diagnostic context on CRC start final failure by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/106
* feat: add log grouping for verbose action steps by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/107
* fix: improve nightly test reliability with better retry logic and diagnostics by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/108
* fix: prevent broken pipe from bypassing CRC start retry logic by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/109
* security: pin GitHub Actions to commit SHAs by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/110
* security: add SHA256 checksum verification for CRC download by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/111
* fix: authenticate GitHub API calls to avoid rate limiting by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/112
* perf: consolidate duplicate package installation by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/113
* docs: document enableClusterMonitoring resource impact by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/114
* docs: add preloadImages usage example to README by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/115
* docs: add troubleshooting section to README by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/116
* Prepare for v1.0.0 release by @sebrandon1 in https://github.com/palmsoftware/quick-ocp/pull/117


**Full Changelog**: https://github.com/palmsoftware/quick-ocp/compare/v0...v1.0.0
