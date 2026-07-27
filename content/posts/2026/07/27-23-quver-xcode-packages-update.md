---
title: Xcode Packages Update
date: 2026-07-27 23:07:20 +00:00
tags:
  - quver
  - GitHub Actions
draft: false
repo: https://github.com/quver/xcode-packages-update
marketplace: https://github.com/marketplace/actions/xcode-packages-update
version: v4.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The GitHub Action `xcode-packages-update` automates the resolution and reporting of Swift Package Manager (SPM) dependencies in Xcode projects or workspaces. It detects changes, outputs a human-readable summary, generates an HTML dependency report, and creates a CycloneDX SBOM for machine readability. The action automatically classifies packages as either App or Development based on their presence in `Package.swift` files and `project.pbxproj`. This tool is useful for maintaining up-to-date dependencies and ensuring visibility of changes through pull requests.
---


Version updated for **https://github.com/quver/xcode-packages-update** to version **v4.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/xcode-packages-update) to find the latest changes.

## Action Summary

The GitHub Action `xcode-packages-update` automates the resolution and reporting of Swift Package Manager (SPM) dependencies in Xcode projects or workspaces. It detects changes, outputs a human-readable summary, generates an HTML dependency report, and creates a CycloneDX SBOM for machine readability. The action automatically classifies packages as either App or Development based on their presence in `Package.swift` files and `project.pbxproj`. This tool is useful for maintaining up-to-date dependencies and ensuring visibility of changes through pull requests.

## What's Changed

## Bug Fixes
- resolve Package.resolved data loss, injection, and dev/app misclassification bugs
- resolve Package.resolved data loss, injection, and dev/app misclassification bugs
- use client-id instead of deprecated app-id in release workflow

