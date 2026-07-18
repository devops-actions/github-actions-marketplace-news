---
title: BlissOS-vm
date: 2026-07-18 06:44:33 +00:00
tags:
  - vmactions
  - GitHub Actions
draft: false
repo: https://github.com/vmactions/blissos-vm
marketplace: https://github.com/marketplace/actions/blissos-vm
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the setup and execution of continuous integration (CI) workflows on BlissOS, a high-performance Android device OS. It simplifies the process of building and testing applications on BlissOS by handling the complex configuration and setup required to run CI in BlissOS environments. The action supports multiple releases and architectures and can be used with different sync methods to share code between the host and VM.
---


Version updated for **https://github.com/vmactions/blissos-vm** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/blissos-vm) to find the latest changes.

## Action Summary

This GitHub Action automates the setup and execution of continuous integration (CI) workflows on BlissOS, a high-performance Android device OS. It simplifies the process of building and testing applications on BlissOS by handling the complex configuration and setup required to run CI in BlissOS environments. The action supports multiple releases and architectures and can be used with different sync methods to share code between the host and VM.

## What's Changed

The prepare step (installing packages etc.) normally runs on every build. With cache-after-prepare: true, the action shuts the VM down cleanly after prepare has finished, caches the prepared VM image, and boots the VM again before run. Later runs with the same prepare script restore the prepared image, skip prepare entirely, and start directly at run

https://github.com/vmactions/blissos-vm#10-cache-the-vm-image-after-prepare

**Full Changelog**: https://github.com/vmactions/blissos-vm/compare/v1...v1.0.1
