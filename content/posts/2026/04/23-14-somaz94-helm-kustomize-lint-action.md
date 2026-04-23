---
title: Helm Kustomize Lint Action
date: 2026-04-23 14:05:50 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/helm-kustomize-lint-action
marketplace: https://github.com/marketplace/actions/helm-kustomize-lint-action
version: v1.1.0
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/somaz94/helm-kustomize-lint-action** to version **v1.1.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/helm-kustomize-lint-action) to find the latest changes.

## Action Summary

The **helm-kustomize-lint-action** is a GitHub Action designed to automate linting and validation tasks for Helm charts and optionally for Kustomize manifests. It simplifies workflows by providing end-to-end linting, rendering, and validation capabilities, including YAML linting, strict Helm linting, Helm template rendering, and optional schema validation via `kubeconform`. Additionally, it supports monorepos by detecting and processing only changed Helm charts, reducing manual effort and ensuring robust CI/CD pipelines for Kubernetes-related projects.

## What's Changed


### Bug Fixes

- Install ct chart_schema.yaml + pin helm 3.16.4 for changed-charts (b1ff453)
- Pip install yamale+yamllint for ct lint in changed-charts mode (333beeb)

### CI/CD

- Add changed-charts test and smoke jobs (5bf4509)

### Documentation

- Update changelog (6ff5ead)
- Update CONTRIBUTORS.md (d070e8c)

### Features

- Add changed-charts mode for Helm monorepos (b46fc32)

### Miscellaneous

- Add monorepo fixture for changed-charts mode (07be850)

**Full Changelog**: https://github.com/somaz94/helm-kustomize-lint-action/compare/v1.0.0...v1.1.0

