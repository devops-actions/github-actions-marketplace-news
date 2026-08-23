---
title: PyGo CLI
date: 2026-08-23 05:57:14 +00:00
tags:
  - PyGo-Labs
  - GitHub Actions
draft: false
repo: https://github.com/PyGo-Labs/pygo-framework
marketplace: https://github.com/marketplace/actions/pygo-cli
version: v1.3.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  PyGo Framework is a Go + Python monolithic architecture that uses DSL code generation to define models, handlers, and routes. It supports various data types such as UUIDs, emails, datetimes, URLs, phone numbers, decimals, optional values, arrays, maps, enums with numeric or string values, and automatic ForeignKey JOINs for database relationships. The action automates the process of defining and generating code based on a DSL file, simplifying development workflows by reducing boilerplate and increasing maintainability.
---


Version updated for **https://github.com/PyGo-Labs/pygo-framework** to version **v1.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pygo-cli) to find the latest changes.

## Action Summary

PyGo Framework is a Go + Python monolithic architecture that uses DSL code generation to define models, handlers, and routes. It supports various data types such as UUIDs, emails, datetimes, URLs, phone numbers, decimals, optional values, arrays, maps, enums with numeric or string values, and automatic ForeignKey JOINs for database relationships. The action automates the process of defining and generating code based on a DSL file, simplifying development workflows by reducing boilerplate and increasing maintainability.

## What's Changed

- fix(cli): module install now extracts archives and registers in pygo.toml (17635c8)
- fix(web): no filtrar token, solo _path/_method (a0d91f9)
- fix(web): filtrar _path/_method como parametros internos (7075ff7)
- fix(web): servir HTML sin envolver en JSON + recover por handler (c59353d)
- feat: Installation system + GitHub Actions release pipeline (f42d57b)
- fix(web): Router multi-method dispatch + hot-reload CLI (ecf0e1c)
- fix(web): Router multi-method dispatch + CRUD endpoints for pgerp (14b54ff)
- refactor: Native dual-language example + CLI hot-reload (8669130)
- fix(bridge): Prevent Python subprocess death — store cancellable context (f5ed516)
- refactor: Eliminate DSL entirely — native Go+Python dual architecture (92fde4a)
