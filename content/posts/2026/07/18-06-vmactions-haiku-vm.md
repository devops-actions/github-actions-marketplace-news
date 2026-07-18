---
title: Haiku-vm
date: 2026-07-18 06:42:02 +00:00
tags:
  - vmactions
  - GitHub Actions
draft: false
repo: https://github.com/vmactions/haiku-vm
marketplace: https://github.com/marketplace/actions/haiku-vm
version: v1.1.3
dependentsNumber: "52"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the setup of a CI environment on Haiku, providing features such as AI-based workflow creation, automatic selection of compatible releases and architectures, SSHFS, NFS, or SCP code synchronization, and NAT port forwarding between the host runner and the VM. It simplifies the process of running tests and building projects on Haiku by handling many common setup tasks automatically.
---


Version updated for **https://github.com/vmactions/haiku-vm** to version **v1.1.3**.

- This action is used across all versions by **52** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/haiku-vm) to find the latest changes.

## Action Summary

This GitHub Action automates the setup of a CI environment on Haiku, providing features such as AI-based workflow creation, automatic selection of compatible releases and architectures, SSHFS, NFS, or SCP code synchronization, and NAT port forwarding between the host runner and the VM. It simplifies the process of running tests and building projects on Haiku by handling many common setup tasks automatically.

## What's Changed

The prepare step (installing packages etc.) normally runs on every build. With cache-after-prepare: true, the action shuts the VM down cleanly after prepare has finished, caches the prepared VM image, and boots the VM again before run. Later runs with the same prepare script restore the prepared image, skip prepare entirely, and start directly at run

https://github.com/vmactions/haiku-vm#10-cache-the-vm-image-after-prepare

**Full Changelog**: https://github.com/vmactions/haiku-vm/compare/v1...v1.1.3
