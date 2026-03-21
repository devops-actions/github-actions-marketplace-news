---
title: Setup OpenTelemetry signals collection
date: 2026-03-21 13:30:23 +00:00
tags:
  - mishmash-io
  - GitHub Actions
draft: false
repo: https://github.com/mishmash-io/setup-telemetry-collection
marketplace: https://github.com/marketplace/actions/setup-opentelemetry-signals-collection
version: v1.0.3
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/mishmash-io/setup-telemetry-collection** to version **v1.0.3**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-opentelemetry-signals-collection) to find the latest changes.

## Action Summary

The `setup-telemetry-collection` GitHub Action simplifies the integration of OpenTelemetry into CI/CD pipelines by automatically configuring and managing telemetry agents and a lightweight backend server. It collects logs, metrics, traces, and profiles during test runs, saving them as Apache Parquet artifacts for post-build analysis, enabling developers to gain insights into code behavior before deployment. This action eliminates the complexity of manually setting up and configuring telemetry tools, streamlining the process for enhanced observability and analytics.

## Release notes

# Release 1.0.3

Release 1.0.3 of setup-telemetry-collection action introduces ***security updates.*** Users of this action are urged to update their workflows.

The following CVEs are resolved in this release:
- [fast-xml-parser numeric entity expansion](https://github.com/mishmash-io/setup-telemetry-collection/security/dependabot/25) 
- [fast-xml-parser entity expansion limits bypass](https://github.com/mishmash-io/setup-telemetry-collection/security/dependabot/26)
- [NodeJS flatted prototype pollution](https://github.com/mishmash-io/setup-telemetry-collection/security/dependabot/27)

## Other updates in this release
* Bump @actions/artifact to 6.2.1
* Bump github/codeql-action to 4.32.6
* Bump the npm-development group across 1 directory with 6 updates
* Pin actions versions, set per-job permissions
* Bump fast-xml-parser to 5.5.7
* Bump the actions-minor group with 2 updates
* Bump flatted from 3.4.1 to 3.4.2

## New Contributors
* @ossmmio made their first contribution in https://github.com/mishmash-io/setup-telemetry-collection/pull/36

**Full Changelog**: https://github.com/mishmash-io/setup-telemetry-collection/compare/v1.0.2...v1.0.3
