---
title: Jamf Recovery Lock Rotation
date: 2026-07-25 00:33:43 +00:00
tags:
  - Inetum-Poland
  - GitHub Actions
draft: false
repo: https://github.com/Inetum-Poland/jamf-recovery-lock-rotation
marketplace: https://github.com/marketplace/actions/jamf-recovery-lock-rotation
version: v1.0.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates the rotation of Recovery Lock passphrases on Jamf Pro-managed Apple Silicon Mac computers. It uses OAuth client credentials and retrieves device Management IDs from Jamf Pro inventory, with optional scoping via a Smart Computer Group. The action issues the `SET_RECOVERY_LOCK` MDM command, exposing outputs for downstream workflow steps or reporting. It supports dry-run workflows to validate roles and group scoping before executing MDM commands.
---


Version updated for **https://github.com/Inetum-Poland/jamf-recovery-lock-rotation** to version **v1.0.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jamf-recovery-lock-rotation) to find the latest changes.

## Action Summary

This GitHub Action automates the rotation of Recovery Lock passphrases on Jamf Pro-managed Apple Silicon Mac computers. It uses OAuth client credentials and retrieves device Management IDs from Jamf Pro inventory, with optional scoping via a Smart Computer Group. The action issues the `SET_RECOVERY_LOCK` MDM command, exposing outputs for downstream workflow steps or reporting. It supports dry-run workflows to validate roles and group scoping before executing MDM commands.

## What's Changed

## Jamf Recovery Lock Rotation
This is a version of **Inetum-Poland/jamf-recovery-lock-rotation** released by GitHub Actions.
___
## Changes since [v1.0.0](https://github.com/Inetum-Poland/jamf-recovery-lock-rotation/releases/tag/v1.0.0)
- [4d11d22](http://github.com/Inetum-Poland/jamf-recovery-lock-rotation/commit/4d11d22ff6cc927adf199021ae9a200840a88df0) - feat(repo): add release attestation and improve CLI passphrase generation (#6)
- [f483467](http://github.com/Inetum-Poland/jamf-recovery-lock-rotation/commit/f4834673442723e7c6e8ff18337419a4d382f658) - docs(action): refine marketplace description (#5)


#### Full Changelog: [v1.0.0...v1.0.2](https://github.com/Inetum-Poland/jamf-recovery-lock-rotation/compare/v1.0.0...v1.0.2)
<sup>Contributed by @bsojka</sup>
