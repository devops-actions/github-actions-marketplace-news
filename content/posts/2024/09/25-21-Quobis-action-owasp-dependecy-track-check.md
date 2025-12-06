---
title: OWASP Dependency Track check
date: 2024-09-25 21:36:41 +00:00
tags:
  - Quobis
  - GitHub Actions
draft: false
repo: Quobis/action-owasp-dependecy-track-check
marketplace: https://github.com/marketplace/actions/owasp-dependency-track-check
version: v1.3.1
dependentsNumber: "29"
---


Version updated for **Quobis/action-owasp-dependecy-track-check** to version **v1.3.1**.
- This action is used across all versions by **29** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/owasp-dependency-track-check) to find the latest changes.

## Release notes

[#12 ](https://github.com/Quobis/action-owasp-dependecy-track-check/issues/12) **Fix cyclonedx go**:
 cyclonedx-go requires modules support (aka a go.mod file), so by adding a temporary file and removing it afterwards the container will build.
