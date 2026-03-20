---
title: JQ eval
date: 2026-03-20 05:51:05 +00:00
tags:
  - cloudposse
  - GitHub Actions
draft: false
repo: https://github.com/cloudposse/github-action-jq
marketplace: https://github.com/marketplace/actions/jq-eval
version: v0.4.1
dependentsNumber: "21"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/cloudposse/github-action-jq** to version **v0.4.1**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **21** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jq-eval) to find the latest changes.

## Action Summary

This GitHub Action utilizes `jq` to process JSON input with a user-defined query script and outputs the result as a step output in a workflow. It automates JSON manipulation tasks, enabling streamlined extraction, transformation, and filtering of JSON data directly within CI/CD pipelines. Key capabilities include compact or pretty-printed output, raw string handling, and removal of trailing newlines.

## Release notes

<details>
  <summary>chore: Update Node version from 20 to 24 in action.yml (#19) @goruha (#20)</summary>
## what
* Update Node version from 20 to 24 in action.yml

## why
Node.js 20 actions are deprecated. Actions will be forced to run with Node.js 24 by default starting June 2nd, 2026.

## references
https://github.blog/changelog/2025-09-19-deprecation-of-node-20-on-github-actions-runners/
https://github.com/cloudposse/github-action-jq/pull/19
</details>


## 🤖 Automatic Updates

<details>
  <summary>Update README.md and docs @cloudpossebot (#3)</summary>
## what
This is an auto-generated PR that updates the README.md and docs

## why
To have most recent changes of README.md and doc from origin templates
</details>

<details>
  <summary>Replace Makefile with atmos.yaml @osterman (#18)</summary>
## what
- Remove `Makefile`
- Add `atmos.yaml`

## why
- Replace `build-harness` with `atmos` for readme genration

## References
* DEV-3229 Migrate from build-harness to atmos

</details>

<details>
  <summary>Replace Makefile with atmos.yaml @osterman (#17)</summary>
## what
- Remove `Makefile`
- Add `atmos.yaml`

## why
- Replace `build-harness` with `atmos` for readme genration

## References
* DEV-3229 Migrate from build-harness to atmos

</details>

<details>
  <summary>Update .github/settings.yml @osterman (#14)</summary>
## what
- Update `.github/settings.yml` 
- Drop `.github/auto-release.yml` files

## why
- Re-apply `.github/settings.yml` from org level
- Use organization level auto-release settings

## references
- DEV-1242 Add protected tags with Repository Rulesets on GitHub

</details>

<details>
  <summary>Update release workflow to allow pull-requests: write @osterman (#13)</summary>
## what
- Update workflow (`.github/workflows/release.yaml`) to have permission to comment on PR

## why
- Add comment to PR when it is released

</details>

<details>
  <summary>Use GitHub Action Workflows from `cloudposse/.github` Repo @osterman (#12)</summary>
## what
- Update workflows (`.github/workflows/settings.yaml`) to use shared workflows from `.github` repo

## why
- Reduce nested levels of reusable workflows

</details>

<details>
  <summary>Use GitHub Action Workflows from `cloudposse/.github` Repo @osterman (#9)</summary>
## what
- Update workflows (`.github/workflows/settings.yaml`)

## why
- Support new readme generation workflow.
- Generate banners

</details>

