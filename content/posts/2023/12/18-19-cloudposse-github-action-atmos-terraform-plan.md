---
title: GitHub Action Atmos Terraform Plan
date: 2023-12-18 19:17:23 +00:00
tags:
  - cloudposse
  - GitHub Actions
draft: false
repo: cloudposse/github-action-atmos-terraform-plan
marketplace: https://github.com/marketplace/actions/github-action-atmos-terraform-plan
version: 1.0.0
dependentsNumber: "1"
---


Version updated for **cloudposse/github-action-atmos-terraform-plan** to version **1.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-action-atmos-terraform-plan) to find the latest changes.

## Release notes

<details>
  <summary>Adopt Atmos GitOps Configuration File @goruha (#48)</summary>

  ## what

* Use Atmos GitOps Configuration File

### Migrating from `v1` to `v2`

`v2` drop `component-path` variable. Now it fetches from `atmos.yaml` file automatically.

`v2` moved variables from `inputs` to atmos gitops config path `./.github/config/atmos-gitops.yaml`

|         name             |
|--------------------------|
| `atmos-version`          |
| `atmos-config-path`      |
| `terraform-state-bucket` |
| `terraform-state-table`  |
| `terraform-state-role`   |
| `terraform-plan-role`    |
| `terraform-apply-role`   |
| `terraform-version`      |
| `aws-region`             |
| `enable-infracost`       |


If you want `v2` having the same behaviour as `v1` you should create config `./.github/config/atmos-gitops.yaml` with the same variables as in `v1` inputs.

```yaml
  - name: Plan Atmos Component
    uses: cloudposse/github-action-atmos-terraform-plan@v1
    with:
      component: "foobar"
      stack: "plat-ue2-sandbox"
      atmos-gitops-config-path: ./.github/config/atmos-gitops.yaml
```

same behaviour as

```yaml
  - name: Plan Atmos Component
    uses: cloudposse/github-action-atmos-terraform-plan@v1
    with:
      component: "foobar"
      stack: "plat-ue2-sandbox"
      component-path: "components/terraform/s3-bucket"
      terraform-plan-role: "arn:aws:iam::111111111111:role/acme-core-gbl-identity-gitops"
      terraform-state-bucket: "acme-core-ue2-auto-gitops"
      terraform-state-role: "arn:aws:iam::999999999999:role/acme-core-ue2-auto-gitops-gha"
      terraform-state-table: "acme-core-ue2-auto-gitops"
      aws-region: "us-east-2"
```

</details>

<details>
  <summary>chore: refactor deletion warning message @milldr (#49)</summary>

  ## what
- Changed deletion warning to the following

> [!CAUTION]
**Terraform will delete resources!** 
This plan contains resource delete operations. Please check the plan result very carefully.

## why
1. Cleaner warning message
2. There's currently a bug in GitHub Summary with emojis (⚠️ )

## references
- n/a
</details>

