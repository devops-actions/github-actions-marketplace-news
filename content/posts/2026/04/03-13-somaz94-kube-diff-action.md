---
title: kube-diff Action
date: 2026-04-03 13:45:21 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/kube-diff-action
marketplace: https://github.com/marketplace/actions/kube-diff-action
version: v1.3.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/somaz94/kube-diff-action** to version **v1.3.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kube-diff-action) to find the latest changes.

## Action Summary

The `kube-diff-action` GitHub Action automates the comparison of local Kubernetes manifests (YAML files, Helm charts, or Kustomize overlays) with the live state of a Kubernetes cluster, identifying configuration drift such as changed, new, deleted, or unchanged resources. It simplifies drift detection workflows by providing customizable output formats and the ability to post diff results as pull request comments, enabling streamlined collaboration and proactive cluster management. Key capabilities include filtering by resource type, namespace, or labels, and support for advanced diff strategies like comparing against the `last-applied-configuration`.

## What's Changed


### Bug Fixes

- Support comma-separated name filter, conditional sudo, tighten comment regex (0aad92e)

### CI/CD

- Use generate_release_notes instead of body_path in release workflow (0f72a0a)
- Revert to body_path RELEASE.md in release workflow (b3f4e7f)

### Documentation

- Add Latest Tag, Top Language, Marketplace badges to README (03f488f)
- Add combined usage scenarios with kube-events-action (d3a5884)

**Full Changelog**: https://github.com/somaz94/kube-diff-action/compare/v1.3.1...v1.3.2

