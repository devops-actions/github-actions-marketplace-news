---
title: run-digger
date: 2024-07-01 16:46:42 +00:00
tags:
  - diggerhq
  - GitHub Actions
draft: false
repo: diggerhq/digger
marketplace: https://github.com/marketplace/actions/run-digger
version: v0.6.0
dependentsNumber: "14"
---


Version updated for **diggerhq/digger** to version **v0.6.0**.
- This action is used across all versions by **14** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-digger) to find the latest changes.

## Release notes

## What's Changed
* spec refactor: use plan policy provider by @motatoes in https://github.com/diggerhq/digger/pull/1594
* add page on external providers code execution by @motatoes in https://github.com/diggerhq/digger/pull/1595
* Feat/use digger spec by @motatoes in https://github.com/diggerhq/digger/pull/1597
* feat/fix ee policy provider by @motatoes in https://github.com/diggerhq/digger/pull/1598

Breaking change: If updating from previous version and using digger orchestrator your digger_workflow.yml needs to be updated. It needs to accept a `spec` as input and pass that onto the digger step:

```
name: Digger Workflow

on:
  workflow_dispatch:
    inputs:
      spec:
        required: true
      run_name:
        required: false

......
.......


    steps:
      - name: digger run
        uses: diggerhq/digger@vLatest
        with:
          digger-spec: ${{ inputs.spec }}

```

**Full Changelog**: https://github.com/diggerhq/digger/compare/v0.5.14...v0.6.0
