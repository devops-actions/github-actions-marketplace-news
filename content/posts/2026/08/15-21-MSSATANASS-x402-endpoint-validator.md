---
title: x402 Endpoint Compliance Validator
date: 2026-08-15 21:42:53 +00:00
tags:
  - MSSATANASS
  - GitHub Actions
draft: false
repo: https://github.com/MSSATANASS/x402-endpoint-validator
marketplace: https://github.com/marketplace/actions/x402-endpoint-compliance-validator
version: v0.4.1
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  The GitHub Action checks x402 endpoints by hitting them with real probes and verifying compliance with the x402 spec. It provides 5 core conformance checks: reachability, manifest format, 402 response conformance, response time (P95), and payment-required behavior. The action supports optional telemetry inputs for additional features like webhooks, trend tracking, and private repo support.
---


Version updated for **https://github.com/MSSATANASS/x402-endpoint-validator** to version **v0.4.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/x402-endpoint-compliance-validator) to find the latest changes.

## Action Summary

The GitHub Action checks x402 endpoints by hitting them with real probes and verifying compliance with the x402 spec. It provides 5 core conformance checks: reachability, manifest format, 402 response conformance, response time (P95), and payment-required behavior. The action supports optional telemetry inputs for additional features like webhooks, trend tracking, and private repo support.

## What's Changed

## Documentation cleanup\n\n- Removed legacy ownership, support, and commercial references from the Marketplace README.\n- Updated examples to use MSSATANASS/x402-endpoint-validator@v1.\n- Clarified optional telemetry inputs and report-only authorization evidence.\n- No validator logic or tests changed.\n\nValidation: 82 passed, 77 subtests passed.
