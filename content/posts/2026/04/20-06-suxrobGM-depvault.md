---
title: Setup DepVault CLI
date: 2026-04-20 06:25:39 +00:00
tags:
  - suxrobGM
  - GitHub Actions
draft: false
repo: https://github.com/suxrobGM/depvault
marketplace: https://github.com/marketplace/actions/setup-depvault-cli
version: cli/v1.5.6
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/suxrobGM/depvault** to version **cli/v1.5.6**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-depvault-cli) to find the latest changes.

## Action Summary

DepVault is a comprehensive web platform designed to automate dependency analysis, vulnerability detection, and secure management of environment variables and secret files. It scans dependencies across multiple language ecosystems, identifies security risks using OSV.dev, and provides an AES-256-GCM encrypted vault for storing and sharing secrets, enabling secure CI/CD workflows. Additionally, it offers tools for license compliance, secret sharing, and configuration management, helping teams enhance security, streamline workflows, and maintain compliance.

## What's Changed


- Verify the derived KEK on `depvault unlock` and pull/push flows — a wrong vault password now fails immediately instead of silently producing a junk KEK that could corrupt new SELF grants
- Detect vault-salt rotation and invalidate the cached KEK when the vault password was changed from another client, re-prompting for the new password
- Add unit test suite covering CLI crypto primitives (AES-256-GCM, PBKDF2, HKDF), vault state lifecycle, and cross-platform interop vectors


