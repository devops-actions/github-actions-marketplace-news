---
title: GitHub Action for Extracting Atmos Settings
date: 2023-12-13 03:22:19 +00:00
tags:
  - cloudposse
  - GitHub Actions
draft: false
repo: cloudposse/github-action-atmos-get-setting
marketplace: https://github.com/marketplace/actions/github-action-for-extracting-atmos-settings
version: 1.0.0
dependentsNumber: "3"
---


Version updated for **cloudposse/github-action-atmos-get-setting** to version **1.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-action-for-extracting-atmos-settings) to find the latest changes.

## Release notes

<details>
  <summary>Get any info from atmos describe component @goruha (#17)</summary>

  ## what
* Remove restriction to `settings` section.

## Why
* To reuse this action for fetching `component_info.component_path` settings

## Migrating from `v0` to `v1`

Starting from `v1` the action is no longer restricted to retrieving the component config from only the `settings` section..
If you want the same behavior in `v1`  as in`v0`, you should add the `settings` prefix to the value of the `settings-path` variable.

```yaml
  - name: Get Atmos Setting for Secret ARN
    uses: cloudposse/github-action-atmos-get-setting@v1
    id: example
    with:
      component: foo
      stack: core-ue1-dev
      settings-path: settings.secrets-arn  
```

same behaviour as

```yaml
  - name: Get Atmos Setting for Secret ARN
    uses: cloudposse/github-action-atmos-get-setting@v0
    id: example
    with:
      component: foo
      stack: core-ue1-dev
      settings-path: secrets-arn  
```

</details>

