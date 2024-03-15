---
title: Nix Quick Install
date: 2024-03-15 19:14:54 +00:00
tags:
  - nixbuild
  - GitHub Actions
draft: false
repo: nixbuild/nix-quick-install-action
marketplace: https://github.com/marketplace/actions/nix-quick-install
version: v27
dependentsNumber: "701"
---


Version updated for **nixbuild/nix-quick-install-action** to version **v27**.
- This action is used across all versions by **701** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nix-quick-install) to find the latest changes.

## Release notes

## Security Notice

This release (and previous releases) includes Nix versions that are vulnerable to [CVE-2024-27297](https://www.cve.org/CVERecord?id=CVE-2024-27297). The current default Nix version, 2.19.3, is not vulnerable. If you select another Nix version you should use your own judgement to decide if CVE-2024-27297 is applicable to your usage of Nix in your GitHub Actions workflow.

The following Nix versions that are packaged with this action are **not** vulnerable:

* 2.19.3 (the default version)
* 2.18.1
* 2.3.17

The above versions have been explicitly patched by the `nixpkgs` maintainers.

The rest of the Nix versions provided by this action **are vulnerable** to CVE-2024-27297.

In the next release of this action (v28), all vulnerable Nix versions will be removed.

## Changes

* Bump minor Nix versions: 2.3.16 -> 2.3.17

* Add Nix versions: 2.17.1, 2.18.1, 2.19.3

* Bump default Nix version: 2.16.2 -> 2.19.3

## Supported Nix Versions on Linux Runners
* 2.19.3
* 2.18.1
* 2.17.1
* 2.16.2
* 2.15.3
* 2.14.1
* 2.13.6
* 2.12.1
* 2.11.1
* 2.10.3
* 2.9.2
* 2.8.1
* 2.7.0
* 2.6.1
* 2.5.1
* 2.4
* 2.3.17
* 2.2.2
* 2.1.3
* 2.0.4

## Supported Nix Versions on MacOS Runners
* 2.19.3
* 2.18.1
* 2.17.1
* 2.16.2
* 2.15.3
* 2.14.1
* 2.13.6
* 2.12.1
* 2.11.1
* 2.10.3
* 2.9.2
* 2.8.1
* 2.7.0
* 2.6.1
* 2.5.1
* 2.4
* 2.3.17
* 2.2.2
* 2.1.3

