---
title: OpenTofu/Terraform via Pull Request
date: 2024-07-30 00:52:17 +00:00
tags:
  - DevSecTop
  - GitHub Actions
draft: false
repo: DevSecTop/TF-via-PR
marketplace: https://github.com/marketplace/actions/opentofu-terraform-via-pull-request
version: v11.0.0
dependentsNumber: "2"
---


Version updated for **DevSecTop/TF-via-PR** to version **v11.0.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opentofu-terraform-via-pull-request) to find the latest changes.

## Release notes

### Highlights

- Input individual command arguments instead of a string.
- Expand support for PR automation event triggers.

### Added

- Separate input parameters for each command argument passed into TF.
- Leverage github-script instead of bash for handling workflow logic and GitHub API.
- Support for [`tenv`](https://tofuutils.github.io/tenv/) to avoid TF wrapper script.

### Updated

- [Example workflows](https://github.com/DevSecTop/TF-via-PR/tree/main/.github/examples) for common use-cases and event triggers.
- [Sample workflow](https://github.com/DevSecTop/TF-via-PR/blob/main/.github/workflows/tf_sample.yaml) to consolidate with matrix strategy and deployment environments.
- [Readme documentation](https://github.com/DevSecTop/TF-via-PR/blob/main/README.md) with up-to-date screenshot and guidance.

### Changed

- Refactor input [parameter](https://github.com/DevSecTop/TF-via-PR?tab=readme-ov-file#parameters) names:
  | Before             | After            | Default     |
  | ------------------ | ---------------- | ----------- |
  | `command_input`    | `args_*`         |             |
  | `cli_uses`         | `tf_tool`        | `terraform` |
  | `label_enable`     | `label_pr`       | `true`      |
  | `plan_outline`     | `outline_enable` | `true`      |
  | `recreate_comment` | `update_comment` | `false`     |
- Refactor output [parameter](https://github.com/DevSecTop/TF-via-PR?tab=readme-ov-file#parameters) names:
  | Before            | After         |
  | ----------------- | ------------- |
  | `command`         | `header`      |
  | `comment_summary` | `summary`     |
  | `plan_id`         | `identifier`  |
  | `tf_fmt`          | `fmt_result`  |
  | `tf_output`       | `last_result` |

### Removed

- Support for `issue_comment` event trigger in order to focus on PR automation events.

### Fixed

- #237 by fetching the job name with [several methods](https://github.com/DevSecTop/TF-via-PR/blob/c9d89b1dc3dca919d5277a5f23b3d4a41ad823f3/action.js#L376-L380) until [GitHub fixes it](https://github.com/orgs/community/discussions/129314).
- #238 by enabling compatibility with `workflow_dispatch` event trigger while using `0` as a [placeholder PR number](https://github.com/DevSecTop/TF-via-PR/blob/c9d89b1dc3dca919d5277a5f23b3d4a41ad823f3/action.js#L8).
- #243 by confirming compatibility with `merge_group` event trigger and documenting [workflow example](https://github.com/DevSecTop/TF-via-PR/blob/c9d89b1dc3dca919d5277a5f23b3d4a41ad823f3/.github/examples/pr_merge_matrix.yaml).
- #245 by confirming compatibility with `push` event trigger and documenting [workflow example](https://github.com/DevSecTop/TF-via-PR/blob/c9d89b1dc3dca919d5277a5f23b3d4a41ad823f3/.github/examples/pr_push_auth.yaml).

### Secured

- Support for v11.0.0 and above.

### Todo

- Add workflow example for interactive PR label trigger.
- Add support for [`terragrunt`](https://terragrunt.gruntwork.io) thin wrapper, per #258.

Commits changelog: <https://github.com/DevSecTop/TF-via-PR/compare/v10.7.0...v11.0.0>

