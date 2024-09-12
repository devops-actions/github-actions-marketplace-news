---
title: Query YAML config as outputs
date: 2024-09-12 00:52:24 +00:00
tags:
  - cloudposse
  - GitHub Actions
draft: false
repo: cloudposse/github-action-yaml-config-query
marketplace: https://github.com/marketplace/actions/query-yaml-config-as-outputs
version: v1.0.0
dependentsNumber: "12"
---


Version updated for **cloudposse/github-action-yaml-config-query** to version **v1.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **12** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/query-yaml-config-as-outputs) to find the latest changes.

## Release notes

<details>
  <summary>Rewrite action to typescript @goruha (#24)</summary>
  ## what
* Rewrite action from docker-backed to typescript 

## why
* Do not build a docker image to avoid hitting hub.docker.com
* Improve performance


## Migration `v0` to `v1`

There is an issue [The query contains `true` or `false` fails with an error](https://github.com/alexxander/jq-tools/issues/4). 
A workaround is to use a quote around `"true" and `"false" in a query.

To migrate from `v0` to `v1`, quote all `true` and `false` in your queries. 
Ex.:  `query: .true` replace with `query: ."true"`

Pay attention that substitutions in GitHub actions could also resolved as `true` or `false` and have to be quoted.

Ex.:  `query: .${{ inputs.from == '' }}` replace with `query: ."${{ inputs.from == '' }}"`





</details>


## 🤖 Automatic Updates

<details>
  <summary>Update release workflow to allow pull-requests: write @osterman (#22)</summary>
  ## what
- Update workflow (`.github/workflows/release.yaml`) to have permission to comment on PR

## why
- Add comment to PR when it is released

</details>

<details>
  <summary>Use GitHub Action Workflows from `cloudposse/.github` Repo @osterman (#20)</summary>
  ## what
- Update workflows (`.github/workflows/settings.yaml`) to use shared workflows from `.github` repo

## why
- Reduce nested levels of reusable workflows

</details>

<details>
  <summary>Use GitHub Action Workflows from `cloudposse/.github` Repo @osterman (#19)</summary>
  ## what
- Update workflows (`.github/workflows/settings.yaml`)

## why
- Support new readme generation workflow.
- Generate banners

</details>

