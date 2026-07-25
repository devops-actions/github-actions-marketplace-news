---
title: Jamf Recovery Lock Rotation
date: 2026-07-25 06:50:34 +00:00
tags:
  - Inetum-Poland
  - GitHub Actions
draft: false
repo: https://github.com/Inetum-Poland/jamf-recovery-lock-rotation
marketplace: https://github.com/marketplace/actions/jamf-recovery-lock-rotation
version: v1.2.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates the rotation of Recovery Lock passphrases on Jamf Pro–managed Apple Silicon Mac computers using the Jamf Pro API. It allows for scheduled or targeted rotations, supports dry-run workflows to validate setup without sending MDM commands, and exposes outputs for downstream workflow steps or reporting. The action requires OAuth client credentials stored as secrets and can be configured with optional Smart Computer Group scoping.
---


Version updated for **https://github.com/Inetum-Poland/jamf-recovery-lock-rotation** to version **v1.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jamf-recovery-lock-rotation) to find the latest changes.

## Action Summary

This GitHub Action automates the rotation of Recovery Lock passphrases on Jamf Pro–managed Apple Silicon Mac computers using the Jamf Pro API. It allows for scheduled or targeted rotations, supports dry-run workflows to validate setup without sending MDM commands, and exposes outputs for downstream workflow steps or reporting. The action requires OAuth client credentials stored as secrets and can be configured with optional Smart Computer Group scoping.

## What's Changed

## Jamf Recovery Lock Rotation
This is a version of **Inetum-Poland/jamf-recovery-lock-rotation** released by GitHub Actions.
___
## Changes since [v1.1.0](https://github.com/Inetum-Poland/jamf-recovery-lock-rotation/releases/tag/v1.1.0)
- [0124f68](http://github.com/Inetum-Poland/jamf-recovery-lock-rotation/commit/0124f68662c6274b17e82c287910a5226bb3806b) - feat(auth): enhance token management with proactive refresh and expiry handling (#11)
- [8fcf860](http://github.com/Inetum-Poland/jamf-recovery-lock-rotation/commit/8fcf860f10bf95663c41c9cb437cb607aea897d6) - chore(deps): bump actions/checkout from 6 to 7 (#10)
- [abaf6e3](http://github.com/Inetum-Poland/jamf-recovery-lock-rotation/commit/abaf6e312e13f8e19cc887fbecf2ee57c720c870) - docs(examples): improve manual workflow example with inputs (#9)


#### Full Changelog: [v1.1.0...v1.2.0](https://github.com/Inetum-Poland/jamf-recovery-lock-rotation/compare/v1.1.0...v1.2.0)
<sup>Contributed by @bsojka</sup>
