---
title: Keepalive Workflow
date: 2024-04-09 11:25:28 +00:00
tags:
  - gautamkrishnar
  - GitHub Actions
draft: false
repo: gautamkrishnar/keepalive-workflow
marketplace: https://github.com/marketplace/actions/keepalive-workflow
version: 2.0.1
dependentsNumber: "2,361"
---


Version updated for **gautamkrishnar/keepalive-workflow** to version **2.0.1**.
- This action is used across all versions by **2,361** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/keepalive-workflow) to find the latest changes.

## Release notes

## What's Changed
### Added multi workflow keepalive
Now you can keep multiple Github actions alive using a single keepalive workflow. Previously you had to add separate keepalive workflow to all the cronjob-triggered Github actions for this to happen. 

#### Example
Let's assume that you have some build workflows:

- `.github/workflows/build1.yml`
```yaml
name: Build 20

on:
  schedule:
    - cron: "0 0 * * *"

jobs:
  publish-npm:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-node@v3
        with:
          node-version: "20"
          cache: "yarn"
      - run: yarn install --frozen-lockfile
      - run: yarn build
```
- `.github/workflows/build2.yml`
```yaml
name: Build 19

on:
  schedule:
    - cron: "0 0 * * *"

jobs:
  publish-npm:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-node@v3
        with:
          node-version: "19"
          cache: "yarn"
      - run: yarn install --frozen-lockfile
      - run: yarn build
```

You can now keep both of these workflows active using the following keepalive workflow code:
`.github/workflows/keepalive.yml`
```yaml
name: Keepalive Workflow
on:
  schedule:
    - cron: "0 0 * * *"
permissions:
  actions: write
jobs:
  cronjob-based-github-action:
    name: Keepalive Workflow
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: gautamkrishnar/keepalive-workflow@v2
        with:
          workflow_files: "build1.yml, build2.yml"
          time_elapsed: "0"
```

Result:
![result](https://github.com/gautamkrishnar/keepalive-workflow/assets/8397274/1996d763-1b89-43d5-af86-aa0c3e2159aa)


### Other changes
* Fix readme to have permissions in correct place by @rfay in https://github.com/gautamkrishnar/keepalive-workflow/pull/26
* fix: typo in dummy commit config by @shihyuho in https://github.com/gautamkrishnar/keepalive-workflow/pull/28

## New Contributors
* @rfay made their first contribution in https://github.com/gautamkrishnar/keepalive-workflow/pull/26
* @shihyuho made their first contribution in https://github.com/gautamkrishnar/keepalive-workflow/pull/2

**Full Changelog**: https://github.com/gautamkrishnar/keepalive-workflow/compare/2.0.0...2.0.1
