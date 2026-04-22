---
title: Helm Kustomize Lint Action
date: 2026-04-22 21:24:50 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/helm-kustomize-lint-action
marketplace: https://github.com/marketplace/actions/helm-kustomize-lint-action
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/somaz94/helm-kustomize-lint-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/helm-kustomize-lint-action) to find the latest changes.

## Action Summary

The **helm-kustomize-lint-action** is a GitHub Action designed to automate comprehensive linting and validation of Helm charts in CI workflows. It performs tasks such as YAML linting (`yamllint`) of chart metadata, strict Helm linting for each values file, template rendering checks (`helm template --debug`), and optional schema validation of rendered manifests using `kubeconform`. This action eliminates the need for repetitive manual setups in Helm chart repositories, streamlining the process with a single, configurable step while supporting both simple and multi-environment chart structures.

## What's Changed

### CI/CD

- Add release, mirror, and changelog workflows (6dec88c)

### Features

- Implement helm-kustomize-lint-action (4b6b147)

### Miscellaneous

- Add baseline repo files and license (7848307)

