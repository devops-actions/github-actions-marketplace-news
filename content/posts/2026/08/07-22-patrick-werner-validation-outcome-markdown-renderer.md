---
title: FHIR Validation Markdown Renderer
date: 2026-08-07 22:45:50 +00:00
tags:
  - patrick-werner
  - GitHub Actions
draft: false
repo: https://github.com/patrick-werner/validation-outcome-markdown-renderer
marketplace: https://github.com/marketplace/actions/fhir-validation-markdown-renderer
version: v1.5.0
dependentsNumber: "10"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action parses a FHIR `OperationOutcome` bundle and emits annotations in the GitHub Checks UI for issues at or above the configured severity. It supports filtering out known issues using specified patterns in filename, messageId, details (with wildcard), and location, and generates a summary Markdown table in PR comments.
---


Version updated for **https://github.com/patrick-werner/validation-outcome-markdown-renderer** to version **v1.5.0**.

- This action is used across all versions by **10** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fhir-validation-markdown-renderer) to find the latest changes.

## Action Summary

This GitHub Action parses a FHIR `OperationOutcome` bundle and emits annotations in the GitHub Checks UI for issues at or above the configured severity. It supports filtering out known issues using specified patterns in filename, messageId, details (with wildcard), and location, and generates a summary Markdown table in PR comments.

## What's Changed

## [1.5.0] - 2026-08-07

### Changed

- The action runs on the `node24` runtime instead of `node20`, which GitHub has
  deprecated. Workflows keep working unchanged, but the runner has to be new enough to
  provide Node 24: GitHub-hosted runners are, self-hosted runners need runner 2.327.1
  or newer, and GitHub Enterprise Server needs 3.19 or newer. On an older runner the
  step fails to start rather than falling back to Node 20.


