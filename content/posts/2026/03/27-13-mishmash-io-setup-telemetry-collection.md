---
title: Setup OpenTelemetry signals collection
date: 2026-03-27 13:57:05 +00:00
tags:
  - mishmash-io
  - GitHub Actions
draft: false
repo: https://github.com/mishmash-io/setup-telemetry-collection
marketplace: https://github.com/marketplace/actions/setup-opentelemetry-signals-collection
version: v1.0.4
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/mishmash-io/setup-telemetry-collection** to version **v1.0.4**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-opentelemetry-signals-collection) to find the latest changes.

## Action Summary

The `setup-telemetry-collection` GitHub Action automates the setup of OpenTelemetry in CI/CD workflows to collect and export telemetry data such as logs, metrics, traces, and profiles. It simplifies the process by handling the download, configuration, and management of OpenTelemetry agents, as well as saving the collected data as Apache Parquet files, which can be used for analytics to assess code behavior before production. This action eliminates the need for manual configuration, making it easier to integrate comprehensive observability into development pipelines.

## Release notes

# Release 1.0.4

## Summary

This is mostly a **security release** due to the following picomatch vulnerabilities:
- [Picomatch: Method Injection in POSIX Character Classes causes incorrect Glob Matching](https://osv.dev/vulnerability/GHSA-3v7f-55p6-f55p)
- [Picomatch has a ReDoS vulnerability via extglob quantifiers ](https://osv.dev/vulnerability/GHSA-3v7f-55p6-f55p)

## Configuration changes

The default version for the OpenTelemetry java instrumentation agent has changed. If your workflow yaml overrides this version (by setting the `java-agent-version` parameter) then you might want to update it too.

* Bump otel java agent default version to 2.26.1


## Dependency upgrades
* Bump picomatch to 2.3.2
* Bump @rollup/rollup-linux-x64-gnu to 4.60.0
* Bump the npm-development group across 1 directory with 3 updates

## CI/CD workflow updates
* Bump the actions-minor group with 2 updates

**Full Changelog**: https://github.com/mishmash-io/setup-telemetry-collection/compare/v1.0.3...v1.0.4
