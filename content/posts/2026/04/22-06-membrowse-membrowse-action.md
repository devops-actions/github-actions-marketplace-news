---
title: Binary Size & Memory Footprint Tracking
date: 2026-04-22 06:23:56 +00:00
tags:
  - membrowse
  - GitHub Actions
draft: false
repo: https://github.com/membrowse/membrowse-action
marketplace: https://github.com/marketplace/actions/binary-size-memory-footprint-tracking
version: v1.2.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/membrowse/membrowse-action** to version **v1.2.2**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/binary-size-memory-footprint-tracking) to find the latest changes.

## Action Summary

MemBrowse is a GitHub Action designed to analyze the binary size and memory footprint of embedded firmware by extracting detailed memory information from ELF files and linker scripts. It automates symbol-level analysis with source file mapping, memory region extraction, and historical tracking by integrating with the MemBrowse platform for continuous monitoring, reporting, and CI gating. Key capabilities include PR memory analysis with utilization changes, symbol-level deltas, and customizable PR comments, as well as historical onboarding of previous builds for comprehensive memory tracking.

## What's Changed

## What's Changed
* cpp demangle local symbols
* support lma and vma addresses
* properly detect arc and toolchain
* fix formatting default pr commit message
