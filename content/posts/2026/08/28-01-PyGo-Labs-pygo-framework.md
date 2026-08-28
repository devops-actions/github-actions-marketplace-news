---
title: PyGo CLI
date: 2026-08-28 01:55:28 +00:00
tags:
  - PyGo-Labs
  - GitHub Actions
draft: false
repo: https://github.com/PyGo-Labs/pygo-framework
marketplace: https://github.com/marketplace/actions/pygo-cli
version: v2.2.4
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action is a framework for building web applications using Go for the backend and Python for the domain layer. It uses UDS+MessagePack for communication between components, with support for Hot Reload in development mode. The action provides a modular structure, includes various modules like authentication, internationalization, admin panel, and notifications, and supports automated updates via GitHub Releases.
---


Version updated for **https://github.com/PyGo-Labs/pygo-framework** to version **v2.2.4**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pygo-cli) to find the latest changes.

## Action Summary

This GitHub Action is a framework for building web applications using Go for the backend and Python for the domain layer. It uses UDS+MessagePack for communication between components, with support for Hot Reload in development mode. The action provides a modular structure, includes various modules like authentication, internationalization, admin panel, and notifications, and supports automated updates via GitHub Releases.

## What's Changed

- chore: version interna 2.2.4 (coherente con tag) despues de fix de checksum (5a178e4)
- ci: checksums.txt con nombres sin prefijo dist/ para verificacion portatil (5061dfa)
- ci: release en un solo job - builda 5 binarios + checksums.txt y sube todo junto (8f06be0)
- ci: release workflow con Go 1.26.6 + checksums.txt (cce5aed)
- fix(cli): instalacion/upgrade robusta - binario crudo + checksum (cd65d6e)
- docs: actualizar a v2.2.1 - eliminar rastros v1/DSL y corregir roadmap (c9082ba)
- fix: reparar build roto y tests - unificar module path a 'pygo-framework' (f1b4a56)
- v2.2.0: transport layer abstraction - UDS+MessagePack default, gRPC opt-in (cedcece)
- docs: update README.md to v2.1.0 modular architecture and full CLI (274d92a)
- fix(cli): bump version strings to v2.1.0-native in version, info, main (cd27067)
