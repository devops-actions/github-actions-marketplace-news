---
title: NextBSD-vm
date: 2026-08-26 14:46:53 +00:00
tags:
  - vmactions
  - GitHub Actions
draft: false
repo: https://github.com/vmactions/nextbsd-vm
marketplace: https://github.com/marketplace/actions/nextbsd-vm
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action allows users to run CI in NextBSD, a Unix-like operating system. It automates tasks by providing an AI-ready tool that generates custom GitHub Actions workflows based on user descriptions. The action supports automatic selection of the correct OS, architecture, and packages, simplifying setup for developers needing to test their projects on NextBSD.
---


Version updated for **https://github.com/vmactions/nextbsd-vm** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nextbsd-vm) to find the latest changes.

## Action Summary

This GitHub Action allows users to run CI in NextBSD, a Unix-like operating system. It automates tasks by providing an AI-ready tool that generates custom GitHub Actions workflows based on user descriptions. The action supports automatic selection of the correct OS, architecture, and packages, simplifying setup for developers needing to test their projects on NextBSD.

## What's Changed

The runtime moves to anyvm v0.6.5 (from v0.6.0), keeping the whole fleet
on one version. This action's surface is unchanged -- same image, same
sync methods, same defaults. The bump carries one runtime change of
note: on hosts whose nested AMD virtualization corrupts AVX512 XSAVE
state, the CPU-feature mask now drops the whole AVX512 family instead of
only avx512f.

**Full Changelog**: https://github.com/vmactions/nextbsd-vm/compare/v1.0.0...v1.0.1

