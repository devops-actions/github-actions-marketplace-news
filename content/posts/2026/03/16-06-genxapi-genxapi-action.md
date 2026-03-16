---
title: GenX API
date: 2026-03-16 06:13:31 +00:00
tags:
  - genxapi
  - GitHub Actions
draft: false
repo: https://github.com/genxapi/genxapi-action
marketplace: https://github.com/marketplace/actions/genx-api
version: 1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/genxapi/genxapi-action** to version **1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/genx-api) to find the latest changes.

## Action Summary

The `genxapi-action` is a GitHub Action wrapper for the GenX API CLI, designed to automate tasks such as API contract validation, SDK generation, and publishing workflows. By integrating directly with the CLI via `npx`, the action simplifies execution, handles input validation, streams logs, and provides configurable outputs for seamless workflow integration. It addresses the need for streamlined automation in managing API-related workflows while delegating core logic to the GenX API.

## Release notes

genxapi-action v1.0.0 is the first official GitHub Action release for running GenX API inside GitHub workflows.

This action is designed as a thin wrapper around the GenX API CLI, making it easier for backend and platform teams to run contract-driven client and package generation directly in GitHub Actions.

## What this release includes

- Official GitHub Action for GenX API
- GitHub workflow friendly wrapper around `@genxapi/cli@latest`
- Support for contract-driven generation from OpenAPI and Swagger sources
- Inputs for config path, contract path, output path, publish mode, dry run, working directory, and extra arguments
- Safer workflow execution with input validation, masked secrets, and clearer logs
- Action outputs for workflow visibility and downstream steps
- Documentation and examples for backend-initiated generation flows

## Intended usage

Use `genxapi-action` when you want to run GenX API in GitHub workflows.

Use the GenX API CLI directly when you want the most flexible local or custom automation experience.

## Supported workflow scenarios

- Generate client and package outputs from a contract in CI
- Validate generation with dry-run before publishing
- Run backend initiated generation workflows
- Use GitHub Actions as the automation layer while keeping GenX API as the core product

## Key inputs in this release

- `config-path`
- `contract-path`
- `output-path`
- `publish-mode`
- `dry-run`
- `working-directory`
- `extra-args`
- `npm-token`
- `github-token`

## Notes

- This action is powered by GenX API and is intentionally thin
- Product logic continues to live in the main GenX API project
- This release focuses on GitHub workflow adoption and Marketplace readiness
- Future releases may expand validation, outputs, and workflow guidance as GenX API evolves

## Getting started

See the repository README for:
- workflow examples
- supported inputs and outputs
- dry-run usage
- publish examples
- guidance on when to use the action versus the CLI directly
