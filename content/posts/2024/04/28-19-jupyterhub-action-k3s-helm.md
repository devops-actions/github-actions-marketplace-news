---
title: K3S with Calico and Helm
date: 2024-04-28 19:05:35 +00:00
tags:
  - jupyterhub
  - GitHub Actions
draft: false
repo: jupyterhub/action-k3s-helm
marketplace: https://github.com/marketplace/actions/k3s-with-calico-and-helm
version: v4.0.1
dependentsNumber: "278"
---


Version updated for **jupyterhub/action-k3s-helm** to version **v4.0.1**.
- This action is used across all versions by **278** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/k3s-with-calico-and-helm) to find the latest changes.

## Release notes

#### Bugs fixed

- Workaround calcio not declaring DirectoryOrCreate on hostPath volumes [#113](https://github.com/jupyterhub/action-k3s-helm/pull/113) ([@consideRatio](https://github.com/consideRatio))

#### Maintenance and upkeep improvements

- Reduce system pod startup timeout from 10m to 5m [#115](https://github.com/jupyterhub/action-k3s-helm/pull/115) ([@consideRatio](https://github.com/consideRatio))
- Update calico from 3.27.0 to 3.27.3 [#114](https://github.com/jupyterhub/action-k3s-helm/pull/114) ([@consideRatio](https://github.com/consideRatio))

#### Other merged PRs

See [full changelog](https://github.com/jupyterhub/action-k3s-helm/compare/v4.0.0...v4.0.1) for dependabot and pre-commit.ci updates.
