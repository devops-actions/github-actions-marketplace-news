---
title: agents-md-lint
date: 2026-08-08 21:55:27 +00:00
tags:
  - Taiizor
  - GitHub Actions
draft: false
repo: https://github.com/Taiizor/agents-md-cookbook
marketplace: https://github.com/marketplace/actions/agents-md-lint
version: v1.0.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The `agents-md-cookbook` GitHub Action automates the creation of a standardized `AGENTS.md` file that outlines coding guidelines and best practices, ensuring consistency across multiple development tools. This action helps developers maintain clear documentation on how their projects should be structured, tested, and managed, leveraging a set of pre-defined templates for various programming languages and frameworks. By providing linting capabilities and compatibility with multiple code generation tools, it simplifies the setup process and reduces the risk of errors in coding agent configurations.
---


Version updated for **https://github.com/Taiizor/agents-md-cookbook** to version **v1.0.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agents-md-lint) to find the latest changes.

## Action Summary

The `agents-md-cookbook` GitHub Action automates the creation of a standardized `AGENTS.md` file that outlines coding guidelines and best practices, ensuring consistency across multiple development tools. This action helps developers maintain clear documentation on how their projects should be structured, tested, and managed, leveraging a set of pre-defined templates for various programming languages and frameworks. By providing linting capabilities and compatibility with multiple code generation tools, it simplifies the setup process and reduces the risk of errors in coding agent configurations.

## What's Changed

Patch release **v1.0.1** of **agents-md-cookbook** — bringing new stack templates, security guidelines, and updated tooling dependencies.

## What's new in v1.0.1
- **New Template: Tuurio OIDC + React + Vite** ([`templates/tuurio-oidc-react-vite/AGENTS.md`](./templates/tuurio-oidc-react-vite/AGENTS.md)) — A command-first guide for integrating Tuurio ID into React/Vite public clients using OpenID Connect, Authorization Code, and PKCE S256 with strict agent security boundaries. (#13 by @kraus-it)
- **Version Alignment:** Updated workspace version to `1.0.1` across `agents-md-cookbook`, `agents-md-lint`, and `agents-md-migrate`.
- **Tooling & Dependency Updates:** Upgraded `markdownlint-cli2`, `typescript`, `@types/node`, and `actions/checkout` to latest releases.

## Quick start
```bash
bunx agents-md-migrate@1.0.1          # convert legacy rule files -> AGENTS.md
bunx agents-md-lint@1.0.1 AGENTS.md   # lint and score it
```

GitHub Action:
```yaml
- uses: Taiizor/agents-md-cookbook@v1.0.1
  with:
    path: AGENTS.md
```

