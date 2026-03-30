---
title: ReleaseRun Stack Health Check
date: 2026-03-30 14:12:55 +00:00
tags:
  - Releaserun
  - GitHub Actions
draft: false
repo: https://github.com/Releaserun/releaserun-action
marketplace: https://github.com/marketplace/actions/releaserun-stack-health-check
version: v2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Releaserun/releaserun-action** to version **v2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/releaserun-stack-health-check) to find the latest changes.

## Action Summary

The **ReleaseRun Stack Health Check** GitHub Action automates dependency health analysis by scanning project files (e.g., package manifests, Dockerfiles, Terraform configurations) for outdated versions, end-of-life dependencies, known CVEs, and overall version health. It provides a clear A-F grade for the project's tech stack and can post reports as PR comments, fail builds based on threshold grades, or generate JSON outputs for further scripting. This action streamlines dependency management and enhances software security by making stack health an integral part of CI workflows.

## What's Changed

## What's New in v2

### Repo-Aware Badges
Badges are now version-specific. Instead of generic ecosystem badges, the action detects the actual versions your project uses and generates badges for those specific versions.

### Auto-Update README
New `update-readme` input. When enabled on PR workflows, the action runs `releaserun readme --write` to commit version-specific health badges directly to your README.

### Badge Markdown Output
New `badge-markdown` output with copy-paste-ready markdown for your README.

### Improved File Parsing
- `pyproject.toml` support (PEP 621)
- Better Dockerfile ARG handling
- `.nvmrc` LTS alias filtering
- `docker-compose.yml` service version detection

### Full Changelog
https://github.com/Releaserun/releaserun-action/compare/v1.0.0...v2
