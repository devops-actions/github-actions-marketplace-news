---
title: Atmos GitOps Select Components
date: 2023-12-18 19:17:20 +00:00
tags:
  - cloudposse
  - GitHub Actions
draft: false
repo: cloudposse/github-action-atmos-terraform-select-components
marketplace: https://github.com/marketplace/actions/atmos-gitops-select-components
version: 1.0.0
dependentsNumber: "?"
---


Version updated for **cloudposse/github-action-atmos-terraform-select-components** to version **1.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/atmos-gitops-select-components) to find the latest changes.

## Release notes

<details>
  <summary>Use GitOps Configuration File @goruha (#15)</summary>

  ## what
* Use a configuration file instead of passing all parameters as inputs

## why 
* Makes it easier in reusable workflows to reuse actions without needing to edit workflows themselves
* Separate business logic from configuration

### Migrating from `v0` to `v1`

`v1` replace `jq-query` input with `selected-filter` variable and simplify the query.
Now you need to specify only part used in select function of `jq-query`.  

`v1` moved variables from `inputs` to atmos gitops config path `./.github/config/atmos-gitops.yaml`

|         name             |
|--------------------------|
| `atmos-version`          |
| `atmos-config-path`      |


If you want the same behavior in `v1`  as in`v0` you should create config `./.github/config/atmos-gitops.yaml` with the same variables as in `v1` inputs.

```yaml
  - name: Selected Components
    id: components
    uses: cloudposse/github-action-atmos-terraform-select-components@v1
    with:
      atmos-gitops-config-path: ./.github/config/atmos-gitops.yaml
      select-filter: '.settings.github.actions_enabled // false'
```

same behaviour as

```yaml
  - name: Selected Components
    id: components
    uses: cloudposse/github-action-atmos-terraform-select-components@v0
    with:
      atmos-config-path: "${{ github.workspace }}/rootfs/usr/local/etc/atmos/"
      jq-query: 'to_entries[] | .key as $parent | .value.components.terraform | to_entries[] | select(.value.settings.github.actions_enabled // false) | [$parent, .key] | join(",")'
```

</details>

