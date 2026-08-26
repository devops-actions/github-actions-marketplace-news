---
title: ReactOS-vm
date: 2026-08-26 14:41:44 +00:00
tags:
  - vmactions
  - GitHub Actions
draft: false
repo: https://github.com/vmactions/reactos-vm
marketplace: https://github.com/marketplace/actions/reactos-vm
version: v1.0.3
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The action provides a way to run CI workflows on ReactOS using AnyVM.org's virtual machines. It supports different releases and architectures, including i386 (x86 32-bit), and can handle remote command execution and file synchronization via tar streams over the telnet channel. However, it has some limitations with NFS support due to bugs in ReactOS.
---


Version updated for **https://github.com/vmactions/reactos-vm** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reactos-vm) to find the latest changes.

## Action Summary

The action provides a way to run CI workflows on ReactOS using AnyVM.org's virtual machines. It supports different releases and architectures, including i386 (x86 32-bit), and can handle remote command execution and file synchronization via tar streams over the telnet channel. However, it has some limitations with NFS support due to bugs in ReactOS.

## What's Changed

The runtime moves to anyvm v0.6.5 (from v0.6.4), keeping the whole fleet
on one version. This action's surface is unchanged -- same images, same
sync methods, same defaults. The bump carries one runtime change of
note: on hosts whose nested AMD virtualization corrupts AVX512 XSAVE
state, the CPU-feature mask now drops the whole AVX512 family instead of
only avx512f.

**Full Changelog**: https://github.com/vmactions/reactos-vm/compare/v1.0.2...v1.0.3

