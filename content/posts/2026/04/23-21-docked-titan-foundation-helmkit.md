---
title: HelmKit Root
date: 2026-04-23 21:44:01 +00:00
tags:
  - docked-titan-foundation
  - GitHub Actions
draft: false
repo: https://github.com/docked-titan-foundation/helmkit
marketplace: https://github.com/marketplace/actions/helmkit-root
version: v1.4.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/docked-titan-foundation/helmkit** to version **v1.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/helmkit-root) to find the latest changes.

## Action Summary

Helmkit is a lightweight Docker image and reusable GitHub Action designed to streamline Kubernetes Helm and Helmfile operations in CI/CD pipelines or local development environments. It simplifies the management of Helm releases, encrypted secrets, and Kubernetes resources by bundling tools like Helm, Helmfile, kubectl, Helm Diff, Helm Secrets, and SOPS into a single image. This action automates tasks such as declarative configuration of Helm charts, secrets management, and Kubernetes CLI operations, enhancing efficiency and consistency in deployment workflows.

## What's Changed

# [1.4.0](https://github.com/docked-titan-foundation/helmkit/compare/v1.3.0...v1.4.0) (2026-04-19)


### Bug Fixes

* **ci:** add SLSA build provenance attestation for container images ([cd6f9bb](https://github.com/docked-titan-foundation/helmkit/commit/cd6f9bb16b4fd7ec39f04e3ed3f6c90acf0bc5d0))
* **dependencies:** bump alpine from `2510918` to `5b10f43` ([210838a](https://github.com/docked-titan-foundation/helmkit/commit/210838a54f3ae89a0959692d466097655f4ff4c8))
* **semantic-release:** Add actions correctly to the release and update the versions correctly with the script ([c47aa9a](https://github.com/docked-titan-foundation/helmkit/commit/c47aa9a181996bccc0d25b654920e8cd265e5d4f))


### Features

* **actions:** Add general action in the root directory and delete the old actions folder to clean up the project. ([cf12dc4](https://github.com/docked-titan-foundation/helmkit/commit/cf12dc466ab3996dd182e4831dd33dc3cfffcb6b))
* create attestation automation for docker images ([ef10fe3](https://github.com/docked-titan-foundation/helmkit/commit/ef10fe39abd13fae579180b47a2555d894414e9e))

