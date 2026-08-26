---
title: Tribblix-vm
date: 2026-08-26 14:37:58 +00:00
tags:
  - vmactions
  - GitHub Actions
draft: false
repo: https://github.com/vmactions/tribblix-vm
marketplace: https://github.com/marketplace/actions/tribblix-vm
version: v1.0.5
dependentsNumber: "29"
actionType: Node
nodeVersion: 24
actionSummary: |
  ### Summary:
  This GitHub Action automates running CI/CD pipelines on Tribblix, a lightweight Linux distribution. It provides AI-assisted workflow creation for AI-ready VMs, allowing users to define test cases without manually writing complex `test.yml` files. The action supports various releases and architectures and includes a step-by-step guide to set up and use the action effectively.
---


Version updated for **https://github.com/vmactions/tribblix-vm** to version **v1.0.5**.

- This action is used across all versions by **29** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tribblix-vm) to find the latest changes.

## Action Summary

### Summary:
This GitHub Action automates running CI/CD pipelines on Tribblix, a lightweight Linux distribution. It provides AI-assisted workflow creation for AI-ready VMs, allowing users to define test cases without manually writing complex `test.yml` files. The action supports various releases and architectures and includes a step-by-step guide to set up and use the action effectively.

## What's Changed

The runtime moves to anyvm v0.6.5 (from v0.6.4), keeping the whole fleet
on one version. This action's surface is unchanged -- same images, same
sync methods, same defaults. The bump carries one runtime change of
note: on hosts whose nested AMD virtualization corrupts AVX512 XSAVE
state, the CPU-feature mask now drops the whole AVX512 family instead of
only avx512f.

**Full Changelog**: https://github.com/vmactions/tribblix-vm/compare/v1.0.4...v1.0.5

