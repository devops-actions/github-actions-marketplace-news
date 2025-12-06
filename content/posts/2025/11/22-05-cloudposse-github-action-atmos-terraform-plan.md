---
title: GitHub Action Atmos Terraform Plan
date: 2025-11-22 05:14:03 +00:00
tags:
  - cloudposse
  - GitHub Actions
draft: false
repo: https://github.com/cloudposse/github-action-atmos-terraform-plan
marketplace: https://github.com/marketplace/actions/github-action-atmos-terraform-plan
version: v5.6.0
dependentsNumber: "10"
---


Version updated for **https://github.com/cloudposse/github-action-atmos-terraform-plan** to version **v5.6.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **10** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-action-atmos-terraform-plan) to find the latest changes.

## Release notes

<details>
  <summary>fixing cache key to match apply action cache key @jamengual (#121)</summary>
This pull request updates the `action.yml` workflow to improve how component paths are handled and cached. The main change is the introduction of a new output, `component_cache_path`, which stores the absolute path to the component for more reliable referencing in subsequent steps.

**Improvements to path handling and caching:**

* Added calculation of `COMPONENT_CACHE_PATH` using `realpath` to ensure the component path is absolute, and exposed it as a new output variable (`component_cache_path`) for use in later steps. [[1]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6R284) [[2]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6R302)
* Updated the cache restore step to use `component_cache_path` instead of the relative `component_path`, improving robustness when referencing the `.terraform` directory.
</details>

