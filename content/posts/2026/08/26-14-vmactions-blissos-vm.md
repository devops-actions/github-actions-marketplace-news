---
title: BlissOS-vm
date: 2026-08-26 14:53:02 +00:00
tags:
  - vmactions
  - GitHub Actions
draft: false
repo: https://github.com/vmactions/blissos-vm
marketplace: https://github.com/marketplace/actions/blissos-vm
version: v1.0.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The GitHub Action `vmactions/blissos-vm` automates running CI tasks on BlissOS virtual machines. It supports various BlissOS releases, including Android, x86_64 (amd64), and provides a user-friendly way to configure CI workflows by describing the desired actions in plain language using the vmactions-ci skill.
---


Version updated for **https://github.com/vmactions/blissos-vm** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/blissos-vm) to find the latest changes.

## Action Summary

The GitHub Action `vmactions/blissos-vm` automates running CI tasks on BlissOS virtual machines. It supports various BlissOS releases, including Android, x86_64 (amd64), and provides a user-friendly way to configure CI workflows by describing the desired actions in plain language using the vmactions-ci skill.

## What's Changed

## sync: tar

A second way to move the workspace. Android ships no rsync, no sshfs and
no NFS client, so scp was the only option until now; `sync: tar` streams
the tree as a ustar archive over the same connection and is the faster
of the two on a large tree. Nothing is installed in the guest. Verified
on this guest before the declaration went in: 300 files plus a 1 MB
binary blob pushed, a file written inside the VM, the whole tree pulled
back and compared by content hash.

scp remains the default.

## Under the hood

The image builder moves to blissos-builder v2.0.3 and the runtime to
anyvm v0.6.5, fifteen releases on from the v0.5.0 that v1.0.1 shipped.
The builder now mirrors its dropbear source tarball at a pinned version
-- an upstream download hiccup used to produce an image missing its ssh
server instead of a red build -- and publishes releases.json, the
machine-readable index this action bakes its configuration from.

Two runtime fixes reach every job: a failed folder sync is now fatal
instead of a warning that left the guest running without the files it
was about to use, and the workspace push no longer carries the runner's
own harness directories into the guest.

**Full Changelog**: https://github.com/vmactions/blissos-vm/compare/v1.0.1...v1.0.2

