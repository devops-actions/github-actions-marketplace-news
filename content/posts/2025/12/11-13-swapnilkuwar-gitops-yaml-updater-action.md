---
title: GitOps Update YAML File
date: 2025-12-11 13:33:17 +00:00
tags:
  - swapnilkuwar
  - GitHub Actions
draft: false
repo: https://github.com/swapnilkuwar/gitops-yaml-updater-action
marketplace: https://github.com/marketplace/actions/gitops-update-yaml-file
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/swapnilkuwar/gitops-yaml-updater-action** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gitops-update-yaml-file) to find the latest changes.

## Release notes

This is the first stable release of **GitOps Update YAML File**, a GitHub Action designed to update YAML configuration files in GitOps repositories such as those used by ArgoCD, FluxCD, or Helm.

## Key Features

- Updates any YAML key using lightweight `sed` scripting  
- Supports nested YAML keys such as `image.tag`, `env[0].value`, etc.  
- Clones the target GitOps repository automatically  
- Commits and pushes updates to the specified branch  
- Supports both GitHub Token and Personal Access Token (PAT)  
- Works with same-repo, same-org, and cross-org configurations (PAT required for cross-org writes)  
- Gracefully handles cases where no changes are needed  

## How It Works

1. The action clones the target GitOps repository.  
2. The specified YAML file is located.  
3. The YAML key is updated to the provided value.  
4. The action commits and pushes the change to the specified branch (default: `main`).  

## Supported Use Cases

- Updating container image tags in Helm chart values  
- Adjusting environment variables  
- Updating configuration values before GitOps deployment  
- Automating release pipelines that modify YAML files  

## Example Usage

```yaml
- name: Update GitOps YAML File
  uses: swapnilkuwar/gitops-yaml-updater-action@v1
  with:
    repo: "swapnilkuwar/argocd-app"
    file: "charts/app/values.yaml"
    key: "image.tag"
    value: "build-${{ github.run_number }}"

