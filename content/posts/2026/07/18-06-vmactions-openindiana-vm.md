---
title: OpenIndiana-vm
date: 2026-07-18 06:39:29 +00:00
tags:
  - vmactions
  - GitHub Actions
draft: false
repo: https://github.com/vmactions/openindiana-vm
marketplace: https://github.com/marketplace/actions/openindiana-vm
version: v1.1.4
dependentsNumber: "61"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action, `vmactions/openindiana-vm`, automates CI testing on OpenIndiana systems. It allows users to run their CI workflows in an OpenIndiana virtual machine and is particularly useful for ensuring compatibility with 64-bit x86_64 architecture environments. The action supports various release versions of OpenIndiana, including fresh and build environments, and includes features such as environment variable forwarding, command execution, file synchronization, and directory mounting to facilitate seamless CI testing across different OSes.
---


Version updated for **https://github.com/vmactions/openindiana-vm** to version **v1.1.4**.

- This action is used across all versions by **61** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/openindiana-vm) to find the latest changes.

## Action Summary

This GitHub Action, `vmactions/openindiana-vm`, automates CI testing on OpenIndiana systems. It allows users to run their CI workflows in an OpenIndiana virtual machine and is particularly useful for ensuring compatibility with 64-bit x86_64 architecture environments. The action supports various release versions of OpenIndiana, including fresh and build environments, and includes features such as environment variable forwarding, command execution, file synchronization, and directory mounting to facilitate seamless CI testing across different OSes.

## What's Changed

The prepare step (installing packages etc.) normally runs on every build. With cache-after-prepare: true, the action shuts the VM down cleanly after prepare has finished, caches the prepared VM image, and boots the VM again before run. Later runs with the same prepare script restore the prepared image, skip prepare entirely, and start directly at run

https://github.com/vmactions/openindiana-vm#10-cache-the-vm-image-after-prepare

**Full Changelog**: https://github.com/vmactions/openindiana-vm/compare/v1...v1.1.4
