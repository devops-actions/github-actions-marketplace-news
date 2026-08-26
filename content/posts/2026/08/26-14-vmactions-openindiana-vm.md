---
title: OpenIndiana-vm
date: 2026-08-26 14:44:16 +00:00
tags:
  - vmactions
  - GitHub Actions
draft: false
repo: https://github.com/vmactions/openindiana-vm
marketplace: https://github.com/marketplace/actions/openindiana-vm
version: v1.1.6
dependentsNumber: "69"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates running CI builds on OpenIndiana by leveraging AnyVM.org's infrastructure. It supports multiple releases and arches, including x86_64 and aarch64. The action allows users to define custom environments and commands to run within the VM, simplifying the process of setting up CI pipelines for projects that require specific OS configurations.
---


Version updated for **https://github.com/vmactions/openindiana-vm** to version **v1.1.6**.

- This action is used across all versions by **69** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/openindiana-vm) to find the latest changes.

## Action Summary

This GitHub Action automates running CI builds on OpenIndiana by leveraging AnyVM.org's infrastructure. It supports multiple releases and arches, including x86_64 and aarch64. The action allows users to define custom environments and commands to run within the VM, simplifying the process of setting up CI pipelines for projects that require specific OS configurations.

## What's Changed

## sync: tar

A new way to share the workspace: the tree is streamed in as a ustar
archive over the ssh connection the action already opens, and streamed
back the same way when the run finishes. Nothing is installed in the
guest and no filesystem support is needed on either side, unlike sshfs
and nfs. openindiana-builder v2.1.2 declares it for every release, and
it was verified on this guest before the declaration went in: 300 files
plus a 1 MB binary blob pushed, a file written inside the VM, the whole
tree pulled back and compared by content hash.

rsync remains the default.

## Under the hood

openindiana-builder v2.1.2 is also the first openindiana build to
publish releases.json, the machine-readable index this action bakes its
configuration from -- which is why the pre-tar method list survived
until now.

The runtime moves to anyvm v0.6.5, twelve releases on from the v0.5.3
that v1.1.5 shipped. Two of its fixes reach every job: a failed folder
sync is now fatal instead of a warning that left the guest running
without the files it was about to use, and the workspace push no longer
carries the runner's own harness directories into the guest.

**Full Changelog**: https://github.com/vmactions/openindiana-vm/compare/v1.1.5...v1.1.6

