---
title: PCI Payment Page Script Check
date: 2026-08-21 14:10:19 +00:00
tags:
  - ntoledo319
  - GitHub Actions
draft: false
repo: https://github.com/ntoledo319/pci-payment-page-check
marketplace: https://github.com/marketplace/actions/pci-payment-page-script-check
version: v1.1.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action checks the third-party scripts loaded on a payment page to ensure they are authorized and meet PCI DSS requirements. It fails the build if an unauthorized script is detected, helping prevent security issues related to payment processing. The action supports different scopes (direct, embedded, or outsourced) depending on how scripts are integrated into the payment page.
---


Version updated for **https://github.com/ntoledo319/pci-payment-page-check** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pci-payment-page-script-check) to find the latest changes.

## Action Summary

This GitHub Action checks the third-party scripts loaded on a payment page to ensure they are authorized and meet PCI DSS requirements. It fails the build if an unauthorized script is detected, helping prevent security issues related to payment processing. The action supports different scopes (direct, embedded, or outsourced) depending on how scripts are integrated into the payment page.

## What's Changed

Adds truthful, copy-ready recipes for directly controlled card fields, embedded processor forms, and redirect or fully outsourced checkout flows. The Action behavior and bounded served-HTML contract are unchanged; all 14 security and contract tests pass.
