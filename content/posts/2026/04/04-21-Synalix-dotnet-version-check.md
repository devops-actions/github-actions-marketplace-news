---
title: .NET Version Check
date: 2026-04-04 21:40:00 +00:00
tags:
  - Synalix
  - GitHub Actions
draft: false
repo: https://github.com/Synalix/dotnet-version-check
marketplace: https://github.com/marketplace/actions/net-version-check
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/Synalix/dotnet-version-check** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/net-version-check) to find the latest changes.

## Action Summary

The `dotnet-version-check` GitHub Action ensures the `<InformationalVersion>` specified in a `.csproj` file matches the GitHub release tag prior to publishing a release. This helps prevent version mismatches between the release tag (e.g., `v1.2.0`) and the version embedded in the binary (`1.1.0`), ensuring consistency and avoiding potential deployment issues. It automates the validation process, providing clear error messages if discrepancies are found.

## What's Changed

- fixed typo (9711244)
- Add debug logging (ca955dd)
- Update index.js (b371333)
- Update csproj path in README for version check (1128841)
- Add branding section to action.yml (1e3e23f)
- Add MIT License to the project (bc5c63a)
- Initial release (683937e)
- Initial commit (d3b8b5a)
