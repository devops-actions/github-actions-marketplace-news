---
title: SFCC Guard
date: 2026-06-11 07:18:15 +00:00
tags:
  - thiagohaabib
  - GitHub Actions
draft: false
repo: https://github.com/thiagohaabib/sfcc-guard
marketplace: https://github.com/marketplace/actions/sfcc-guard
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/thiagohaabib/sfcc-guard** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sfcc-guard) to find the latest changes.

## What's Changed

## SFCC Guard v1.0.0

Production safety guard for Salesforce Commerce Cloud.

### Rules included
- 🔴 R3 — Transaction.wrap missing on Order/Basket writes
- 🔴 R4 — Hook declared without implementation file
- 🔴 R5 — Invalid require() path (relative instead of SFCC cartridge path)
- 🔴 R9 — Promotion discount at or above threshold (default 99%)

### Install
Add to your repo at `.github/workflows/sfcc-guard.yml` — see README.
