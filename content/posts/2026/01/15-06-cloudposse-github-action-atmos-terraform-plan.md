---
title: GitHub Action Atmos Terraform Plan
date: 2026-01-15 06:02:54 +00:00
tags:
  - cloudposse
  - GitHub Actions
draft: false
repo: https://github.com/cloudposse/github-action-atmos-terraform-plan
marketplace: https://github.com/marketplace/actions/github-action-atmos-terraform-plan
version: v5.7.1
dependentsNumber: "10"
---


Version updated for **https://github.com/cloudposse/github-action-atmos-terraform-plan** to version **v5.7.1**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **10** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-action-atmos-terraform-plan) to find the latest changes.

## Action Summary

This GitHub Action automates the process of running a Terraform plan for an Atmos-supported component and securely saving the resulting plan file and metadata to AWS S3 and DynamoDB. It simplifies infrastructure management by integrating Terraform workflows with Atmos, ensuring consistent storage and tracking of plan files. This action is particularly useful for teams leveraging GitHub Actions for Terraform-based infrastructure orchestration.

## Release notes

<details>
  <summary>fix: Trigger release @goruha (#128)</summary>
## what
* Added whitespace to trigger release 

## Why
* The latest release failed to be cut due test failure. Test fixed, so we need to issue a new release

## References
* https://github.com/cloudposse/github-action-atmos-terraform-plan/actions/runs/20932787693
</details>

<details>
  <summary>feat: Add `has-changes` output to expose plan change detection @jamengual (#125)</summary>
## Summary

- Adds a new `has-changes` output that exposes whether the Terraform plan contains infrastructure changes
- The output is a string value of `"true"` or `"false"`

## Motivation

Currently, consumers who want to conditionally run steps based on whether the plan has changes must parse the `summary` output. The action already computes this internally (used for Infracost integration), but doesn't expose it.

This change simply exposes the existing `steps.atmos-plan.outputs.changes` value as a proper action output.

## Usage

```yaml
- uses: cloudposse/github-action-atmos-terraform-plan@v4
  id: plan
  with:
    component: mycomponent
    stack: dev

- if: steps.plan.outputs.has-changes == 'true'
  run: echo "Infrastructure changes detected"
```

## Test plan

- [ ] Verify output is `"true"` when plan has changes
- [ ] Verify output is `"false"` when plan has no changes
</details>


## 🚀 Enhancements

<details>
  <summary>Fix tests @goruha (#127)</summary>
This pull request introduces a minor improvement to the GitHub Actions workflow and action metadata. The main changes involve cleaning up formatting in the workflow output and adding a new output to the action.

Action output enhancement:

* Added a new output `has-changes` to `action.yml`, which indicates whether the Terraform plan has changes, with the value being the string `'true'` or `'false'`.

Workflow formatting cleanup:

* Removed unnecessary blank lines in the `expected` and `actual` output sections of `.github/workflows/test-failed-plan-drift.yml` to improve output readability and consistency. [[1]](diffhunk://#diff-26183f3c281c05770533979b4399596bea1d98934866d78883c9ef6d557fd4beL149-L162) [[2]](diffhunk://#diff-26183f3c281c05770533979b4399596bea1d98934866d78883c9ef6d557fd4beL193-L204)

</details>

