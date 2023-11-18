---
title: python-lambda-layer
date: 2023-11-18 03:08:22 +00:00
tags:
  - UmerMuxhal
  - GitHub Actions
draft: false
repo: UmerMuxhal/python-lambda-layer
marketplace: https://github.com/marketplace/actions/python-lambda-layer
version: v1
dependentsNumber: "?"
---


Version updated for **UmerMuxhal/python-lambda-layer** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/python-lambda-layer) to find the latest changes.

## Release notes

### Getting Started:

```yaml
name: publish-python-lambda-layer
on:
  push:
    branches:
      - dev
jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Configure AWS Credentials
        uses: aws-actions/configure-aws-credentials@v4
        with:
          aws-access-key-id: ${{ secrets.AWS_ACCESS_KEY_ID }}
          aws-secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          aws-region: ${{ secrets.AWS_REGION }}

      - name: Publish Lambda layer
        uses: UmerMuxhal/python-lambda-layer@v1
        with:
          python_version: 3.8
          layer_name: "my-lambda-layer"
          layer_directory: "requirements_folder"
          bucket_name: "my-s3-bucket"
          bucket_path: "layers/"
          aws_account_id: ${{ secrets.AWS_ACCOUNT_ID }}
```
