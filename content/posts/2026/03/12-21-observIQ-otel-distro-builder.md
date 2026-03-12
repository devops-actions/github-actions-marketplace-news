---
title: OpenTelemetry Distribution Builder
date: 2026-03-12 21:39:18 +00:00
tags:
  - observIQ
  - GitHub Actions
draft: false
repo: https://github.com/observIQ/otel-distro-builder
marketplace: https://github.com/marketplace/actions/opentelemetry-distribution-builder
version: v1.1.2
dependentsNumber: "8"
actionType: Docker
---


Version updated for **https://github.com/observIQ/otel-distro-builder** to version **v1.1.2**.
- This action is used across all versions by **8** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opentelemetry-distribution-builder) to find the latest changes.

## Action Summary

The OpenTelemetry Distribution Builder is a tool for creating custom OpenTelemetry Collector distributions using manifest files. It automates the process of building multi-platform binaries, generating installation packages, and managing versioned releases, simplifying the challenges of custom collector distribution. With features like GitHub Actions integration, platform-specific builds, and multi-format packaging, it enables efficient CI/CD workflows and streamlines OpenTelemetry distribution management.

## Release notes

## Features
  - **BYOC compatibility** — Restructured `bindplane_components.yaml` to a minimal BYOC component set
  - `--bindplane-version` CLI arg — New `-b` flag to override the Bindplane component version from CLI and shell scripts                                      
  - Core/contrib version split — Provider modules now correctly use core v1.x versioning while all other components use contrib v0.x, fixing build failures with OTel 0.140.0+
  - Manifest kept by default — `--from-config` builds now include the generated manifest in artifacts
  - Sample OpAMP config — Added `supervisor_config.yaml` template for Bindplane OpAMP setup
  - core field in versions.yaml — All 28 supported OTel versions now map to their corresponding core version

## Bug Fixes
  - Fixed provider modules using wrong version (v0.x instead of v1.x) causing unknown revision build errors
  - Fixed Go version for OTel 0.140.0+ (bumped from 1.24.0 to 1.24.11, required by bindplaneextension)
  - Fixed replaces format crash in manifest generator (now handles plain strings)
  - Fixed connectors not being merged from Bindplane components into generated manifests
