---
title: Aqua Security Trivy installer
date: 2026-01-15 22:04:20 +00:00
tags:
  - aquasecurity
  - GitHub Actions
draft: false
repo: https://github.com/aquasecurity/setup-trivy
marketplace: https://github.com/marketplace/actions/aqua-security-trivy-installer
version: v0.2.5
dependentsNumber: "428"
---


Version updated for **https://github.com/aquasecurity/setup-trivy** to version **v0.2.5**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **428** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aqua-security-trivy-installer) to find the latest changes.

## Action Summary

The `setup-trivy` GitHub Action simplifies the process of installing and configuring specific versions of Trivy, a security scanner for container images, filesystems, and code repositories, in GitHub Actions workflows. It automates the installation and caching of the Trivy binary, reducing setup time and providing support for custom configurations, such as caching paths, tokens, and server URLs. This action is particularly useful for streamlining security scanning tasks in CI/CD pipelines.

## Release notes

## What's Changed
* chore: use the -c flag on install script by @owenrumney in https://github.com/aquasecurity/setup-trivy/pull/24
* chore(deps): bump actions version by @DmitriyLewen in https://github.com/aquasecurity/setup-trivy/pull/25
* ci: use `restore` and `save` instead of `actions/cache` by @DmitriyLewen in https://github.com/aquasecurity/setup-trivy/pull/19
* docs: use commit SHA and update Trivy version to v0.68.2 by @DmitriyLewen in https://github.com/aquasecurity/setup-trivy/pull/26
* Pin Trivy install script checkout to a specific commit by @thara in https://github.com/aquasecurity/setup-trivy/pull/28

## New Contributors
* @owenrumney made their first contribution in https://github.com/aquasecurity/setup-trivy/pull/24
* @thara made their first contribution in https://github.com/aquasecurity/setup-trivy/pull/28

**Full Changelog**: https://github.com/aquasecurity/setup-trivy/compare/v0.2.4...v0.2.5
