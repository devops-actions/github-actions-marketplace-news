---
title: Create secret in Kubernetes cluster
date: 2026-04-22 06:24:58 +00:00
tags:
  - Azure
  - GitHub Actions
draft: false
repo: https://github.com/Azure/k8s-create-secret
marketplace: https://github.com/marketplace/actions/create-secret-in-kubernetes-cluster
version: v6.0.0
dependentsNumber: "6,312"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/Azure/k8s-create-secret** to version **v6.0.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **6,312** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-secret-in-kubernetes-cluster) to find the latest changes.

## Action Summary

The **Kubernetes Create Secret** GitHub Action automates the creation and management of Kubernetes secrets, including generic secrets and Docker registry (image pull) secrets, within a Kubernetes cluster. It simplifies the process of securely provisioning sensitive data like credentials or configuration files by supporting both plaintext and base64-encoded formats and integrating seamlessly with workflows that set the Kubernetes cluster context. This action eliminates the need for manual `kubectl` commands, streamlining secret management in CI/CD pipelines.

## What's Changed

### Added

- [#172](https://github.com/Azure/k8s-create-secret/pull/172) Added logic for TLS secret type handling
- [#166](https://github.com/Azure/k8s-create-secret/pull/166) Add husky pre-commit hook

### Changed

- [#238](https://github.com/Azure/k8s-create-secret/pull/238) Migrate project to ESM with esbuild and vitest
- [#229](https://github.com/Azure/k8s-create-secret/pull/229) Update Node.js runtime from node20 to node24
- [#215](https://github.com/Azure/k8s-create-secret/pull/215) Use docker driver in minikube setup
- [#180](https://github.com/Azure/k8s-create-secret/pull/180) Update CODEOWNERS
- Bump npm dependencies: `@types/node`, `prettier`, `undici`, `@actions/http-client`, `handlebars`, `picomatch`, `minimatch`, `js-yaml`, `glob`, `tar-fs`, `form-data`, `jest` (#174, #175, #178, #179, #194, #201, #203, #205, #206, #209, #213, #223, #226, #231, #235, #236)
- Bump GitHub Actions: `github/codeql-action`, `actions/setup-node`, and other grouped action updates in `.github/workflows` (#163, #164, #169, #170, #182, #183, #184, #185, #186, #187, #188, #189, #190, #191, #197, #198, #199, #200, #204, #207, #208, #210, #211, #212, #214, #216, #217, #218, #219, #221, #224, #225, #227, #228, #233, #237)

### Fixed

- [#168](https://github.com/Azure/k8s-create-secret/pull/168) Fix for generic secret types
