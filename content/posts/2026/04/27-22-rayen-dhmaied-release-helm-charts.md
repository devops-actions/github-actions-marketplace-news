---
title: Release Helm Charts
date: 2026-04-27 22:02:41 +00:00
tags:
  - rayen-dhmaied
  - GitHub Actions
draft: false
repo: https://github.com/rayen-dhmaied/release-helm-charts
marketplace: https://github.com/marketplace/actions/release-helm-charts
version: v2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/rayen-dhmaied/release-helm-charts** to version **v2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/release-helm-charts) to find the latest changes.

## Action Summary

The "Release Helm Charts" GitHub Action automates the process of packaging and releasing Helm charts to a GitHub Pages branch. It simplifies chart management by identifying new or updated charts, skipping already-packaged versions, updating dependencies, generating required Helm index files, and pushing the changes to a designated branch. This action ensures a clean, up-to-date repository for hosting Helm charts, streamlining the workflow for developers.

## What's Changed

### Highlights

- Keeps the configured publish branch clean with only `index.yaml`, `index.html`, and chart package directories.
- Adds generated `index.html` from `index.html.template` with Helm repo usage commands.
- Supports first-time publish branch creation.
- Treats chart versions as immutable and skips already-published `name-version.tgz` packages.
- Fails fast on dependency, lint, package, index, commit, or push errors.
- Supports single-chart directories and multi-chart directories.
- Adds `chart_repo_url` and `commit_message` inputs.
- Computes the default GitHub Pages chart repo URL from `GITHUB_REPOSITORY`.
- Updates the README workflow example to use `@v2`.

### Upgrade Note

Use:

```yaml
uses: rayen-dhmaied/release-helm-charts@v2

