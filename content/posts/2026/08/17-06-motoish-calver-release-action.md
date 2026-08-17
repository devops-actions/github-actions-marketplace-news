---
title: Motoish CalVer Release
date: 2026-08-17 06:03:13 +00:00
tags:
  - motoish
  - GitHub Actions
draft: false
repo: https://github.com/motoish/calver-release-action
marketplace: https://github.com/marketplace/actions/motoish-calver-release
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The CalVer Release Action automates the process of publishing immutable daily builds, maintaining a daily prerelease channel, and promoting an explicitly selected build to a monthly stable release. It provides capabilities for creating CalVer formatted tags based on UTC or IANA timezones, handling fast-forwarding in the daily channel without backward movement, and ensuring that promotions only occur from published immutable pre-releases.
---


Version updated for **https://github.com/motoish/calver-release-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/motoish-calver-release) to find the latest changes.

## Action Summary

The CalVer Release Action automates the process of publishing immutable daily builds, maintaining a daily prerelease channel, and promoting an explicitly selected build to a monthly stable release. It provides capabilities for creating CalVer formatted tags based on UTC or IANA timezones, handling fast-forwarding in the daily channel without backward movement, and ensuring that promotions only occur from published immutable pre-releases.

## What's Changed

Initial stable release of Motoish CalVer Release Action.

Features:
- Publish immutable daily CalVer build releases.
- Maintain a daily prerelease channel.
- Promote an explicitly selected immutable build to a monthly stable release.
- Support UTC by default with configurable IANA timezones.
- Preserve release assets for the calling workflow to manage.
