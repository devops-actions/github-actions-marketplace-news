---
title: Setup Microsoft PowerPoint for Mac
date: 2025-12-09 21:16:07 +00:00
tags:
  - NetOfficeFw
  - GitHub Actions
draft: false
repo: https://github.com/NetOfficeFw/setup-powerpoint
marketplace: https://github.com/marketplace/actions/setup-microsoft-powerpoint-for-mac
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/NetOfficeFw/setup-powerpoint** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-microsoft-powerpoint-for-mac) to find the latest changes.

## Release notes

# Setup Microsoft PowerPoint for Mac

This is the initial stable release of the `NetOfficeFw/setup-powerpoint` action, which enables automated installation of Microsoft PowerPoint for Mac in GitHub Actions workflows.

## Purpose

The `setup-powerpoint` action automates the setup of PowerPoint on macOS runners, making it easy to run PowerPoint automation scripts or test Office integrations in CI/CD pipelines.

## Features

- **Automated Installation** - Downloads and installs Microsoft PowerPoint for Mac on GitHub Actions macOS runners
- **Configurable Versions** - Supports installing specific PowerPoint package versions via the `package` input
- **First-Run Setup** - Automatically dismisses first-run dialogs and configures PowerPoint for unattended operation
- **UI Automation Ready** - Enables Terminal.app user interface automation permissions for scripting
- **Output Variables** - Provides detailed information about the installed PowerPoint app.

## Usage

Quick and easy usage:

```yaml
- name: Install Microsoft PowerPoint for Mac
  uses: NetOfficeFw/setup-powerpoint@v1
```

**Optional:** specify a different version of PowerPoint to install
```
- name: Install specific PowerPoint version
  uses: NetOfficeFw/setup-powerpoint@v1
  with:
    package: Microsoft_PowerPoint_16.103.25113013_Updater.pkg
```

### Outpu Variables

The `setup-powerpoint` action will output these variables:

- `path`: Installation path of Microsoft PowerPoint (e.g., `/Applications/Microsoft PowerPoint.app`).
- `version`: Installed Microsoft PowerPoint version (`CFBundleShortVersionString`).
- `build`: Build number (last component of `CFBundleVersion`).
- `package`: Installer package file name used during installation.
- `installer-url`: Full URL used to download the installer.


## Requirements

- macOS runner (e.g., `macos-latest`, `macos-13`, `macos-14`)
- Apple Silicon and Intel runners are supported

