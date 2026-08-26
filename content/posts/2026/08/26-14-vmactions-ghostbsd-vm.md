---
title: GhostBSD-vm
date: 2026-08-26 14:51:47 +00:00
tags:
  - vmactions
  - GitHub Actions
draft: false
repo: https://github.com/vmactions/ghostbsd-vm
marketplace: https://github.com/marketplace/actions/ghostbsd-vm
version: v1.0.3
dependentsNumber: "28"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates running Continuous Integration (CI) tests on GhostBSD. It supports automatic selection of the appropriate action, release, and architecture based on the user's request. The action installs necessary dependencies and passes environment variables into the VM, allowing users to run specific commands or tests within the GhostBSD environment.
---


Version updated for **https://github.com/vmactions/ghostbsd-vm** to version **v1.0.3**.

- This action is used across all versions by **28** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghostbsd-vm) to find the latest changes.

## Action Summary

This GitHub Action automates running Continuous Integration (CI) tests on GhostBSD. It supports automatic selection of the appropriate action, release, and architecture based on the user's request. The action installs necessary dependencies and passes environment variables into the VM, allowing users to run specific commands or tests within the GhostBSD environment.

## What's Changed

## sync: tar

A new way to share the workspace: the tree is streamed in as a ustar
archive over the ssh connection the action already opens, and streamed
back the same way when the run finishes. Nothing is installed in the
guest and no filesystem support is needed on either side, unlike sshfs
and nfs. ghostbsd-builder v2.0.8 declares it for every release, and it
was verified on this guest before the declaration went in: 300 files
plus a 1 MB binary blob pushed, a file written inside the VM, the whole
tree pulled back and compared by content hash.

rsync remains the default.

## Under the hood

The image builder moves to ghostbsd-builder v2.0.8, two releases on: the
nested-WHPX boot wedge is fixed, the disk is cleaned before export, and
the builder now publishes releases.json, the machine-readable index this
action bakes its configuration from.

The runtime moves to anyvm v0.6.5, fifteen releases on from the v0.5.0
that v1.0.2 shipped. Two of its fixes reach every job: a failed folder
sync is now fatal instead of a warning that left the guest running
without the files it was about to use, and the workspace push no longer
carries the runner's own harness directories into the guest.

**Full Changelog**: https://github.com/vmactions/ghostbsd-vm/compare/v1.0.2...v1.0.3

