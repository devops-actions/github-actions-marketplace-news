---
title: GovAI Compliance Check
date: 2026-04-30 21:54:04 +00:00
tags:
  - MonikaDvorackova
  - GitHub Actions
draft: false
repo: https://github.com/MonikaDvorackova/aigov-compliance-engine
marketplace: https://github.com/marketplace/actions/govai-compliance-check
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/MonikaDvorackova/aigov-compliance-engine** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/govai-compliance-check) to find the latest changes.

## Action Summary

GovAI is a GitHub Action that functions as a compliance gate for AI systems, automating the enforcement of policy constraints and providing deterministic compliance decisions during CI/CD workflows. It ensures deployments meet predefined approval requirements by validating audit evidence, blocking non-compliant builds, and exporting detailed audit logs for traceability. This tool is particularly useful for monitoring and maintaining compliance in AI model deployments while supporting audit readiness.

## What's Changed

First stable release of the GovAI Compliance Check GitHub Action.

This release provides a deterministic CI gate for AI systems:

- VALID: CI passes
- BLOCKED: CI fails when the run is not eligible for promotion
- INVALID: CI fails when evaluation does not pass

BLOCKED covers both missing evidence and unmet approval or promotion prerequisites.

Usage:

uses: GovAI@v1
