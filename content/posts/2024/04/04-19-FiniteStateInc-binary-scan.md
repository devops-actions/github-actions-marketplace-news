---
title: Finite State Binary Scan
date: 2024-04-04 19:00:00 +00:00
tags:
  - FiniteStateInc
  - GitHub Actions
draft: false
repo: FiniteStateInc/binary-scan
marketplace: https://github.com/marketplace/actions/finite-state-binary-scan
version: v2.0.0
dependentsNumber: "?"
---


Version updated for **FiniteStateInc/binary-scan** to version **v2.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/finite-state-binary-scan) to find the latest changes.

## Release notes

## New Features
* Added support for Windows and Ubuntu operating systems.

## Breaking Change
Migrated from a composite action to a JavaScript action.

## Action Changes
* The action's structure and implementation have been updated to accommodate cross-platform support.
* The workflow configuration might require adjustments due to the change in action type and new options.

## What's Changed
* Migrate Composite GH action to to Js GH Action by @cpfarherFinitestate in https://github.com/FiniteStateInc/binary-scan/pull/12
* Fix Action readme by @cpfarherFinitestate in https://github.com/FiniteStateInc/binary-scan/pull/14

## Migration Guide
Review the updated action's documentation for any specific changes or requirements.
Update your workflows accordingly to leverage the new features and options.

Mainly you need to change the `uses` in the workflow file with this line:

```yaml
uses: FiniteStateInc/binary-scan@v2.0.0
```
If you would like to use the sha of the commit as version, we recommend to replace the input on this way:
```yaml
version: ${{github.sha}}
```

For detailed information and support, refer to the action's repository and documentation.

Thank you for using our GitHub Action! If you have any questions or encounter issues, please reach out to us for assistance.

**Full Changelog**: https://github.com/FiniteStateInc/binary-scan/compare/v1.1.0...v2.0.0
