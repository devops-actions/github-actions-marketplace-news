---
title: Terraform/OpenTofu via Pull Request
date: 2025-06-26 08:58:55 +00:00
tags:
  - OP5dev
  - GitHub Actions
draft: false
repo: https://github.com/OP5dev/TF-via-PR
marketplace: https://github.com/marketplace/actions/terraform-opentofu-via-pull-request
version: v13.5.0
dependentsNumber: "13"
---


Version updated for **https://github.com/OP5dev/TF-via-PR** to version **v13.5.0**.
- This action is used across all versions by **13** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-opentofu-via-pull-request) to find the latest changes.

## Release notes

```yml
uses: op5dev/tf-via-pr@04dca87803245791a61752cda2c2181b4ac91693 # v13.5.0
```

### Added

- #458 Support for `repository_dispatch`, `workflow_call`, `workflow_dispatch`, and `workflow_run` workflow triggers (thank you, @eumpek).

### Improved

- #456 Wording around [security hardening of GitHub Actions](https://docs.github.com/en/actions/security-guides/security-hardening-for-github-actions#using-third-party-actions) by pinning to specific commit SHA.
- #457 Always set `GH_HOST` environment variable by dropping the protocol from `$GITHUB_SERVER_URL`.
- #461 Parsing the `diff` of a plan with indirect changes (e.g., only `moved` and `imported`) used to fail without fallback (thank you, @jemc).
- #464 The "(view log)" used to occasionally link to the step before TF-via-PR due to a race-condition.

### Removed

- #462 The `label-pr` option used to create and attach `tf:plan` or `tf:apply` PR labels using the `pull-requests: write` permission, until GitHub made an [un-announced](https://github.com/googleapis/release-please-action/issues/1105#issuecomment-2780292262) and [un-documented](https://docs.github.com/en/rest/issues/labels?apiVersion=2022-11-28#create-a-label) change to require `issues: write` as well.
  Frankly, I think it's a lot to ask of users to trust their infrastructure provisioning to a 3rd party GitHub Action, so every effort is made to reduce TF-via-PR's access footprint and permission scope. To return this behaviour, add the following line to your workflow along with `issues: write` permission.

    ```yml
    run: gh api /repos/${{ github.repository }}/issues/${{ github.event.number || github.event.issue.number }}/labels --field "labels[]=tf:${{ github.event_name == 'push' && 'apply' || 'plan' }}"
    ```

View [changelog](https://github.com/OP5dev/TF-via-PR/releases) or https://github.com/OP5dev/TF-via-PR/compare/v13.4.0...v13.5.0
