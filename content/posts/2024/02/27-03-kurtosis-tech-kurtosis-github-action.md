---
title: Kurtosis GitHub Action
date: 2024-02-27 03:30:26 +00:00
tags:
  - kurtosis-tech
  - GitHub Actions
draft: false
repo: kurtosis-tech/kurtosis-github-action
marketplace: https://github.com/marketplace/actions/kurtosis-github-action
version: v1
dependentsNumber: "?"
---


Version updated for **kurtosis-tech/kurtosis-github-action** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kurtosis-github-action) to find the latest changes.

## Release notes

This GitHub Action integrates Kurtosis into your CI/CD pipeline, allowing you to leverage Kurtosis tests and environments directly within GitHub Actions workflows.

Note - This action currently supports Docker environments. For Kubernetes support, please reach out to [@h4ck3rk3y](https://github.com/h4ck3rk3y).

You will have to add a new workflow to your GitHub that will look like

```
name: CI

on:
    pull_request:

jobs:
    run_kurtosis:
        runs-on: ubuntu-latest
        steps:
            - name: Checkout Repository
              uses: actions/checkout@v4    
            - name: Run Kurtosis
              uses: kurtosis-tech/kurtosis-github-action@v1
              with:
                path: "."
                cloud_instance_id: INSTANCE_ID
                cloud_api_key: ${{ secrets.KURTOSIS_CLOUD_API_KEY }}
```

The KURTOSIS_CLOUD_API_KEY needs to be in your repository secret and the INSTANCE_ID needs to be replaced with the right value. You can get your Kurtosis Cloud account for free [here](https://cloud.kurtosis.com/)

The path can be a directory containing a Kurtosis package or a `docker-compose.yml` file. It can also be a URL that points to a Kurtosis Package.
