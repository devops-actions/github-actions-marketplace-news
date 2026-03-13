---
title: Qubic Contract Verify
date: 2026-03-13 21:37:20 +00:00
tags:
  - Franziska-Mueller
  - GitHub Actions
draft: false
repo: https://github.com/Franziska-Mueller/qubic-contract-verify
marketplace: https://github.com/marketplace/actions/qubic-contract-verify
version: v1.0.5
dependentsNumber: "2"
actionType: Docker
---


Version updated for **https://github.com/Franziska-Mueller/qubic-contract-verify** to version **v1.0.5**.
- This action is used across all versions by **2** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qubic-contract-verify) to find the latest changes.

## Action Summary

The Qubic Contract Verification Tool is a GitHub Action that automates the validation of C++ smart contract files to ensure compliance with Qubic's C++ language feature restrictions. It helps developers maintain code quality and adherence to predefined standards in smart contract development. The action leverages a Docker-based container to seamlessly integrate into GitHub workflows, enabling automated verification of specified C++ files.

## Release notes

- add check to forbid variable declarations directly in state struct (following new format introduced in https://github.com/qubic/core/pull/774)
