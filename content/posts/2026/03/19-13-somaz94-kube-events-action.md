---
title: kube-events Action
date: 2026-03-19 13:50:46 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/kube-events-action
marketplace: https://github.com/marketplace/actions/kube-events-action
version: v1.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/somaz94/kube-events-action** to version **v1.3.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kube-events-action) to find the latest changes.

## Action Summary

The **kube-events-action** is a GitHub Action designed to monitor and analyze Kubernetes cluster events, particularly after deployments. It automates the detection and reporting of events such as warnings and errors, with capabilities to filter events by criteria (e.g., namespace, kind, reason), group them, and generate reports in various formats. The action simplifies post-deployment monitoring, allows integration with CI workflows, and can automatically post event summaries as pull request comments or fail workflows based on configurable thresholds.

## Release notes


### CI/CD

- Add group-by tests to CI and smoke test workflows (efb209b)

### Documentation

- Add Latest Tag, Top Language, Marketplace badges to README (bf86bde)
- Add combined usage scenarios with kube-diff-action (e82c575)
- Add group-by input documentation and usage examples (029ccaf)

### Features

- Add group-by input to group events by resource, namespace, kind, or reason (4059cc5)

**Full Changelog**: https://github.com/somaz94/kube-events-action/compare/v1.1.1...v1.3.0

