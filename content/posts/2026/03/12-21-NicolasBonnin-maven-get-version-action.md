---
title: Maven Get Version
date: 2026-03-12 21:39:22 +00:00
tags:
  - NicolasBonnin
  - GitHub Actions
draft: false
repo: https://github.com/NicolasBonnin/maven-get-version-action
marketplace: https://github.com/marketplace/actions/maven-get-version
version: v4.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/NicolasBonnin/maven-get-version-action** to version **v4.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/maven-get-version) to find the latest changes.

## Action Summary

The `maven-get-version-action` GitHub Action retrieves the version specified in a `pom.xml` file from a Maven project and outputs it as a reusable variable within a workflow. This automation simplifies tasks that require extracting and using project version information, enabling seamless integration of version management in CI/CD pipelines.

## Release notes

 ## Breaking changes

  - Docker base image updated from Java 11 to Java 21 (Temurin). This should not affect most users since `help:evaluate`
   doesn't compile project code, but if you depend on the JDK version inside the action container, this is a breaking
  change.

  ## Security

  - Removed `eval` usage in entrypoint — Maven command is now executed directly, eliminating command injection risk.

  ## Bug fixes

  - Fixed `args` input default from `'.'` to `''` — the previous default was being passed as a spurious Maven argument.
  - Empty version output is now caught and fails the action instead of silently continuing.

  ## Improvements

  - Added `set -e` for fail-fast behavior
  - Added pom.xml existence check with `::error::` annotation
  - Proper variable quoting throughout the entrypoint
  - Bumped Maven 3.9.3 → 3.9.9
  - Bumped `actions/checkout` v3 → v4 in CI workflow
