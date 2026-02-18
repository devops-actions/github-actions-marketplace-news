---
title: VBA Build
date: 2026-02-18 05:46:54 +00:00
tags:
  - DecimalTurn
  - GitHub Actions
draft: false
repo: https://github.com/DecimalTurn/VBA-Build
marketplace: https://github.com/marketplace/actions/vba-build
version: v2.0.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/DecimalTurn/VBA-Build** to version **v2.0.0**.
- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vba-build) to find the latest changes.

## Action Summary

The **VBA-Build** GitHub Action automates the process of building VBA-enabled Office documents (e.g., Excel, Word, PowerPoint, and Access) from XML and VBA source code. It streamlines tasks such as creating Office files, importing VBA components, running tests, and packaging the final document with embedded VBA code, making it ideal for CI/CD pipelines. This action helps manage VBA projects in plain text for version control and eliminates manual steps in generating ready-to-use Office documents.

## Release notes

## Breaking changes

* Use setup action by @DecimalTurn in https://github.com/DecimalTurn/VBA-Build/pull/31

	`VBA-Build` now focuses only on **building and testing VBA-enabled files** from source.
	
	Starting with **v2.0.0**, environment initialization is no longer handled inside this action.
	You must run [`DecimalTurn/setup-vba`](https://github.com/DecimalTurn/setup-vba) before `VBA-Build`.

	In previous versions, `VBA-Build` handled setup tasks like:
	
	- Installing Microsoft Office on the runner
	- Initializing Office applications
	- Configuring VBA security (VBOM access / macro settings)
	
	In **v2.0.0**, these responsibilities were removed from `VBA-Build` and moved to `setup-vba`.
	
	This is an intentional separation of concerns:
	
	- `setup-vba` = prepare runner/runtime
	- `VBA-Build` = build documents from source

	See [Migration Guide](https://github.com/DecimalTurn/VBA-Build/blob/7270b97b7e155824a85d055eb9bbda607f36fd56/RELEASE_NOTES_v2.0.0.md#migration-guide-existing-workflows) for more details on how to upgrade.

## Minor changes

### Dependency updates

* Update GitHub Artifact Actions (major) by @renovate[bot] in https://github.com/DecimalTurn/VBA-Build/pull/25
* Update actions/checkout action to v6 by @renovate[bot] in https://github.com/DecimalTurn/VBA-Build/pull/26
* Update GitHub Artifact Actions (major) by @renovate[bot] in https://github.com/DecimalTurn/VBA-Build/pull/27
* Update dawidd6/action-download-artifact action to v12 by @renovate[bot] in https://github.com/DecimalTurn/VBA-Build/pull/28
* Update dawidd6/action-download-artifact action to v13 by @renovate[bot] in https://github.com/DecimalTurn/VBA-Build/pull/29
* Update dawidd6/action-download-artifact action to v14 by @renovate[bot] in https://github.com/DecimalTurn/VBA-Build/pull/30
* chore(deps): update actions/checkout action to v6 by @renovate[bot] in https://github.com/DecimalTurn/VBA-Build/pull/32


**Full Changelog**: https://github.com/DecimalTurn/VBA-Build/compare/v1.4.0...v2.0.0
