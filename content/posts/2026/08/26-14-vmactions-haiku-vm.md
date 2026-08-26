---
title: Haiku-vm
date: 2026-08-26 14:50:35 +00:00
tags:
  - vmactions
  - GitHub Actions
draft: false
repo: https://github.com/vmactions/haiku-vm
marketplace: https://github.com/marketplace/actions/haiku-vm
version: v1.1.4
dependentsNumber: "63"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates running CI tasks on Haiku operating system. It allows developers to specify environment variables and commands to run in a Haiku VM using AnyVM, which provides AI capabilities to generate the workflow YAML file automatically based on simple descriptions. The action supports various OSes but defaults to Ubuntu for compatibility with common workflows.
---


Version updated for **https://github.com/vmactions/haiku-vm** to version **v1.1.4**.

- This action is used across all versions by **63** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/haiku-vm) to find the latest changes.

## Action Summary

This GitHub Action automates running CI tasks on Haiku operating system. It allows developers to specify environment variables and commands to run in a Haiku VM using AnyVM, which provides AI capabilities to generate the workflow YAML file automatically based on simple descriptions. The action supports various OSes but defaults to Ubuntu for compatibility with common workflows.

## What's Changed

## Under the hood

The runtime moves to anyvm v0.6.5, fifteen releases on from the v0.5.0
that v1.1.3 shipped -- most of that span is other guests' work. What
reaches this action: a failed folder sync is now fatal instead of a
warning that left the guest running without the files it was about to
use, and the workspace push no longer carries the runner's own harness
directories into the guest.

Images and sync methods are unchanged; this release adds no tar sync
because haiku-builder has not yet cut a release declaring it.

**Full Changelog**: https://github.com/vmactions/haiku-vm/compare/v1.1.3...v1.1.4

