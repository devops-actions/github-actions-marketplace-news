---
title: Azure IaC Reviewer
date: 2026-04-27 14:34:45 +00:00
tags:
  - resourcepulse-io
  - GitHub Actions
draft: false
repo: https://github.com/resourcepulse-io/bicep-azure-iac-reviewer
marketplace: https://github.com/marketplace/actions/azure-iac-reviewer
version: v1.0.5
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/resourcepulse-io/bicep-azure-iac-reviewer** to version **v1.0.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/azure-iac-reviewer) to find the latest changes.

## Action Summary

ResourcePulse – Bicep IaC Reviewer is a GitHub Action designed to analyze Azure Bicep files in pull requests. It automates cost estimation and best-practice checks, providing insights into resource configuration changes, cost impact, and compliance with tagging recommendations. This action helps developers optimize infrastructure-as-code by identifying potential cost increases and suggesting improvements, all without requiring source code access.

## What's Changed

## Fix

`Microsoft.Web/serverfarms` resources that declared their Linux plan via
`properties.reserved: true` (without setting `kind: 'linux'`) were being
labelled as Windows in the PR comment. The detector now follows Azure's
own deployment semantics:

1. `properties.reserved === true` → Linux
2. `kind` contains `"linux"`        → Linux
3. otherwise                        → Windows (Azure's default)

This matches the Azure Resource Manager docs, which state that
`reserved` is `true` for Linux plans and `false` otherwise.

## Tests

Three new regression tests covering:
- Kind-less serverfarms (defaults to Windows, matching Azure)
- `properties.reserved: true` (now correctly reports Linux)
- `kind: 'app'` with `reserved: true` (reserved wins, reports Linux)
