---
title: Pipery Java CI
date: 2026-04-29 06:07:59 +00:00
tags:
  - pipery-dev
  - GitHub Actions
draft: false
repo: https://github.com/pipery-dev/pipery-java-ci
marketplace: https://github.com/marketplace/actions/pipery-java-ci
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pipery-dev/pipery-java-ci** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipery-java-ci) to find the latest changes.

## Action Summary

The **Pipery Java CI** GitHub Action provides a reusable, automated continuous integration (CI) pipeline tailored for Java projects using Maven, Gradle, or Groovy. It streamlines common CI tasks such as static analysis (SAST/SCA), linting, building, testing, versioning, packaging, releasing, and reintegration into the default branch. By integrating with the Pipery platform, it offers structured logging and enhanced observability for each pipeline step, simplifying monitoring and troubleshooting.

## What's Changed

## v1.0.0

Complete Java CI pipeline: SAST, SCA, Checkstyle lint, build, test, version, JAR package, GitHub Release + SHA tag, reintegrate. Auto-detects Maven, Gradle, Groovy.

Every step runs under **psh** (Pipery Shell) for automatic structured JSONL logging.

### Usage

```yaml
uses: pipery-dev/pipery-java-ci@v1
```

See the [README](https://github.com/pipery-dev/pipery-java-ci#readme) for the full inputs reference.
