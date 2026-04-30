---
title: Qubic Contract Verify
date: 2026-04-30 21:54:56 +00:00
tags:
  - Franziska-Mueller
  - GitHub Actions
draft: false
repo: https://github.com/Franziska-Mueller/qubic-contract-verify
marketplace: https://github.com/marketplace/actions/qubic-contract-verify
version: v1.1.1
dependentsNumber: "2"
actionType: Docker
---


Version updated for **https://github.com/Franziska-Mueller/qubic-contract-verify** to version **v1.1.1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qubic-contract-verify) to find the latest changes.

## Action Summary

The Qubic Contract Verification Tool is a GitHub Action designed to automatically verify that C++ files conform to Qubic's specific C++ language feature restrictions for smart contract files. It simplifies and automates the process of ensuring compliance with these constraints, reducing manual effort and potential errors during code review. The action is container-based and integrates seamlessly into GitHub workflows, enabling efficient validation of one or multiple smart contract files.

## What's Changed

- allow enum types for I/O types if underlying type is allowed
- refine I/O type analysis when using `typedef` and `using` keywords
