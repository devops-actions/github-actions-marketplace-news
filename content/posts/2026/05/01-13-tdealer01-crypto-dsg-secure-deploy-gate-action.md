---
title: DSG Secure Deploy Gate
date: 2026-05-01 13:52:45 +00:00
tags:
  - tdealer01-crypto
  - GitHub Actions
draft: false
repo: https://github.com/tdealer01-crypto/dsg-secure-deploy-gate-action
marketplace: https://github.com/marketplace/actions/dsg-secure-deploy-gate
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/tdealer01-crypto/dsg-secure-deploy-gate-action** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dsg-secure-deploy-gate) to find the latest changes.

## Action Summary

The DSG Secure Deploy Gate GitHub Action serves as a deterministic deployment gate for CI/CD workflows, ensuring production readiness and security compliance. It automates the validation of readiness endpoints, checks protected route behavior, and generates a `GO`/`NO-GO` verdict alongside a cryptographic evidence hash. This action helps prevent unsafe deployments by enforcing governance standards and providing traceable deployment evidence.

## What's Changed

# DSG Secure Deploy Gate Action v1.0.2

Initial GitHub Marketplace release of the DSG Secure Deploy Gate Action.

## What this Action does

DSG Secure Deploy Gate adds a deterministic deployment gate for CI/CD workflows.

It is designed to block unsafe or non-compliant deploys before production execution by checking deployment policy, required evidence, and governance conditions.

## Key capabilities

- Deterministic deploy gate for GitHub Actions
- Fail-closed behavior for unsafe deploy conditions
- CI/CD policy enforcement before production deployment
- Evidence-oriented deployment control
- Designed for regulated, high-assurance, and AI-assisted software delivery workflows

## Usage

```yaml
- name: DSG Secure Deploy Gate
  uses: tdealer01-crypto/dsg-secure-deploy-gate-action@v1.0.2
