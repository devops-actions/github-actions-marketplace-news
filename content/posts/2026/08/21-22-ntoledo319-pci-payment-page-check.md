---
title: PCI Payment Page Script Check
date: 2026-08-21 22:02:07 +00:00
tags:
  - ntoledo319
  - GitHub Actions
draft: false
repo: https://github.com/ntoledo319/pci-payment-page-check
marketplace: https://github.com/marketplace/actions/pci-payment-page-script-check
version: v1.1.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action checks the third-party scripts on a payment page to ensure they are authorized according to PCI DSS v4.0.1 requirements 6.4.3 and 11.6.1. It fails the build if any unauthorized script is detected, helping prevent security risks associated with unreviewed third-party integrations.
---


Version updated for **https://github.com/ntoledo319/pci-payment-page-check** to version **v1.1.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pci-payment-page-script-check) to find the latest changes.

## Action Summary

This GitHub Action checks the third-party scripts on a payment page to ensure they are authorized according to PCI DSS v4.0.1 requirements 6.4.3 and 11.6.1. It fails the build if any unauthorized script is detected, helping prevent security risks associated with unreviewed third-party integrations.

## What's Changed

This patch makes the Action summary a safe handoff into Tessera without changing inputs or failure semantics.

- Adds a scope-matched “Put this result to work” section.
- Uses only readiness-gated, same-origin Tessera sample and checkout URLs from the API response.
- Allows only the documented PCI sample and checkout paths; rejects query strings, fragments, alternate origins, and unexpected paths.
- Never offers the recurring monitor for saved HTML, embedded, outsourced, or unspecified scope, and never synthesizes an unavailable checkout.
- Verified by 19 unit tests plus the contract-double integration smoke.

Existing workflows may continue to use `ntoledo319/pci-payment-page-check@v1`.
