---
title: Azure multi-deploy
date: 2026-03-24 14:03:15 +00:00
tags:
  - DHI-GRAS
  - GitHub Actions
draft: false
repo: https://github.com/DHI-GRAS/azure-multi-deploy-action
marketplace: https://github.com/marketplace/actions/azure-multi-deploy
version: 1.7.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 12
---


Version updated for **https://github.com/DHI-GRAS/azure-multi-deploy-action** to version **1.7.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **12**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/azure-multi-deploy) to find the latest changes.

## Action Summary

The **Azure multi-deploy action** automates the build and deployment of Azure web and function apps, including creating separate staging deployments for open pull requests. It supports both monorepo and single-app repository structures, streamlining the deployment process for complex or simple projects. This action reduces manual deployment efforts, enabling consistent and efficient workflows for managing Azure applications.

## Release notes

###  New Features

* Added support for **Azure federated credentials (OIDC)** authentication.
* GitHub Actions can now authenticate to Azure **without client secrets**.

### Breaking Changes

* `clientSecret` is no longer required or supported.
* The action now expects Azure to be configured with **Federated Credentials**.
* Workflows must include the following permissions:
```yaml
permissions:
  actions: read
  id-token: write
  contents: read
  pull-requests: write
```
### Example Usage

```yaml
permissions:
  actions: read
  id-token: write
  contents: read
  pull-requests: write

jobs:
  deploy:
    runs-on: ubuntu-latest
      - name: Azure multi-deploy
        uses: DHI-GRAS/azure-multi-deploy-action@main
        with:
          azureCredentials: ${{ secrets.AZURE_CREDENTIALS }}
          githubToken: ${{ secrets.GITHUB_TOKEN }}
```
