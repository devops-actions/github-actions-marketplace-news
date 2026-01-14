---
title: MemBrowse - Firmware Memory Tracking
date: 2026-01-14 06:01:03 +00:00
tags:
  - membrowse
  - GitHub Actions
draft: false
repo: https://github.com/membrowse/membrowse-action
marketplace: https://github.com/marketplace/actions/membrowse-firmware-memory-tracking
version: v1.0.7
dependentsNumber: "2"
---


Version updated for **https://github.com/membrowse/membrowse-action** to version **v1.0.7**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/membrowse-firmware-memory-tracking) to find the latest changes.

## Action Summary

MemBrowse is a tool designed to analyze the memory footprint of embedded firmware by extracting detailed memory information from ELF files and linker scripts, offering symbol-level analysis and source file mapping for multiple architectures. It automates memory usage analysis in CI/CD workflows, enabling historical tracking, monitoring, and build gating when integrated with MemBrowse's cloud platform. Its key capabilities include architecture-agnostic analysis, memory region extraction, and seamless integration with GitHub Actions for pull request analysis and historical onboarding.

## Release notes

## What's Changed
* added ternary support to linker parsing
* added support for ABSOLUTE()
* change to directly call the api service

**Full Changelog**: https://github.com/membrowse/membrowse-action/compare/v1.0.6...v1.0.7
