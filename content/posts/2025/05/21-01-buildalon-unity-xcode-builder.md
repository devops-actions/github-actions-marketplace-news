---
title: Buildalon unity-xcode-builder
date: 2025-05-21 01:12:31 +00:00
tags:
  - buildalon
  - GitHub Actions
draft: false
repo: https://github.com/buildalon/unity-xcode-builder
marketplace: https://github.com/marketplace/actions/buildalon-unity-xcode-builder
version: v1.3.0
dependentsNumber: "?"
---


Version updated for **https://github.com/buildalon/unity-xcode-builder** to version **v1.3.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/buildalon-unity-xcode-builder) to find the latest changes.

## Release notes

## What's Changed
* unity-xcode-builder@v1.3.0 by @StephenHodgson in https://github.com/buildalon/unity-xcode-builder/pull/18
  - added new inputs
    - `test-groups`: One or more test groups to automatically add to the build when uploading to TestFlight. When using multiple groups, separate them with commas.
    - `archive-type`: The archive type to use when exporting macOS applications when not uploading to the App Store. Can be one of `app` or `pkg`.
    - `submit-for-review`: Automatically submit beta build for review and notify testers
    - `developer-id-application-certificate`: The `Developer ID Application` certificate encoded as base64 string. Used for signing macOS app bundles when not uploading to app store.
    - `developer-id-application-certificate-password`: The password for the `Developer ID Application` certificate.
    - `developer-id-installer-certificate`: The `Developer ID Installer` certificate encoded as base64 string. Used for signing installer packages for macOS applications.
    - `developer-id-installer-certificate-password`: The password for the `Developer ID Installer` certificate.
  - renamed inputs:
    - `certificate` -> `manual-signing-certificate`
    - `certificate-password` -> `manual-certificate-password`
    - `signing-identity` -> `manual-signing-identity`
  - fixed notarization workflow
  - extended test detail upload polling
  - adjusted export option handling
  - improvements to credential import and cleanup

**Full Changelog**: https://github.com/buildalon/unity-xcode-builder/compare/v1.2.1...v1.3.0
