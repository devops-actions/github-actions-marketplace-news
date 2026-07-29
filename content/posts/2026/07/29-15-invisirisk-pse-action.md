---
title: InvisiRisk PSE Security Proxy
date: 2026-07-29 15:15:17 +00:00
tags:
  - invisirisk
  - GitHub Actions
draft: false
repo: https://github.com/invisirisk/pse-action
marketplace: https://github.com/marketplace/actions/invisirisk-pse-security-proxy
version: v1.0.43
dependentsNumber: "54"
actionType: Node
nodeVersion: 20
actionSummary: |
  InvisiRisk's GitHub Action provides comprehensive security features for software supply chains, including continuous security for build environments, real-time policy enforcement on bi-directional traffic, and automatic compliance with Security Packs and custom policies. This action helps organizations implement zero-trust models and stop modern security breaches by inspecting the build pipeline in real time.
---


Version updated for **https://github.com/invisirisk/pse-action** to version **v1.0.43**.

- This action is used across all versions by **54** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/invisirisk-pse-security-proxy) to find the latest changes.

## Action Summary

InvisiRisk's GitHub Action provides comprehensive security features for software supply chains, including continuous security for build environments, real-time policy enforcement on bi-directional traffic, and automatic compliance with Security Packs and custom policies. This action helps organizations implement zero-trust models and stop modern security breaches by inspecting the build pipeline in real time.

## What's Changed

## Summary

  Adds stable job identification and readable labels so scans can be consistently grouped and distinguished across workflow runs, including matrix jobs.

  ## Changes

  - Add optional job_identifier, job_label, and matrix_obj action inputs.
  - Derive both job values from GITHUB_JOB when not explicitly provided.
  - Generate a stable hashed identifier for matrix jobs.
  - Use the matrix label or name as the readable label when available.
  - Pass job_identifier and job_label to the bootstrap endpoint.
  - Preserve explicit job values without applying matrix decoration.
  - Add tests covering matrix, explicit, and default job identity behavior.

  Existing workflows require no changes unless they need custom identifiers or labels.
