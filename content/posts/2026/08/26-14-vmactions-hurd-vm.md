---
title: Hurd-vm
date: 2026-08-26 14:49:23 +00:00
tags:
  - vmactions
  - GitHub Actions
draft: false
repo: https://github.com/vmactions/hurd-vm
marketplace: https://github.com/marketplace/actions/hurd-vm
version: v1.0.1
dependentsNumber: "22"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the process of running CI in Hurd, a Unix-like operating system with RISC-V architecture. It simplifies setting up and managing CI pipelines for Hurd by handling all the complex tasks such as installing dependencies, syncing source code, and executing commands within the Hurd environment. The action is designed to be AI-ready, allowing users to describe their needs in plain language and receive a ready-to-commit workflow file automatically.
---


Version updated for **https://github.com/vmactions/hurd-vm** to version **v1.0.1**.

- This action is used across all versions by **22** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hurd-vm) to find the latest changes.

## Action Summary

This GitHub Action automates the process of running CI in Hurd, a Unix-like operating system with RISC-V architecture. It simplifies setting up and managing CI pipelines for Hurd by handling all the complex tasks such as installing dependencies, syncing source code, and executing commands within the Hurd environment. The action is designed to be AI-ready, allowing users to describe their needs in plain language and receive a ready-to-commit workflow file automatically.

## What's Changed

## sync: tar

A new way to share the workspace: the tree is streamed in as a ustar
archive over the ssh connection the action already opens, and streamed
back the same way when the run finishes. Nothing is installed in the
guest and no filesystem support is needed on either side, unlike nfs.
hurd-builder v2.0.1 declares it for every release, and it was verified
on this guest before the declaration went in: 300 files plus a 1 MB
binary blob pushed, a file written inside the VM, the whole tree pulled
back and compared by content hash.

rsync remains the default.

## Under the hood

hurd-builder v2.0.1 is also the first hurd build to publish
releases.json, the machine-readable index this action bakes its
configuration from -- which is why the pre-tar method list survived
until now.

The runtime moves to anyvm v0.6.5, thirteen releases on from the v0.5.2
that v1.0.0 shipped. Two of its fixes reach every job: a failed folder
sync is now fatal instead of a warning that left the guest running
without the files it was about to use, and the workspace push no longer
carries the runner's own harness directories into the guest.

**Full Changelog**: https://github.com/vmactions/hurd-vm/compare/v1.0.0...v1.0.1

