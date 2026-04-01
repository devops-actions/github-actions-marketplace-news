---
title: Data CI
date: 2026-04-01 13:57:13 +00:00
tags:
  - tripleaceme
  - GitHub Actions
draft: false
repo: https://github.com/tripleaceme/dataci
marketplace: https://github.com/marketplace/actions/data-ci
version: v1.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/tripleaceme/dataci** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/data-ci) to find the latest changes.

## Action Summary

DataCI is a GitHub Action designed for CI/CD in analytics engineering, specifically for dbt projects. It automates impact analysis, test coverage evaluation, and risk assessment of dbt model changes in pull requests, providing detailed feedback directly on PRs without requiring a database connection or additional setup like `profiles.yml`. Key features include downstream dependency tracing, test coverage reporting, quality gates to enforce testing standards, and automated manifest generation for streamlined workflows.

## What's Changed

## Data CI v1.0.0 — CI/CD for Analytics Engineering

The missing CI layer for dbt projects. Data CI posts a detailed report on every pull request.

### Features
- **Impact Analysis** — traces downstream dependencies and shows blast radius
- **Test Coverage** — reports % of models tested, flags changed models without tests
- **Quality Gates** — optionally fail PRs with missing tests or low coverage
- **Smart Comments** — one comment per PR, updates in place on new pushes

### Quick Start

```yaml
- uses: tripleaceme/dataci@v1
  with:
    manifest-path: 'target/manifest.json'
    github-token: ${{ secrets.GITHUB_TOKEN }}
```

No database credentials needed. Pure static analysis of `manifest.json`.

### Roadmap
- AI-powered SQL review (v1.1)
- Query cost estimation for BigQuery/Snowflake (v1.2)
- Lineage visualization with Mermaid diagrams (v1.3)
