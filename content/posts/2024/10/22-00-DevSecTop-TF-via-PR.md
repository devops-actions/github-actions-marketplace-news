---
title: Terraform/OpenTofu via Pull Request
date: 2024-10-22 00:55:24 +00:00
tags:
  - DevSecTop
  - GitHub Actions
draft: false
repo: DevSecTop/TF-via-PR
marketplace: https://github.com/marketplace/actions/terraform-opentofu-via-pull-request
version: v12.0.0
dependentsNumber: "2"
---


Version updated for **DevSecTop/TF-via-PR** to version **v12.0.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-opentofu-via-pull-request) to find the latest changes.

## Release notes

## v12 Enhanced Commands, Outputs and Examples

### Highlights ([view blog](https://dev.to/rdhar/enhance-terraformtofu-automation-with-github-action-29be))

- Around 55% reduction in codebase by consolidating [action.yaml](https://github.com/DevSecTop/TF-via-PR/blob/main/action.yml) within Bash, lowering the barrier to entry for contributors.
- Configurable rendering of command [inputs](https://github.com/DevSecTop/TF-via-PR?tab=readme-ov-file#inputs---configuration) and [outputs](https://github.com/DevSecTop/TF-via-PR?tab=readme-ov-file#outputs) without wrapper script (e.g., `hide-args` from PR comment).
- Streamlined [documentation](https://github.com/DevSecTop/TF-via-PR?tab=readme-ov-file#readme) with a focus on workflow examples for common use-cases.

### Breaking

- In/output parameters have been renamed:
  - All `_` underscores are replaced with `-` hyphens.
  - `working-directory` is added as an alias to `arg-chdir`.
  - `arg_command` is renamed to `command`.
  - For the full list, view the [parameters](https://github.com/DevSecTop/TF-via-PR/tree/main?tab=readme-ov-file#parameters).
- To minimize dependencies, the following have been removed:
  - Tool installation via `tenv` ([replacement](https://github.com/DevSecTop/TF-via-PR/blob/main/.github/examples/pr_self_hosted.yaml)).
  - Caching integration ([replacement](https://github.com/DevSecTop/TF-via-PR/blob/main/.github/examples/pr_push_auth.yaml)).

---

### Added

- `gh` GitHub CLI integration for consistent interoperability with GitHub's REST API.
- Link to view workflow log with the precise step where TF-via-PR was executed.
- Pass repeated arguments as comma-separated values (e.g., `arg-var: key1=value1,key2=value2`).
- Contextual workflow outputs, like plan file artifact ID and URL, as well as truncated results from CLI response.

### Updated

- Order of command execution to: `fmt`* > `init` > `workspace`* > `validate`* > `plan`/`apply` (* optional).
- Workflow examples with recommendations, including cron-scheduled configuration drift checks.
- `comment-pr` default from "recreate" to "update" for its revision history.
- `format` default from "true" to "false" for explicit opt-in of the command, as done with `validate`.

### Removed

- `actions/cache` dependency, as out-of-scope.
- `actions/github-script` dependecy, as superseded by `gh` GitHub CLI.
- `tenv` dependency, as replaced by [3rd parties](https://github.com/DevSecTop/TF-via-PR/blob/main/.github/examples/pr_self_hosted.yaml).

### Fixed

- Upon failure, output the error message directly instead of the entire command output.
- Upon exceeding character limit, gracefully handle truncation of command output.
- Handling of multiline strings with associated quoting.

### Secured

- Support for v12 and after.

Commits changelog: <https://github.com/DevSecTop/TF-via-PR/compare/v11.4.6...v12.0.0>

