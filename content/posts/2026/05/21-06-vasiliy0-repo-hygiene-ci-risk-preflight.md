---
title: Repository Hygiene / CI Risk Preflight
date: 2026-05-21 06:41:43 +00:00
tags:
  - vasiliy0
  - GitHub Actions
draft: false
repo: https://github.com/vasiliy0/repo-hygiene-ci-risk-preflight
marketplace: https://github.com/marketplace/actions/repository-hygiene-ci-risk-preflight
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/vasiliy0/repo-hygiene-ci-risk-preflight** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repository-hygiene-ci-risk-preflight) to find the latest changes.

## Action Summary

This GitHub Action performs automated repository hygiene and CI risk assessments to ensure release readiness and mitigate potential blockers before making a repository public, adding CI gates, or publishing a package. It scans local files to identify issues such as outdated dependencies, insecure CI configurations, missing project documentation, and inadequate release safety measures, helping developers improve repository quality and compliance. Key capabilities include generating actionable reports and integrating checks into CI workflows without requiring tokens or external API access.

## What's Changed

# Repository Hygiene / CI Risk Preflight v0.1.1

Agent/CI integration release.

## Added

- Versioned JSON report contract fields: `schema_version`, `tool_version`, `status`, `summary`, and `metadata`.
- JSON schema at `schemas/report.schema.json`.
- AI-agent integration guide at `docs/AGENT_INTEGRATION.md`.
- Automation-safe `--quiet` and `--no-color` flags.
- Marketplace-ready composite `action.yml` for local/no-token scans.

## Compatibility

Existing JSON fields, Markdown output, annotations, config, baselines, and severity gates remain available.

