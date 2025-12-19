---
title: Safer Runner Action
date: 2025-12-19 21:09:24 +00:00
tags:
  - portswigger-tim
  - GitHub Actions
draft: false
repo: https://github.com/portswigger-tim/safer-runner-action
marketplace: https://github.com/marketplace/actions/safer-runner-action
version: v1.2.2
dependentsNumber: "2"
---


Version updated for **https://github.com/portswigger-tim/safer-runner-action** to version **v1.2.2**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/safer-runner-action) to find the latest changes.

## Release notes

## Changes

- Silently drop ICMP destination-unreachable packets to DNS servers to eliminate noise from network logs and reports
- These kernel-generated responses are not security-relevant and were cluttering the network summary

## What's Fixed

- ICMP Type 3 Code 3 (Port Unreachable) messages to DNS servers no longer appear in network logs
- Network connection tables now show only security-relevant traffic
- Cleaner, more actionable security reports

## Full Changelog

**Commits:**
- b2208f6 Update tests for ICMP destination-unreachable DROP behavior
- c1ad053 Silently drop ICMP destination-unreachable to DNS servers
