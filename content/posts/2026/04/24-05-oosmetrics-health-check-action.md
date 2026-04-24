---
title: oosmetrics Health Check
date: 2026-04-24 05:56:26 +00:00
tags:
  - oosmetrics
  - GitHub Actions
draft: false
repo: https://github.com/oosmetrics/health-check-action
marketplace: https://github.com/marketplace/actions/oosmetrics-health-check
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/oosmetrics/health-check-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oosmetrics-health-check) to find the latest changes.

## Action Summary

The **oosmetrics Health Check GitHub Action** automates the generation and posting of weekly analytics reports for your repository, including metrics like growth rate, acceleration, originality grades, and category rankings. It simplifies tracking repository performance by fetching data from the oosmetrics API and delivering updated insights as comments on a designated issue, enabling consistent monitoring without manual effort.

## What's Changed

 **oosmetrics Health Check** posts a weekly momentum report as a comment on a pinned issue in your repo.                                                                                                                             

**What you get:**                                                                                                                                                                                                                   
- Grade table: growth rate, acceleration, originality - with trend vs previous week
- Category rankings: where your repo stands in its taxonomy                                                                                                                                                                     
- Badge snippet: ready to copy into your README               

**Setup:** 3 lines of YAML, no API key, no configuration.

```yaml
- uses: oosmetrics/health-check-action@v1
  env:
     GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

Powered by https://oosmetrics.com - tracking 334,000+ GitHub repos by growth, acceleration, and originality.
