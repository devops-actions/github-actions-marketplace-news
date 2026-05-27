---
title: Requirements Tracer
date: 2026-05-27 22:47:09 +00:00
tags:
  - Underwood-Inc
  - GitHub Actions
draft: false
repo: https://github.com/Underwood-Inc/requirements-tracer-action
marketplace: https://github.com/marketplace/actions/requirements-tracer
version: v0.1.4
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/Underwood-Inc/requirements-tracer-action** to version **v0.1.4**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/requirements-tracer) to find the latest changes.

## Action Summary

The **Requirements Tracer GitHub Action** automates the process of linking automated tests to requirement IDs defined in a YAML registry, performing audits to ensure traceability, and generating a detailed, searchable HTML report. It helps teams maintain robust requirements traceability by identifying missing or mismatched test-to-requirement links and provides real-time feedback in CI/CD workflows through pull request comments and annotations. Key capabilities include cross-checking test coverage, supporting multiple requirement types, and simplifying traceability reporting with downloadable artifacts.

## What's Changed

## Fixes

- **HTML report:** requirements table was empty because the client script had escaped template literals instead of real backticks. Summary stats rendered server-side; row rendering never ran in the browser.

## Adopters

```yaml
uses: Underwood-Inc/requirements-tracer-action@v0.1.4
with:
  tracer-package: '@underwoodinc/requirements-tracer@0.1.4'
```

