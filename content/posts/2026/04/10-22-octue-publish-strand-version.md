---
title: Publish strand version
date: 2026-04-10 22:01:10 +00:00
tags:
  - octue
  - GitHub Actions
draft: false
repo: https://github.com/octue/publish-strand-version
marketplace: https://github.com/marketplace/actions/publish-strand-version
version: 1.0.0
dependentsNumber: "1"
actionType: Docker
---


Version updated for **https://github.com/octue/publish-strand-version** to version **1.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/publish-strand-version) to find the latest changes.

## Action Summary

The `octue/publish-strand-version` GitHub Action automates the process of checking for changes in JSON schemas within a GitHub repository and publishing updated versions to the Octue Strands platform. It simplifies schema versioning by suggesting or applying semantic version updates, optionally adding release notes, and enforcing versioning policies. This action streamlines the management of schema updates while ensuring compliance with semantic versioning standards.

## What's Changed


# Contents ([#12](https://github.com/octue/publish-strand-version/pull/12))

**IMPORTANT:** There is 1 breaking change.

### Enhancements
- 💥 **BREAKING CHANGE:** Improve outputs for use in downstream actions

### Operations
- Resolve version to correctly indiccate breaking change
- Overhaul dockerfile build for testing actions

---
# Upgrade instructions
<details>
<summary>💥 <b>Improve outputs for use in downstream actions</b></summary>

Null outputs are now empty strings '' instead of stringified python 'None' values
</details>
