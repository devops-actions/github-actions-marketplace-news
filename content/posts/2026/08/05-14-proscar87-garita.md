---
title: Garita PII Guard
date: 2026-08-05 14:59:29 +00:00
tags:
  - proscar87
  - GitHub Actions
draft: false
repo: https://github.com/proscar87/garita
marketplace: https://github.com/marketplace/actions/garita-pii-guard
version: v0.12.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Garita is a GitHub Action that prevents sensitive personal and credential data from entering your repository. It uses a whitelist of allowed names, domains, or serial numbers to detect potential PII in commit messages and files. The action supports various detectors such as CURP, RFC, CLABE, NSS, phone numbers, JWTs, and more, with the ability to ignore certain patterns like passwords. Garita provides a single list that prevents sensitive data from entering the repository by reading it directly from your configuration file without executing it.
---


Version updated for **https://github.com/proscar87/garita** to version **v0.12.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/garita-pii-guard) to find the latest changes.

## Action Summary

Garita is a GitHub Action that prevents sensitive personal and credential data from entering your repository. It uses a whitelist of allowed names, domains, or serial numbers to detect potential PII in commit messages and files. The action supports various detectors such as CURP, RFC, CLABE, NSS, phone numbers, JWTs, and more, with the ability to ignore certain patterns like passwords. Garita provides a single list that prevents sensitive data from entering the repository by reading it directly from your configuration file without executing it.

## What's Changed

Tres países nuevos con algoritmo reproducido contra vectores públicos: RIF venezolano (SENIAT/PDVSA), RUC paraguayo (código oficial de la SET), NIT guatemalteco (spec FEL de la SAT). Bolivia, Costa Rica y Panamá quedan fuera documentados: sin fuente verificable no hay detector. Dieciséis países.
