---
title: kube-events Action
date: 2026-04-03 13:45:16 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/kube-events-action
marketplace: https://github.com/marketplace/actions/kube-events-action
version: v1.3.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/somaz94/kube-events-action** to version **v1.3.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kube-events-action) to find the latest changes.

## Action Summary

The `kube-events-action` GitHub Action automates the process of monitoring Kubernetes cluster events, particularly after deployments. It detects and reports warnings or specific event types within a defined time window, optionally posting a summarized report as a pull request comment. Key features include customizable event filtering, grouping, multiple output formats, and the ability to fail CI workflows if warning thresholds are exceeded, enabling streamlined post-deployment monitoring and issue tracking.

## What's Changed


### Bug Fixes

- Support comma-separated kind/type/reason filters, conditional sudo, POSIX regex (d8aa237)

### CI/CD

- Use generate_release_notes instead of body_path in release workflow (00ad5bf)
- Revert to body_path RELEASE.md in release workflow (2c2778e)

**Full Changelog**: https://github.com/somaz94/kube-events-action/compare/v1.3.0...v1.3.1

