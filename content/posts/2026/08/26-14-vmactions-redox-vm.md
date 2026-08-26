---
title: Redox-vm
date: 2026-08-26 14:40:29 +00:00
tags:
  - vmactions
  - GitHub Actions
draft: false
repo: https://github.com/vmactions/redox-vm
marketplace: https://github.com/marketplace/actions/redox-vm
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates running CI tasks on Redox by utilizing AnyVM, a platform that provides virtual machines with specific OSes and configurations. It supports multiple architectures, including x86_64, and includes a built-in telnet server to allow remote access. The action is designed to handle common use cases, such as compiling projects or running automated tests on Redox, and can be configured to pass environment variables and run custom commands within the virtual machine.
---


Version updated for **https://github.com/vmactions/redox-vm** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/redox-vm) to find the latest changes.

## Action Summary

This GitHub Action automates running CI tasks on Redox by utilizing AnyVM, a platform that provides virtual machines with specific OSes and configurations. It supports multiple architectures, including x86_64, and includes a built-in telnet server to allow remote access. The action is designed to handle common use cases, such as compiling projects or running automated tests on Redox, and can be configured to pass environment variables and run custom commands within the virtual machine.

## What's Changed

The runtime moves to anyvm v0.6.5 (from v0.6.4), keeping the whole fleet
on one version. This action's surface is unchanged -- same images, same
sync methods, same defaults. The bump carries one runtime change of
note: on hosts whose nested AMD virtualization corrupts AVX512 XSAVE
state, the CPU-feature mask now drops the whole AVX512 family instead of
only avx512f.

**Full Changelog**: https://github.com/vmactions/redox-vm/compare/v1.0.0...v1.0.1

