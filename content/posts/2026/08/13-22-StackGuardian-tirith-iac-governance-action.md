---
title: Tirith IaC Governance
date: 2026-08-13 22:15:26 +00:00
tags:
  - StackGuardian
  - GitHub Actions
draft: false
repo: https://github.com/StackGuardian/tirith-iac-governance-action
marketplace: https://github.com/marketplace/actions/tirith-iac-governance
version: v2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **Purpose**: The `Tirith — IaC Governance plugin` GitHub Action automates infrastructure governance by evaluating Terraform plans against policies using the Tirith CLI. It helps protect sensitive values, enforce centralised governance, and surface actionable results before changes are applied.
  
  **Problems Solved/Tasks Automated**: 
  - Evaluates Terraform plans for compliance with defined policies.
  - Protects sensitive information from exposure during infrastructure deployment.
  - Enforces centralized governance policies across multiple pipelines.
  - Provides real-time feedback on policy violations through pull-request comments and check runs.
  
  **Key Capabilities Provided**:
  - Runs policies locally or remotely using StackGuardian credentials.
  - Supports both default local mode and remote evaluation modes.
  - Reports policy outcomes as sticky comments and check runs in pull requests, setting job exit codes to prevent changes from being applied if violations are found.
---


Version updated for **https://github.com/StackGuardian/tirith-iac-governance-action** to version **v2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tirith-iac-governance) to find the latest changes.

## Action Summary

**Purpose**: The `Tirith — IaC Governance plugin` GitHub Action automates infrastructure governance by evaluating Terraform plans against policies using the Tirith CLI. It helps protect sensitive values, enforce centralised governance, and surface actionable results before changes are applied.

**Problems Solved/Tasks Automated**: 
- Evaluates Terraform plans for compliance with defined policies.
- Protects sensitive information from exposure during infrastructure deployment.
- Enforces centralized governance policies across multiple pipelines.
- Provides real-time feedback on policy violations through pull-request comments and check runs.

**Key Capabilities Provided**:
- Runs policies locally or remotely using StackGuardian credentials.
- Supports both default local mode and remote evaluation modes.
- Reports policy outcomes as sticky comments and check runs in pull requests, setting job exit codes to prevent changes from being applied if violations are found.

## What's Changed

## What's Changed
* [SG-4885] feat: the Tirith IaC Governance action — zero-config, with a credential-free local mode by @refeed in https://github.com/StackGuardian/tirith-iac-governance-action/pull/182


**Full Changelog**: https://github.com/StackGuardian/tirith-iac-governance-action/compare/v1.0.0-beta...v2
