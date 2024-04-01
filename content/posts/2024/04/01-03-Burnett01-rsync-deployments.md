---
title: Rsync Deployments Action
date: 2024-04-01 03:30:30 +00:00
tags:
  - Burnett01
  - GitHub Actions
draft: false
repo: Burnett01/rsync-deployments
marketplace: https://github.com/marketplace/actions/rsync-deployments-action
version: 7.0.1
dependentsNumber: "3,171"
---


Version updated for **Burnett01/rsync-deployments** to version **7.0.1**.
- This action is used across all versions by **3,171** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rsync-deployments-action) to find the latest changes.

## Release notes

- Pin @JoshPiper [drinternet/rsync](https://github.com/JoshPiper/rsync-docker) image by SHA-256 hash rather than version.  (Immutability)
Added via #60 

The docker image of this action is now pinned to the specific SHA-256 hash of the version rather than just the version.
This means for the latest `drinternet/rsync:v1.4.4` the corresponding hash is `drinternet/rsync@sha256:15b2949838074bd93c49421c22380396a0cd53a322439e799ac87afcadcfe234`

Check for validation: https://hub.docker.com/layers/drinternet/rsync/v1.4.4/images/sha256-15b2949838074bd93c49421c22380396a0cd53a322439e799ac87afcadcfe234

With that, usage of this action is even more secure due to a consistent dependency chain of trust,
since changes accompanied by a docker image hash are immutable.

Thanks to @XComp 


