---
title: nix init
date: 2026-07-25 06:39:18 +00:00
tags:
  - spotdemo4
  - GitHub Actions
draft: false
repo: https://github.com/spotdemo4/nix-init
marketplace: https://github.com/marketplace/actions/nix-init
version: v1.61.0
dependentsNumber: "4"
actionType: Composite
actionSummary: |
  The nix-init action automates the initialization of Nix-based repositories by handling common tasks such as checking out a repository, setting up a Git user, creating an Nix environment, and configuring caching. It provides options for optional steps like creating a GitHub App token, installing Nix using `cachix/install-nix-action`, and using a custom shell from a flake. The action can run in under 1 minute and supports self-hosted/Gitea/Forgejo runners.
---


Version updated for **https://github.com/spotdemo4/nix-init** to version **v1.61.0**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nix-init) to find the latest changes.

## Action Summary

The nix-init action automates the initialization of Nix-based repositories by handling common tasks such as checking out a repository, setting up a Git user, creating an Nix environment, and configuring caching. It provides options for optional steps like creating a GitHub App token, installing Nix using `cachix/install-nix-action`, and using a custom shell from a flake. The action can run in under 1 minute and supports self-hosted/Gitea/Forgejo runners.

## What's Changed

* feat(action): add nix-develop node action (3d384d7f45fadecad561e8ecd6a8f2edbd6cf5fc)
* fix: use correct hash (8372b3720ae334bd2eeb38b5e2812ef96125264d)
* fix(nix-develop): harden action inputs (67473019a42c8eb6523f64e7b7b866065d98b725)
* fix(action): load development shell through node action (c3672d5aef98aa336b341a6202219a31ee9f8b1a)
* bump: v1.60.1 -> v1.61.0 (7b3c73a036788c813cef96f63cd32e622ba616f0)

