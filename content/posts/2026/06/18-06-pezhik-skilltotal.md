---
title: SkillTotal AI Component Security Scan
date: 2026-06-18 06:53:45 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.16.6
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.16.6**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## What's Changed


### Fixed
- **`.skilltotal.toml` with a UTF-8 BOM is now parsed** instead of being silently ignored. The
  config loader reads with `utf-8-sig`, so a leading BOM (commonly added by Windows editors and
  PowerShell) no longer voids the config — which previously could silently disable a configured CI
  gate (fail-open). No engine/detection or report-schema change (ruleset 17).


