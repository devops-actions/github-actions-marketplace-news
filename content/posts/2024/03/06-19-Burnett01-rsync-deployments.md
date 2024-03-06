---
title: Rsync Deployments Action
date: 2024-03-06 19:24:28 +00:00
tags:
  - Burnett01
  - GitHub Actions
draft: false
repo: Burnett01/rsync-deployments
marketplace: https://github.com/marketplace/actions/rsync-deployments-action
version: 7.0.0
dependentsNumber: "3,062"
---


Version updated for **Burnett01/rsync-deployments** to version **7.0.0**.
- This action is used across all versions by **3,062** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rsync-deployments-action) to find the latest changes.

## Release notes

## What's Changed

- [feat: Update base image to latest 1.4.4 (alpine 3.19.1)](https://github.com/Burnett01/rsync-deployments/commit/ee287eb1f090f838d05d64cf0e798b74dbc619fd)

https://github.com/JoshPiper/rsync-docker/commit/ba20622d48f9c6c153bf520408c17aaec887e817
https://github.com/JoshPiper/rsync-docker/pull/25
@JoshPiper 

- [Merge pull request](https://github.com/Burnett01/rsync-deployments/commit/a078b62820a5a09b7a4daebe3145bbc73cef8e54) https://github.com/Burnett01/rsync-deployments/pull/24 [from jasongill/patch-1](https://github.com/Burnett01/rsync-deployments/commit/a078b62820a5a09b7a4daebe3145bbc73cef8e54) 

Re-allow RSA host keys with SSH
- [feat: Make usage of legacy rsa hostkeys conditional](https://github.com/Burnett01/rsync-deployments/commit/9603fc818619574f10c02c47431eb0a7edafef9a) 

The usage of RSA host keys introduced with https://github.com/Burnett01/rsync-deployments/commit/c7baefdc23c4bb3b517a16ffa6ddda31763f0be8 
was adjusted to make it conditional/configurable and to keep
backward compatibility

Resolves #49

- [feat: configuarable legacy RSA hostkeys support](https://github.com/Burnett01/rsync-deployments/commit/008719532fb1adf12fd09a5f271e7a170a85cbe5) 

Ability to configure legacy rsa hostkeys support for
OpenSSH servers >= 8.8.
Related to https://github.com/Burnett01/rsync-deployments/pull/24 and  https://github.com/Burnett01/rsync-deployments/commit/9603fc818619574f10c02c47431eb0a7edafef9a

- [chore!: Versions 4.x EOL, 5.x DEPRECATED, 6.x MAINTENANCE](https://github.com/Burnett01/rsync-deployments/commit/b9a68ac619de1a77314c0296dcb1ef6348ea93cf) 

> All versions 4.x are now EOL and no longer maintained
> All versions 5.x are now DEPRECATED and will become EOL within Q2 2024
> All versions  6.x are now MAINTENANCE and will become DEPRECATED within Q4 2024

## New Contributors
* @jasongill made their first contribution in https://github.com/Burnett01/rsync-deployments/pull/24

**Full Changelog**: https://github.com/Burnett01/rsync-deployments/compare/6.0.0...7.0.0
