---
title: Haiku-vm
date: 2026-08-27 17:21:23 +00:00
tags:
  - vmactions
  - GitHub Actions
draft: false
repo: https://github.com/vmactions/haiku-vm
marketplace: https://github.com/marketplace/actions/haiku-vm
version: v1.1.5
dependentsNumber: "65"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates running CI tests on Haiku, a lightweight Unix-like operating system. It supports different releases and architectures, including x86_64 and riscv64. The action uses AnyVM to build images of Haiku for these environments and automatically generates a GitHub Actions workflow based on user input. Users can specify environment variables and commands to run in the VM.
---


Version updated for **https://github.com/vmactions/haiku-vm** to version **v1.1.5**.

- This action is used across all versions by **65** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/haiku-vm) to find the latest changes.

## Action Summary

This GitHub Action automates running CI tests on Haiku, a lightweight Unix-like operating system. It supports different releases and architectures, including x86_64 and riscv64. The action uses AnyVM to build images of Haiku for these environments and automatically generates a GitHub Actions workflow based on user input. Users can specify environment variables and commands to run in the VM.

## What's Changed

Haiku R1/beta6, and three more sync methods

The default guest release is now R1/beta6. A workflow that does not set
a release input gets it from this version on.

Folder sync grows from two backends to five

    R1/beta6 offers rsync, scp, nfs, sshfs and tar. Before this, only
    rsync and scp were available. Choose one with

        sync: "nfs"

    All five pass in this action's own CI against a beta6 guest, along
    with the cache-after-prepare and custom-shell paths.

Why beta6 matters beyond the version number

    On R1/beta5, installing packages from inside the VM had stopped
    working. Upstream retired the HaikuPorts branch repository for
    that release -- its package index answers with an empty 2-byte
    file -- so pkgman had nothing to resolve against. The beta5 image
    kept working only because the builder baked its packages in from a
    pinned snapshot, and that covered just what the builder installed,
    not what a workflow asks for.

    On R1/beta6 the repository is live again, a 2.4 MB index, and the
    image is built the ordinary way with no pinned packages anywhere.
    A prepare step can run pkgman install again.

R1/beta5 is still selectable

        release: "r1beta5"

    It is unchanged -- rsync and scp only, from haiku-builder v2.0.2 --
    and it is no longer part of this action's test matrix.

Under the hood

    The beta6 image comes from haiku-builder v2.0.3, and the runtime
    moves to anyvm v0.6.6.

Full Changelog: https://github.com/vmactions/haiku-vm/compare/v1.1.4...v1.1.5
