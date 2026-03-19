---
title: OpenTelemetry Distribution Builder
date: 2026-03-19 21:48:09 +00:00
tags:
  - observIQ
  - GitHub Actions
draft: false
repo: https://github.com/observIQ/otel-distro-builder
marketplace: https://github.com/marketplace/actions/opentelemetry-distribution-builder
version: v1.2.0
dependentsNumber: "8"
actionType: Docker
---


Version updated for **https://github.com/observIQ/otel-distro-builder** to version **v1.2.0**.
- This action is used across all versions by **8** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opentelemetry-distribution-builder) to find the latest changes.

## Action Summary

The OpenTelemetry Distribution Builder GitHub Action automates the creation of custom OpenTelemetry Collector distributions by leveraging a manifest file to define components. It simplifies multi-platform binary builds, installation package generation, and versioned releases, eliminating the complexities of managing custom collectors. Key capabilities include multi-architecture support, GitHub Actions integration for CI/CD workflows, and streamlined distribution management without requiring Docker.

## Release notes

### Features

**Local Go module support (#60)**

The `--manifest` build path now supports OCB manifests that reference local Go modules via the `path` key. When a component entry includes a `path` pointing to a local directory, the builder resolves it relative to the manifest file location, copies the module tree into the build workspace, and rewrites the path so OCB can find it. This enables building custom collectors that include unpublished or private Go modules without requiring them to be available in a remote registry.

### Dependency Updates

**Bindplane collector bumped to v1.95.0 (#61)**

The default Bindplane collector version in `bindplane_components.yaml` has been updated from v1.93.0 to v1.95.0.

**`pluginreceiver` added to BYOC-compatible components (#62)**

`github.com/observiq/bindplane-otel-collector/receiver/pluginreceiver` is now included in the default set of Bindplane receivers. This makes the plugin receiver available in BYOC (Bring Your Own Collector) builds without manual manifest editing.

**OTel version mappings updated through v0.147.0 (#63)**

`versions.yaml` now covers OpenTelemetry Collector versions up to 0.147.0 (core v1.53.0). Newly added versions include 0.145.0, 0.146.0, 0.146.1, and 0.147.0, as well as several previously missing patch releases (0.129.1, 0.131.1, 0.132.1–0.132.4, 0.134.1, 0.140.1, 0.143.1). The fallback version has been updated from 0.144.0 to 0.147.0.

### Automation

**Automated OTel version update workflow (#63)**

A new CI workflow (`.github/workflows/update-otel-versions.yml`) runs weekly on Mondays and can be triggered manually. It executes a new Python script (`builder/scripts/update_versions_yaml.py`) that fetches the latest releases from the upstream `opentelemetry-collector-releases` repo, computes the correct core/supervisor/builder/Go version mappings, and opens a PR with any new entries. This removes the need to manually track and add upstream OTel releases to `versions.yaml`.

### Test Changes

- Added comprehensive unit tests for the local module resolution feature (`test_local_modules.py`)
- Added tests for the version update script (`test_update_versions.py`)
- Updated existing tests to dynamically pull the latest Bindplane version instead of hardcoding it
- Adjusted manifest generator and config parser tests for the new component additions
