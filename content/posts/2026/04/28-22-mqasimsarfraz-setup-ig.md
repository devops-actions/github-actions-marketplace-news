---
title: Setup ig
date: 2026-04-28 22:05:01 +00:00
tags:
  - mqasimsarfraz
  - GitHub Actions
draft: false
repo: https://github.com/mqasimsarfraz/setup-ig
marketplace: https://github.com/marketplace/actions/setup-ig
version: v0.2.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/mqasimsarfraz/setup-ig** to version **v0.2.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-ig) to find the latest changes.

## Action Summary

The `setup-ig` GitHub Action automates the installation of the `ig` CLI, a command-line tool for interacting with Inspektor Gadget, a Kubernetes performance and debugging tool. It simplifies the setup process by ensuring the desired version of `ig` is installed, with an option to also install the `gadgetctl` CLI if needed. This action streamlines development workflows by reducing manual installation efforts for Kubernetes debugging utilities.

## What's Changed

## What's New

- By default only `ig` is installed
- New `install-gadgetctl` input to optionally install `gadgetctl`

## Usage

```yaml
steps:
  - uses: mqasimsarfraz/setup-ig@v0.2.0
```

To also install gadgetctl:

```yaml
steps:
  - uses: mqasimsarfraz/setup-ig@v0.2.0
    with:
      install-gadgetctl: "true"
```
