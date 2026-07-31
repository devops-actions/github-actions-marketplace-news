---
title: PolicyStrata Scan
date: 2026-07-31 06:43:47 +00:00
tags:
  - raintree-technology
  - GitHub Actions
draft: false
repo: https://github.com/raintree-technology/policystrata
marketplace: https://github.com/marketplace/actions/policystrata-scan
version: v1.1.3
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  PolicyStrata is a tool designed to catch SQL/data-agent policy drift in CI. It checks transitions between model-visible tools, semantic validation, SQL compilation, database containment, and result release, and writes small witnesses identifying the first layer that broke the policy. The action ensures deterministic runs with no LLM API key and local evidence storage.
---


Version updated for **https://github.com/raintree-technology/policystrata** to version **v1.1.3**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/policystrata-scan) to find the latest changes.

## Action Summary

PolicyStrata is a tool designed to catch SQL/data-agent policy drift in CI. It checks transitions between model-visible tools, semantic validation, SQL compilation, database containment, and result release, and writes small witnesses identifying the first layer that broke the policy. The action ensures deterministic runs with no LLM API key and local evidence storage.

## What's Changed

PolicyStrata 1.1.3 hardens type safety across the Python scanner, Node runtime, and Agent Trust Gateway.

- Enforces strict Python and TypeScript checking across source, scripts, and tests.
- Validates runtime manifests and events at untyped boundaries without unsafe structural casts.
- Removes undefined-valued trace properties, redundant validators, stale comments, and duplicate parser coverage.
- Publishes `policystrata@0.1.5` and `@policystrata/agent-trust-gateway@0.1.3`.
**Full Changelog**: https://github.com/raintree-technology/policystrata/compare/v1.1.2...v1.1.3
