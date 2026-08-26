---
title: MidnightBSD-vm
date: 2026-08-26 14:48:08 +00:00
tags:
  - vmactions
  - GitHub Actions
draft: false
repo: https://github.com/vmactions/midnightbsd-vm
marketplace: https://github.com/marketplace/actions/midnightbsd-vm
version: v1.0.6
dependentsNumber: "34"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates running Continuous Integration (CI) tests on MidnightBSD. It allows users to easily run their test cases in a virtual environment based on MidnightBSD, addressing the need for CI testing across different operating systems. The action supports various releases and provides a simple interface for passing environment variables and commands to execute within the VM.
---


Version updated for **https://github.com/vmactions/midnightbsd-vm** to version **v1.0.6**.

- This action is used across all versions by **34** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/midnightbsd-vm) to find the latest changes.

## Action Summary

This GitHub Action automates running Continuous Integration (CI) tests on MidnightBSD. It allows users to easily run their test cases in a virtual environment based on MidnightBSD, addressing the need for CI testing across different operating systems. The action supports various releases and provides a simple interface for passing environment variables and commands to execute within the VM.

## What's Changed

## sync: tar

A new way to share the workspace: the tree is streamed in as a ustar
archive over the ssh connection the action already opens, and streamed
back the same way when the run finishes. Nothing is installed in the
guest and no filesystem support is needed on either side, unlike sshfs
and nfs. midnightbsd-builder v2.0.7 declares it for every release, and
it was verified on this guest before the declaration went in: 300 files
plus a 1 MB binary blob pushed, a file written inside the VM, the whole
tree pulled back and compared by content hash.

rsync remains the default.

## Under the hood

The runtime moves to anyvm v0.6.5, ten releases on from the v0.5.5 that
v1.0.5 shipped. Two of its fixes reach every job: a failed folder sync
is now fatal instead of a warning that left the guest running without
the files it was about to use, and the workspace push no longer carries
the runner's own harness directories into the guest.

**Full Changelog**: https://github.com/vmactions/midnightbsd-vm/compare/v1.0.5...v1.0.6

