---
title: MidnightBSD-vm
date: 2026-07-18 06:40:48 +00:00
tags:
  - vmactions
  - GitHub Actions
draft: false
repo: https://github.com/vmactions/midnightbsd-vm
marketplace: https://github.com/marketplace/actions/midnightbsd-vm
version: v1.0.4
dependentsNumber: "34"
actionType: Node
nodeVersion: 24
actionSummary: |
  The GitHub Action `vmactions/midnightbsd-vm` is designed to run CI on MidnightBSD. It automates the setup and execution of tests on this popular BSD distribution by managing the environment, copying files, and running commands within a VM. The action supports various releases and architectures, including x86_64, and can be configured to use different synchronization methods like `rsync`, `sshfs`, or `nfs`. It also allows for passing environment variables and customizing the shell used during execution.
---


Version updated for **https://github.com/vmactions/midnightbsd-vm** to version **v1.0.4**.

- This action is used across all versions by **34** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/midnightbsd-vm) to find the latest changes.

## Action Summary

The GitHub Action `vmactions/midnightbsd-vm` is designed to run CI on MidnightBSD. It automates the setup and execution of tests on this popular BSD distribution by managing the environment, copying files, and running commands within a VM. The action supports various releases and architectures, including x86_64, and can be configured to use different synchronization methods like `rsync`, `sshfs`, or `nfs`. It also allows for passing environment variables and customizing the shell used during execution.

## What's Changed

The prepare step (installing packages etc.) normally runs on every build. With cache-after-prepare: true, the action shuts the VM down cleanly after prepare has finished, caches the prepared VM image, and boots the VM again before run. Later runs with the same prepare script restore the prepared image, skip prepare entirely, and start directly at run

https://github.com/vmactions/midnightbsd-vm#10-cache-the-vm-image-after-prepare


**Full Changelog**: https://github.com/vmactions/midnightbsd-vm/compare/v1...v1.0.4
