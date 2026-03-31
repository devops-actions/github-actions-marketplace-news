---
title: OpenAPI Merge
date: 2026-03-31 22:12:13 +00:00
tags:
  - rperez95
  - GitHub Actions
draft: false
repo: https://github.com/rperez95/openapi-merge
marketplace: https://github.com/marketplace/actions/openapi-merge
version: v1.0.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/rperez95/openapi-merge** to version **v1.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/openapi-merge) to find the latest changes.

## Action Summary

The `openapi-merge` GitHub Action is designed to automate the merging of multiple OpenAPI specifications (Swagger 2.0 and OpenAPI 3.x) into a single unified OpenAPI 3.0 file. It simplifies the process of combining and standardizing API definitions by supporting features such as auto-conversion from Swagger 2.0, fetching specs from remote sources, modifying paths, filtering operations, and resolving conflicts. This tool is particularly useful for managing and consolidating API documentation in complex projects.

## What's Changed

## OpenAPI Merge 1.0.0

### Installation

**Using Go:**
```bash
go install github.com/rperez95/openapi-merge@v1.0.0
```

**Using GitHub Action:**
```yaml
- uses: rperez95/openapi-merge@v1.0.0
  with:
    config: merge-config.yaml
```

## Changelog
* 390b3be35eedf33737980abf3ac2fe5d3868a398 chore(ci): bump actions/deploy-pages from 4 to 5
* ccbaf47b5a1b9d00ed3494b2fbde639fe0de8f6f chore(ci): bump actions/upload-artifact from 6 to 7
* 56c9bc24884cf0826bc966b1b411dfc9d44a968f chore(ci): bump goreleaser/goreleaser-action from 6 to 7
* eec8a45b5972d62d1b8c16167cb5305b245e81ed chore(deps): bump github.com/getkin/kin-openapi from 0.133.0 to 0.134.0
* ba5a7fefccc3d66d49b31f28e0edff2389f101cb chore(release): prepare repository for v1.0.0


