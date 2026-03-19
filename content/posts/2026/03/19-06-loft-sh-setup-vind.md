---
title: vind (vCluster in Docker) Action
date: 2026-03-19 06:00:25 +00:00
tags:
  - loft-sh
  - GitHub Actions
draft: false
repo: https://github.com/loft-sh/setup-vind
marketplace: https://github.com/marketplace/actions/vind-vcluster-in-docker-action
version: v1.3.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/loft-sh/setup-vind** to version **v1.3.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vind-vcluster-in-docker-action) to find the latest changes.

## Action Summary

The `setup-vind` GitHub Action provisions Kubernetes clusters using vCluster's Docker driver (vind), serving as a drop-in replacement for `setup-kind`. It automates the creation, configuration, and cleanup of lightweight, container-based Kubernetes clusters, streamlining workflows for tasks like testing and CI/CD pipelines. Key capabilities include support for specifying Kubernetes versions, multi-cluster setups, and optional configuration through custom YAML files.

## Release notes

## Fix: vCluster v0.33.0+ compatibility

vCluster v0.33.0 removed `controlPlane.distro.k3s` from the config schema, replacing it with `controlPlane.distro.k8s`. This broke the `kubernetes-version` input for anyone using vCluster v0.33.0+.

The action now detects the installed CLI version and uses the correct distro config path:
- **v0.33.0+**: `controlPlane.distro.k8s.image.tag`
- **< v0.33.0**: `controlPlane.distro.k3s.image.tag` (unchanged)

### Changes
* fix: use k8s distro path for vcluster v0.33.0+ (#28)
* chore: add marketplace branding to action.yml (#15)
* chore(deps): update actions/attest-build-provenance to v4 (#12)
* chore(deps): update actions/checkout to v6 (#13)

**Full Changelog**: https://github.com/loft-sh/setup-vind/compare/v1.2.0...v1.3.0
