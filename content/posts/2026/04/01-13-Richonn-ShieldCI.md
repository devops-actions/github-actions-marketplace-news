---
title: ShieldCI — DevSecOps Pipeline Generator
date: 2026-04-01 13:57:27 +00:00
tags:
  - Richonn
  - GitHub Actions
draft: false
repo: https://github.com/Richonn/ShieldCI
marketplace: https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator
version: v1.4.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/Richonn/ShieldCI** to version **v1.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator) to find the latest changes.

## Action Summary

ShieldCI is a GitHub Action designed to automate the generation of hardened CI/CD DevSecOps pipelines tailored to a project's stack. It detects project configurations, creates workflows for tasks such as testing, building, linting, and security scanning, and opens a pull request with the generated workflows. This action streamlines the setup of secure CI/CD pipelines, reducing manual effort and ensuring best practices in DevSecOps.

## What's Changed

## What's new

ShieldCI now automatically detects and handles monorepos. When multiple components are found in subdirectories, a dedicated set of workflows is generated per component — no manual configuration required.

### Monorepo detection

- Recursive directory scan up to a configurable depth (default: `3`)
- Each subdirectory containing a language marker (`go.mod`, `package.json`, `Cargo.toml`, etc.) is treated as an independent component
- Generated workflow files are prefixed with the component name: `user-service-ci.yml`, `media-service-lint.yml`, etc.

### New input: `max-depth`

```yaml
- uses: Richonn/ShieldCI@v1
  with:
    github-token: ${{ secrets.GH_TOKEN }}
    max-depth: '4'
```

Default is `3`, which covers most monorepo layouts (`services/<name>/`).

### Excluded directories

The following directories are automatically skipped during scanning:
`node_modules`, `vendor`, `bin`, `dist`, `build`, `target`, `testdata`, `.idea`, `.vscode`, `migrations`, `monitoring`, `docs`, `infrastructure`, `shared-protos`, `scripts`

