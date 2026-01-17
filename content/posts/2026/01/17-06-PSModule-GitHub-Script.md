---
title: GitHub-Script (by PSModule)
date: 2026-01-17 06:24:45 +00:00
tags:
  - PSModule
  - GitHub Actions
draft: false
repo: https://github.com/PSModule/GitHub-Script
marketplace: https://github.com/marketplace/actions/github-script-by-psmodule
version: v1.7.8
dependentsNumber: "23"
---


Version updated for **https://github.com/PSModule/GitHub-Script** to version **v1.7.8**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **23** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-script-by-psmodule) to find the latest changes.

## Action Summary

This GitHub Action, **GitHub-Script**, enables users to execute scripts written in PowerShell that utilize the GitHub PowerShell module. It automates tasks such as interacting with GitHub APIs, managing repositories, or handling workflows directly within a GitHub Actions pipeline. Key features include flexible script execution (inline, multi-line, or file-based), integration with GitHub authentication methods, and customizable runtime settings for debugging and output control.

## Release notes

# 🩹 [Patch]: Remove output access hints from logs (#55)

Removes the output access hint text from the action logs to avoid confusion when the action is used directly or nested in another composite action. The output grouping and output content display remain unchanged.

- Fixes #54

## Changes

- Remove access-hint printing in `scripts/outputs.ps1`
- Simplify composite output test by removing access-pattern demo and help-text validation

## Rationale

The access pattern differs for direct vs nested usage, so printed hints can be misleading. Removing the hint avoids confusion while still showing the output values.

