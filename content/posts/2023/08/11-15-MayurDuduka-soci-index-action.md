---
title: Create SOCI INDEX
date: 2023-08-11 15:40:39 +00:00
tags:
  - MayurDuduka
  - GitHub Actions
draft: false
repo: MayurDuduka/soci-index-action
marketplace: https://github.com/marketplace/actions/create-soci-index
version: v1.0
dependentsNumber: "?"
---


Version updated for **MayurDuduka/soci-index-action** to version **v1.0**.
- This publisher is shown verified by GitHub.
- This action is used across all versions by ? repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-soci-index) to find the latest changes.

## Release notes

## **USE Example**

```
jobs:
  issue_parser:
    runs-on: ubuntu-latest
    name: Terraform destroy
    steps:      
    - name: Terraform destroy on github action aws v1
      env:
        GITHUB_TOKEN: ${{ secrets.TOKEN_GITHUB }}
        AWS_REGION: ${{ secrets.AWS_REGION }}
        AWS_ACCESS_KEY_ID:  ${{ secrets.AWS_ACCESS_KEY_ID }}
        AWS_SECRET_ACCESS_KEY:  ${{ secrets.AWS_SECRET_ACCESS_KEY }}
      uses: MayurDuduka/soci-index-action@v1.0
      with:
        org_name: ${{ secrets.INPUT_ORG_NAME }}
        repo_name: ${{ secrets.INPUT_REPO_NAME }}
```
