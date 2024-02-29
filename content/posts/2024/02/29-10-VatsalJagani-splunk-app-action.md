---
title: Run Splunk App Inspect Check
date: 2024-02-29 10:59:45 +00:00
tags:
  - VatsalJagani
  - GitHub Actions
draft: false
repo: VatsalJagani/splunk-app-action
marketplace: https://github.com/marketplace/actions/run-splunk-app-inspect-check
version: v3
dependentsNumber: "16"
---


Version updated for **VatsalJagani/splunk-app-action** to version **v3**.
- This action is used across all versions by **16** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-splunk-app-inspect-check) to find the latest changes.

## Release notes

## What's Changed
* use_ucc_gen parameter added to support UCC build Add-on support. (It uses `ucc-gen build` command to generate the build dynamically on the GitHub action directly.)
* Added new utility `ucc_additional_packaging` for better way to generate proper Python Input handler file structure.
* Better way to Auto detect App package id, App version number and App build number.
* Better naming convention for App and Add-on build names.
* Run App utilities on current branch instead of on default branch for better support and easier to deal with in codebase.
* Automatically delete unwanted files from the build to avoid App inspect check issues.
