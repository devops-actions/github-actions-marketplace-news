---
title: PyGo CLI
date: 2026-08-26 06:31:29 +00:00
tags:
  - PyGo-Labs
  - GitHub Actions
draft: false
repo: https://github.com/PyGo-Labs/pygo-framework
marketplace: https://github.com/marketplace/actions/pygo-cli
version: v2.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This action is designed to simplify the setup and development of Python applications using Go HTTP as the backend framework and Python for the domain logic, with communication over UDS+MessagePack. It promotes a modular structure, supports hot-reload during development, and provides a CLI for project creation and management. The action also includes features such as automatic CLI updates and support for popular modules like authentication, i18n, and admin interfaces.
---


Version updated for **https://github.com/PyGo-Labs/pygo-framework** to version **v2.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pygo-cli) to find the latest changes.

## Action Summary

This action is designed to simplify the setup and development of Python applications using Go HTTP as the backend framework and Python for the domain logic, with communication over UDS+MessagePack. It promotes a modular structure, supports hot-reload during development, and provides a CLI for project creation and management. The action also includes features such as automatic CLI updates and support for popular modules like authentication, i18n, and admin interfaces.

## What's Changed

- feat(core): complete partial/stub modules (81f1aad)
- feat(cli): complete CLI v2.0 with all commands (72fe4ea)
- refactor(v2.0): complete modular reorganization (6b6714b)
- fix(installer): handle gzip-only assets in addition to tar.gz (affcf3c)
- fix(cli): module install now extracts archives and registers in pygo.toml (17635c8)
- fix(web): no filtrar token, solo _path/_method (a0d91f9)
- fix(web): filtrar _path/_method como parametros internos (7075ff7)
- fix(web): servir HTML sin envolver en JSON + recover por handler (c59353d)
- feat: Installation system + GitHub Actions release pipeline (f42d57b)
- fix(web): Router multi-method dispatch + hot-reload CLI (ecf0e1c)
