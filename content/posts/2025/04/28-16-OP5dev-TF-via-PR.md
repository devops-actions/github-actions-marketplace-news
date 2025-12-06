---
title: Terraform/OpenTofu via Pull Request
date: 2025-04-28 16:58:27 +00:00
tags:
  - OP5dev
  - GitHub Actions
draft: false
repo: https://github.com/OP5dev/TF-via-PR
marketplace: https://github.com/marketplace/actions/terraform-opentofu-via-pull-request
version: v13.3.2
dependentsNumber: "9"
---


Version updated for **https://github.com/OP5dev/TF-via-PR** to version **v13.3.2**.
- This action is used across all versions by **9** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-opentofu-via-pull-request) to find the latest changes.

## Release notes

View [changelog](https://github.com/OP5dev/TF-via-PR/releases) or https://github.com/OP5dev/TF-via-PR/compare/v13.3.1...v13.3.2


### Fixed

- #453 Per recent [unannounced change](https://github.com/googleapis/release-please-action/issues/1105), GitHub API now requires `issues: write` permission in order to [create PR labels](https://docs.github.com/en/rest/issues/labels?apiVersion=2022-11-28#create-a-label). As a GitHub Action, we don't want to extend our access/footprint any more than needed, so this patch suppresses any error from the "Label PR" step until GitHub makes a concrete announcement (thank you, @UncleSamSwiss).


---

```yaml
uses: op5dev/tf-via-pr@15e61a8f59fb412ccdc97e69a83f648284a12ec0 # v13.3.2
```
