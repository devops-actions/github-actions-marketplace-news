---
title: GhostBSD-vm
date: 2026-07-18 06:43:17 +00:00
tags:
  - vmactions
  - GitHub Actions
draft: false
repo: https://github.com/vmactions/ghostbsd-vm
marketplace: https://github.com/marketplace/actions/ghostbsd-vm
version: v1.0.2
dependentsNumber: "27"
actionType: Node
nodeVersion: 24
actionSummary: |
  The GitHub Action `vmactions/ghostbsd-vm` enables running CI in GhostBSD, a popular BSD distribution. It automates the process of setting up and managing virtual machines for testing or deployment tasks specific to GhostBSD. The action allows users to run commands and tests within a GhostBSD environment, with options to share files via rsync, sshfs, nfs, or scp, sync working directories, and more.
---


Version updated for **https://github.com/vmactions/ghostbsd-vm** to version **v1.0.2**.

- This action is used across all versions by **27** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghostbsd-vm) to find the latest changes.

## Action Summary

The GitHub Action `vmactions/ghostbsd-vm` enables running CI in GhostBSD, a popular BSD distribution. It automates the process of setting up and managing virtual machines for testing or deployment tasks specific to GhostBSD. The action allows users to run commands and tests within a GhostBSD environment, with options to share files via rsync, sshfs, nfs, or scp, sync working directories, and more.

## What's Changed

The prepare step (installing packages etc.) normally runs on every build. With cache-after-prepare: true, the action shuts the VM down cleanly after prepare has finished, caches the prepared VM image, and boots the VM again before run. Later runs with the same prepare script restore the prepared image, skip prepare entirely, and start directly at run

https://github.com/vmactions/ghostbsd-vm#10-cache-the-vm-image-after-prepare

**Full Changelog**: https://github.com/vmactions/ghostbsd-vm/compare/v1...v1.0.2
