---
title: Verify Agent Execution Receipt
date: 2026-04-21 06:29:20 +00:00
tags:
  - joy7758
  - GitHub Actions
draft: false
repo: https://github.com/joy7758/verify-agent-receipt-action
marketplace: https://github.com/marketplace/actions/verify-agent-execution-receipt
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/joy7758/verify-agent-receipt-action** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verify-agent-execution-receipt) to find the latest changes.

## Action Summary

The "Verify Agent Execution Receipt" GitHub Action automates the validation of signed execution receipts against corresponding evidence bundles using a public key. It ensures the integrity and authenticity of artifacts produced by agent workflows, making it particularly useful for CI pipelines to verify execution evidence and fail jobs when validations fail. The action generates a verdict (`valid` or `invalid`) and a detailed verification report, helping to maintain trust and transparency in automated processes.

## What's Changed

# v0.1.0 - Verify Agent Execution Receipt Action

Initial release.

## What this action does

This GitHub Action validates signed agent execution receipts against evidence bundles using the `verifiable-tool-invocation-flow` Python package.

## Features

- Installs `verifiable-tool-invocation-flow==0.1.1`
- Runs the independent receipt validator CLI
- Validates receipt, evidence bundle, and public key
- Outputs `verdict`
- Outputs `report-path`
- Supports configurable `audience`
- Supports configurable Python version
- Supports configurable package version
- Supports `fail-on-invalid`

## Inputs

- `receipt`
- `evidence`
- `public-key`
- `audience`
- `output`
- `package-version`
- `python-version`
- `fail-on-invalid`

## Outputs

- `verdict`
- `report-path`

## Scope

This action validates signed execution evidence.

It does not prove semantic correctness of the tool output.
It does not prove that the policy itself is correct.
It does not protect against a compromised signer.
It does not replace sandboxing, IAM, access control, monitoring, or human approval.

## Related project

Core package:
https://pypi.org/project/verifiable-tool-invocation-flow/0.1.1/

Core repository:
https://github.com/joy7758/verifiable-tool-invocation-flow

