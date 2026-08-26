---
title: Plan9-vm
date: 2026-08-26 14:43:00 +00:00
tags:
  - vmactions
  - GitHub Actions
draft: false
repo: https://github.com/vmactions/plan9-vm
marketplace: https://github.com/marketplace/actions/plan9-vm
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the execution of CI jobs on Plan9 systems using AnyVM. It allows developers to test their projects on Plan9 by running commands within a QEMU environment configured with anyvm support. The action supports both x86_64 and amd64 (9front) releases, providing a seamless way to integrate Plan9 testing into continuous integration workflows.
---


Version updated for **https://github.com/vmactions/plan9-vm** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/plan9-vm) to find the latest changes.

## Action Summary

This GitHub Action automates the execution of CI jobs on Plan9 systems using AnyVM. It allows developers to test their projects on Plan9 by running commands within a QEMU environment configured with anyvm support. The action supports both x86_64 and amd64 (9front) releases, providing a seamless way to integrate Plan9 testing into continuous integration workflows.

## What's Changed

The runtime moves to anyvm v0.6.5 (from v0.6.4), keeping the whole fleet
on one version. This action's surface is unchanged -- same images, same
sync methods, same defaults. The bump carries one runtime change of
note: on hosts whose nested AMD virtualization corrupts AVX512 XSAVE
state, the CPU-feature mask now drops the whole AVX512 family instead of
only avx512f.

**Full Changelog**: https://github.com/vmactions/plan9-vm/compare/v1.0.0...v1.0.1

