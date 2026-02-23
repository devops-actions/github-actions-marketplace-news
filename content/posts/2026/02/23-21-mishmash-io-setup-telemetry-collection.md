---
title: Setup OpenTelemetry signals collection
date: 2026-02-23 21:45:35 +00:00
tags:
  - mishmash-io
  - GitHub Actions
draft: false
repo: https://github.com/mishmash-io/setup-telemetry-collection
marketplace: https://github.com/marketplace/actions/setup-opentelemetry-signals-collection
version: v1.0.1
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/mishmash-io/setup-telemetry-collection** to version **v1.0.1**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-opentelemetry-signals-collection) to find the latest changes.

## Action Summary

The `setup-telemetry-collection` GitHub Action automates the setup and configuration of OpenTelemetry in CI/CD pipelines to collect comprehensive telemetry data, including logs, metrics, traces, and profiles. It eliminates manual steps by downloading agents, configuring them, and saving telemetry data as Apache Parquet files, enabling analytics on code behavior before production. This action streamlines telemetry collection and artifact management for improved observability and insights.

## Release notes

# Security update due to vulnerabilities in dependencies

Previous versions of this github action depended on [a vulnerable fast-xml-parser version](https://github.com/advisories/GHSA-jmr7-xgp7-cmfj).

Additionally, during build - eslint was using [a vulnerable version of minimatch](https://github.com/advisories/GHSA-3ppc-4f35-3m26).

This release - **setup-telemetry-action 1.0.1** fixes both of the above.

## What's Changed

* Bump eslint from 9.39.2 to 10.0.1 by @dependabot[bot], @arusevm
* Bump fast-xml-parser from 5.3.4 to 5.3.6 by @dependabot[bot]
* 
**Full Changelog**: https://github.com/mishmash-io/setup-telemetry-collection/compare/v1.0.0...v1.0.1
