---
title: datadog-actions-metrics
date: 2024-04-21 11:26:28 +00:00
tags:
  - int128
  - GitHub Actions
draft: false
repo: int128/datadog-actions-metrics
marketplace: https://github.com/marketplace/actions/datadog-actions-metrics
version: v1.86.0
dependentsNumber: "44"
---


Version updated for **int128/datadog-actions-metrics** to version **v1.86.0**.
- This action is used across all versions by **44** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datadog-actions-metrics) to find the latest changes.

## Release notes

## ⚠️ Breaking Changes
### Add `prefer-distribution-` options
By default, the gauge metrics are enabled, and the distribution metrics are disabled.

To enable the distribution metrics,

```yaml
      prefer-distribution-workflow-run-metrics: true
      prefer-distribution-job-metrics: true
      prefer-distribution-step-metrics: true
```

### Remove `disable-distribution-metrics` option
For consistency, `disable-distribution-metrics` is removed.

## What's Changed
* chore(deps): update int128/datadog-actions-metrics action to v1.85.0 by @renovate in https://github.com/int128/datadog-actions-metrics/pull/1096
* chore(deps): update eslint to v7.7.0 by @renovate in https://github.com/int128/datadog-actions-metrics/pull/1097
* Migrate to eslint flat config by @int128 in https://github.com/int128/datadog-actions-metrics/pull/1098
* chore(deps): pin dependency typescript-eslint to 7.7.0 by @renovate in https://github.com/int128/datadog-actions-metrics/pull/1099
* chore(deps): update dependency eslint to v9 by @renovate in https://github.com/int128/datadog-actions-metrics/pull/1095
* Add prefer distribution metrics options by @int128 in https://github.com/int128/datadog-actions-metrics/pull/1100


**Full Changelog**: https://github.com/int128/datadog-actions-metrics/compare/v1.85.0...v1.86.0
