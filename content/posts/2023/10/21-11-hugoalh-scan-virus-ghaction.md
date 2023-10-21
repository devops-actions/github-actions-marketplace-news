---
title: Scan Virus
date: 2023-10-21 11:11:28 +00:00
tags:
  - hugoalh
  - GitHub Actions
draft: false
repo: hugoalh/scan-virus-ghaction
marketplace: https://github.com/marketplace/actions/scan-virus
version: v0.20.0
dependentsNumber: "57"
---


Version updated for **hugoalh/scan-virus-ghaction** to version **v0.20.0**.
- This action is used across all versions by **57** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/scan-virus) to find the latest changes.

## Release notes

## 🔦 Spotlights

- Ability to use custom assets via mapped directory/volume
- More fine-grained ignores for ignore matrix of paths, sessions, symbols, and/or tools

## 💥 Break Changes

- Change mechanism, strategy and syntax of ignores: (@hugoalh)(*N/A*)
  - Ability to ignore matrix of paths, sessions, symbols, and/or tools
  - Ability to ignore paths with Git commit meta
  - Replace input `ignores` by inputs `ignores_pre` and `ignores_post`
  - Use PowerShell script block as syntax instead of markup languages
- Change target GitHub Actions Runner from >= v2.303.0 to >= v2.308.0 (@hugoalh)(*N/A*)
- Inputs which accept list of values is now require to separate each value per line instead of customable list delimiter (@hugoalh)(*N/A*)
- Remove input `targets` and replace by the GitHub Actions Runner current working directory (@hugoalh)(*N/A*)
- Remove support of network and remote targets (@hugoalh)(*N/A*)
  - To scan any of network and/or remote targets, user must prepare those before this action
- Rename inputs: (@hugoalh)(*N/A*)
  - `clamav_unofficialassets` to `clamav_unofficialassets_use`
  - `yara_unofficialassets` to `yara_unofficialassets_use`

## 〰️ Changes

- Add inputs `clamav_customassets_directory`, `clamav_customassets_use`, `yara_customassets_directory`, and `yara_customassets_use` for usage of custom assets (@hugoalh)(*N/A*)
- Fix summary preview rarely broken cause by characters escapes (@hugoalh)(*N/A*)
- Fix 200+ of error messages related to undefined identifier on YARA unofficial assets (@hugoalh)(*N/A*)
- Improve efficiency and performance (@hugoalh)(*N/A*)
- Improve issues message and list (@hugoalh)(*N/A*)
- Remove input `log_elements` and replace by debugger (@hugoalh)(*N/A*)
- Remove inputs `input_listdelimiter` and `input_tablemarkup` as no longer necessary (@hugoalh)(*N/A*)
- Resolve overflow issues in the statistics (@hugoalh)(*N/A*)
- Softwares version table is now persistence and no longer need to recalculate and/or regenerate (@hugoalh)(*N/A*)
- Update image and it's softwares (@hugoalh)(*N/A*)
- Update unofficial assets to Git commit hash [da7c303cf684d041735edd044d3480a182698afc](https://github.com/hugoalh/scan-virus-ghaction-assets/tree/da7c303cf684d041735edd044d3480a182698afc) (@hugoalh)(*N/A*)

