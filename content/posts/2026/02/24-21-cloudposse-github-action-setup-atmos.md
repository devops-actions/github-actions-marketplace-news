---
title: setup-atmos
date: 2026-02-24 21:42:20 +00:00
tags:
  - cloudposse
  - GitHub Actions
draft: false
repo: https://github.com/cloudposse/github-action-setup-atmos
marketplace: https://github.com/marketplace/actions/setup-atmos
version: v2.1.0
dependentsNumber: "33"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/cloudposse/github-action-setup-atmos** to version **v2.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **33** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-atmos) to find the latest changes.

## Action Summary

The `cloudposse/github-action-setup-atmos` GitHub Action automates the installation and setup of the `atmos` tool within GitHub Actions workflows. It ensures the specified version of `atmos` is installed and added to the `PATH` for use in subsequent workflow steps. Additionally, it provides an optional wrapper script to capture and expose the command's outputs (`stdout`, `stderr`, and `exitcode`), simplifying the integration and management of `atmos` commands in CI/CD pipelines.

## Release notes

<details>
  <summary>chore: update README.yaml to correct example usage of atmos-version @jasonwashburn (#104)</summary>
## what
README example of how to specify version of atmos to use, `version` vs `atmos-version`. 

## why
Documentation is incorrect.

## references
Was previously "fixed" in another [PR](https://github.com/cloudposse/github-action-setup-atmos/pull/99) by manually editing README.md, however that fix seems to have been overwritten by an automation. The README mentions using a makefile task to generate the README, but that reference also appears to be outdated in favor or some upstream atmos tooling somewhere? 


</details>

