---
title: Spring Upgrade Radar
date: 2026-06-18 15:29:04 +00:00
tags:
  - purewater02
  - GitHub Actions
draft: false
repo: https://github.com/purewater02/spring-upgrade-radar
marketplace: https://github.com/marketplace/actions/spring-upgrade-radar
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/purewater02/spring-upgrade-radar** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spring-upgrade-radar) to find the latest changes.

## What's Changed

## Spring Upgrade Radar v0.1.1

Launch-ready release for publishing Spring Upgrade Radar as a free GitHub Action in GitHub Marketplace.

### Highlights

- Free composite GitHub Action for CI-based Spring Boot migration scanning.
- Local-first CLI: source code stays on the runner/machine.
- Generates Markdown and HTML reports with risk score, readiness grade, top risks, and estimated roadmap.
- Exports migration tickets as JSON, Jira CSV, and GitHub Issues Markdown.
- Hardened packaging so `pip install -e .` works in clean clones.
- CLI now auto-creates output directories such as `out/report.md`.
- Corrected Migration Readiness Grade table in generated reports and public samples.
- Added Marketplace submission notes and clarified pricing: the Action is free; optional Pro services are external add-ons.

### GitHub Action usage

```yaml
name: Spring Upgrade Radar

on:
  workflow_dispatch:
  pull_request:
    paths:
      - "**/pom.xml"
      - "**/build.gradle"
      - "**/*.java"

jobs:
  scan:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-python@v5
        with:
          python-version: "3.11"
      - uses: purewater02/spring-upgrade-radar@v0.1.1
        with:
          project-path: "."
          target-version: "3.5"
          output-dir: "spring-upgrade-radar-output"
      - uses: actions/upload-artifact@v4
        with:
          name: spring-upgrade-radar-report
          path: spring-upgrade-radar-output/
```

### Validation

- Local unit tests: 27 passing.
- `action.yml` metadata parsed and validated.
- GitHub Actions CI succeeded on Python 3.11 and 3.12.
- GitHub Pages deployment succeeded.
- Public launch/Marketplace notes URLs verified.

### Marketplace note

The GitHub Action is free. Optional Pro Report / Team Assessment services are external add-ons while demand is validated; they are not paid GitHub Marketplace plans.
