---
title: Pipery Python CI
date: 2026-04-29 14:40:49 +00:00
tags:
  - pipery-dev
  - GitHub Actions
draft: false
repo: https://github.com/pipery-dev/pipery-python-ci
marketplace: https://github.com/marketplace/actions/pipery-python-ci
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pipery-dev/pipery-python-ci** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipery-python-ci) to find the latest changes.

## Action Summary

The **Pipery Python CI** GitHub Action provides an automated, reusable Python Continuous Integration (CI) pipeline that performs tasks such as static code analysis, security checks, linting, building, testing, versioning, packaging, and releasing Python projects. By integrating with the Pipery platform, it offers structured logging and enhanced observability of CI workflows, helping developers streamline and monitor the entire software development lifecycle. This action simplifies the CI process and ensures consistent quality and compliance for Python projects.

## What's Changed

## v1.0.0

Complete Python CI pipeline: SAST, SCA, Ruff lint, build, test, version, python-build, PyPI publish, reintegrate.

Every step runs under **psh** (Pipery Shell) for automatic structured JSONL logging.

### Usage

```yaml
uses: pipery-dev/pipery-python-ci@v1
```

See the [README](https://github.com/pipery-dev/pipery-python-ci#readme) for the full inputs reference.
