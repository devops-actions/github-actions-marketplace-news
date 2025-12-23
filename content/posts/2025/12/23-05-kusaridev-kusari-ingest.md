---
title: Kusari Ingest
date: 2025-12-23 05:28:45 +00:00
tags:
  - kusaridev
  - GitHub Actions
draft: false
repo: https://github.com/kusaridev/kusari-ingest
marketplace: https://github.com/marketplace/actions/kusari-ingest
version: v2.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/kusaridev/kusari-ingest** to version **v2.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kusari-ingest) to find the latest changes.

## Action Summary

The `kusari-ingest` GitHub Action automates the ingestion of various artifacts, such as SBOMs, SLSA, and other attestations, into the Kusari Platform as part of a CI/CD workflow. It simplifies integration with Kusari by enabling secure artifact uploads with minimal configuration, allowing users to streamline compliance, provenance, and security checks for their software supply chain. Key capabilities include support for OpenVEX documents, dependency checks against blocked packages, and tagging or grouping artifacts for efficient management.

## Release notes

## What's Changed
* Allow checking SBOM deps against blocked pkg list by @nchelluri in https://github.com/kusaridev/kusari-ingest/pull/12
* Document exit status on blocked package check by @nchelluri in https://github.com/kusaridev/kusari-ingest/pull/13
* update action to use kusari CLI instead of kusari uploader (deprecated) by @pxp928 in https://github.com/kusaridev/kusari-ingest/pull/14


**Full Changelog**: https://github.com/kusaridev/kusari-ingest/compare/v1.0.2...v2.0.0
