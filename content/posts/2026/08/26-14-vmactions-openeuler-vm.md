---
title: OpenEuler-vm
date: 2026-08-26 14:45:39 +00:00
tags:
  - vmactions
  - GitHub Actions
draft: false
repo: https://github.com/vmactions/openeuler-vm
marketplace: https://github.com/marketplace/actions/openeuler-vm
version: v1.0.1
dependentsNumber: "22"
actionType: Node
nodeVersion: 24
actionSummary: |
  This action allows users to run their GitHub CI in OpenEuler by providing a pre-configured virtual machine environment with various package managers and utilities. It supports multiple architectures, including x86_64, aarch64, riscv64, and loongarch64. Users can specify the desired release and architecture using action parameters, and the workflow uses AnyVM.org to create custom VM images for these configurations. This eliminates the need for manual configuration and simplifies the process of setting up CI environments tailored to different operating systems.
---


Version updated for **https://github.com/vmactions/openeuler-vm** to version **v1.0.1**.

- This action is used across all versions by **22** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/openeuler-vm) to find the latest changes.

## Action Summary

This action allows users to run their GitHub CI in OpenEuler by providing a pre-configured virtual machine environment with various package managers and utilities. It supports multiple architectures, including x86_64, aarch64, riscv64, and loongarch64. Users can specify the desired release and architecture using action parameters, and the workflow uses AnyVM.org to create custom VM images for these configurations. This eliminates the need for manual configuration and simplifies the process of setting up CI environments tailored to different operating systems.

## What's Changed

## sync: tar

A new way to share the workspace, available on every architecture
including riscv64 and loongarch64: the tree is streamed in as a ustar
archive over the ssh connection the action already opens, and streamed
back the same way when the run finishes. Nothing is installed in the
guest and no filesystem support is needed on either side, unlike sshfs
and nfs. openeuler-builder v2.0.2 declares it for every release, and it
was verified on this guest before the declaration went in: 300 files
plus a 1 MB binary blob pushed, a file written inside the VM, the whole
tree pulled back and compared by content hash.

rsync remains the default.

## Under the hood

The runtime moves to anyvm v0.6.5, twelve releases on from the v0.5.3
that v1.0.0 shipped. Two of its fixes reach every job: a failed folder
sync is now fatal instead of a warning that left the guest running
without the files it was about to use, and the workspace push no longer
carries the runner's own harness directories into the guest.

**Full Changelog**: https://github.com/vmactions/openeuler-vm/compare/v1.0.0...v1.0.1

