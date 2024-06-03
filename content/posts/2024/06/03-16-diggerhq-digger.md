---
title: run-digger
date: 2024-06-03 16:47:44 +00:00
tags:
  - diggerhq
  - GitHub Actions
draft: false
repo: diggerhq/digger
marketplace: https://github.com/marketplace/actions/run-digger
version: v0.5.0
dependentsNumber: "14"
---


Version updated for **diggerhq/digger** to version **v0.5.0**.
- This action is used across all versions by **14** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-digger) to find the latest changes.

## Release notes

Breaking change from v0.4.x due to the introduction of an extra parameter to github actions workflow called `run_name`. In order to upgrade from previous version to v0.5.0 please ensure to add the parameter to your workflow file:

```
on:
  workflow_dispatch:
  inputs:
    id:
      description: 'run identifier'
      required: false
    job:
      required: true
    comment_id:
      required: true
    run_name:
      required: false

run-name: '${{inputs.run_name}}'
```

This will make the action runs in the actions tab to appear with meaningfuil titles instead of a static title


## What's Changed
* perform unlock on pr converted to draft by @motatoes in https://github.com/diggerhq/digger/pull/1539
* fix github setup callback page by @motatoes in https://github.com/diggerhq/digger/pull/1544
* dont use tofu wrapper script by @motatoes in https://github.com/diggerhq/digger/pull/1545
* Create latest_tag by @motatoes in https://github.com/diggerhq/digger/pull/1548
* Docs: run-name workflow input by @ZIJ in https://github.com/diggerhq/digger/pull/1549
* add additional inputs for dynamic names by @motatoes in https://github.com/diggerhq/digger/pull/1543


**Full Changelog**: https://github.com/diggerhq/digger/compare/v0.4.39...v0.5.0
