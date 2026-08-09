---
title: scheck-action
date: 2026-08-09 05:50:41 +00:00
tags:
  - rh-jfuller
  - GitHub Actions
draft: false
repo: https://github.com/rh-jfuller/scheck-action-v1
marketplace: https://github.com/marketplace/actions/scheck-action
version: 0.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The scheck GitHub Action automates JSON/YAML validation against assertion-based rules using the scheck tool. It supports text, JSON, and SARIF output formats with optional uploading to GitHub Code Scanning. Key capabilities include flexible rule file selection, support for multiple phases, input/output formats, and non-blocking validation options.
---


Version updated for **https://github.com/rh-jfuller/scheck-action-v1** to version **0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/scheck-action) to find the latest changes.

## Action Summary

The scheck GitHub Action automates JSON/YAML validation against assertion-based rules using the scheck tool. It supports text, JSON, and SARIF output formats with optional uploading to GitHub Code Scanning. Key capabilities include flexible rule file selection, support for multiple phases, input/output formats, and non-blocking validation options.

## What's Changed

Initial release of the scheck GitHub Action.

Validate JSON/YAML documents against [scheck](https://github.com/rh-jfuller/scheck) assertion-based rules directly in your CI pipeline.

## Features
- Install scheck automatically (any version, defaults to latest)
- Validate documents against one or more rule files
- Support for all rule formats: DSL, JSON, Schematron, freetext
- Optional phase and context (JSONPath subtree) filtering
- Text or JSON output
- Configurable fail-on-findings behavior

## Usage

```yaml
- uses: rh-jfuller/scheck-action-v1@v1
  with:
    document: config.json
    rules: rules/security.scheck
