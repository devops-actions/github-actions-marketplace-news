---
title: Fabric Lakehouse Metadata Hydrator
date: 2026-01-16 06:00:00 +00:00
tags:
  - mjtpena
  - GitHub Actions
draft: false
repo: https://github.com/mjtpena/fabric-hydrate
marketplace: https://github.com/marketplace/actions/fabric-lakehouse-metadata-hydrator
version: v1.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/mjtpena/fabric-hydrate** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fabric-lakehouse-metadata-hydrator) to find the latest changes.

## Action Summary

The Fabric Lakehouse Metadata Hydrator is a CLI tool and GitHub Action designed to automate the extraction, comparison, and generation of Microsoft Fabric-compatible metadata from Delta Lake table schemas. It addresses the lack of column-level schema information in Microsoft's REST API by reading Delta Lake schemas, generating metadata JSON for validation and documentation, and enabling schema comparisons between source tables and Fabric workspaces. The tool is production-ready, supports CI/CD workflows, and includes robust error handling, a schema diff engine, and integration with Azure storage.

## Release notes

Bug fixes:
- Fixed CI/linting issues (ruff, mypy)
- Fixed Windows-specific test patching issues
- Added PyPI publish workflow
