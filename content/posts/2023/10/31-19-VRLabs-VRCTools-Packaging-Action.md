---
title: vrc-packaging-action
date: 2023-10-31 19:15:39 +00:00
tags:
  - VRLabs
  - GitHub Actions
draft: false
repo: VRLabs/VRCTools-Packaging-Action
marketplace: https://github.com/marketplace/actions/vrc-packaging-action
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **VRLabs/VRCTools-Packaging-Action** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vrc-packaging-action) to find the latest changes.

## Release notes

Updated support to version 1.1.0 of the container.

New Options:
 -  `unityReleaseUrl`: link to include in the `package.json` for the unityackage
 -  `releaseVersion`: version to use for the release, will default with the content of `package.json` if not provided

New Features:
 - Icon support: by filling up an `icon` field inside `package.json` with an url to a valid png, you can add an icon for the unitypackage release

Changes:
 - now the `unityPackageDestinationFolder `and `unityPackageDestinationFolderMetas` fields are required when generating unitypackages
 - removed requirement of `unity` field as it's not required by the vcc, we will readd it the day VRChat will make the field required

Fixed:
 - now fields unused by the packager do not get removed on the released packages
 - fixed missing filters on the zip (vcc) version of the package
 - correctly moved `server-package.json` to the output directory instead of the work directory
