---
title: Organetic Tobi Validator
date: 2026-04-21 22:01:09 +00:00
tags:
  - OrganeticSphere
  - GitHub Actions
draft: false
repo: https://github.com/OrganeticSphere/tobi-validator
marketplace: https://github.com/marketplace/actions/organetic-tobi-validator
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/OrganeticSphere/tobi-validator** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/organetic-tobi-validator) to find the latest changes.

## Action Summary

The **Tobi Validator** GitHub Action serves as a public wrapper for the Stage 1 release of Organetic's AI Verification Engine. It automates the validation of files and workflows using two primary modes: `canon` for canonical structure validation and `golden` for conformance checks against predefined fixtures, enabling deterministic diagnostics and verification processes. This action streamlines integration into GitHub workflows by providing a controlled evaluation-token-based onboarding process and essential tools for diagnostics, support, and adoption.

## What's Changed

Public Marketplace release for the released Stage 1 Tobi Validator action wrapper.

This action provides a narrow validator-first GitHub Actions path for:
- canon mode
- golden mode
- controlled private artifact access via TOBI_DIST_TOKEN

Current v1 reading:
- Windows-only
- public action wrapper
- private binary delivery from OrganeticSphere/tobi-validator-dist
- checksum verification required
- no runtime/backend/API/platform claims
