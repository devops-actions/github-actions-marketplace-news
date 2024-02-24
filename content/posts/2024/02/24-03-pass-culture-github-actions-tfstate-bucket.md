---
title: tfstate GCP bucket
date: 2024-02-24 03:26:39 +00:00
tags:
  - pass-culture-github-actions
  - GitHub Actions
draft: false
repo: pass-culture-github-actions/tfstate-bucket
marketplace: https://github.com/marketplace/actions/tfstate-gcp-bucket
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **pass-culture-github-actions/tfstate-bucket** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tfstate-gcp-bucket) to find the latest changes.

## Release notes

# tfstate GCP bucket

## What is it ?

GitHub action to perform maintainance task on the tfstate GCP bucket.

**Features**

- Remove empty `default.tfstate` files.
- Remove unecessary `.terragrunt-cache` directories.
- Report mismatch between GCS tfstate bucket and IaC repository.
- Push removal of empty `default.tfstate` or `.terragrunt-cache` or both.

## Usage

### Classic usage

```yml
name: Terragrunt run all plans

on:
  workflow_dispatch:

env:
  # NODE_DEBUG env can be used for verbose debugging
  NODE_DEBUG: execa

jobs:
  tfstate:
    runs-on: ubuntu-latest
    name: An example job that will clean the tfstate bucket
    steps:
      - name: 'Checkout'
        uses: actions/checkout@v4
      - name: 'Authenticate to Google Cloud'
        uses: 'google-github-actions/auth@v2'
        with:
          workload_identity_provider: ${{ secrets.workload_identity_provider }}
          service_account: ${{ secrets.service_account }}
      - name: 'Set up Cloud SDK'
        uses: 'google-github-actions/setup-gcloud@v2'
      - uses: 'pass-culture-github-actions/tfstate-bucket@v1.0.0'
        id: 'tfstate-bucket'
        with:
          bucket: 'tfstate-bucket-name'
          project: 'gcp-project'
          push: false
          terragrunt-cache: true
          tfstate: true
          terragrunt-directory: 'terragrunt'
          terragrunt-bucket-directory: 'infrastructure'
      - run: echo "emptyTfstateFilepaths=${{ steps.tfstate-bucket.outputs.empty-tfstate-filepaths }}"
      - run: echo "terragruntCacheFilepaths=${{ steps.tfstate-bucket.outputs.terragrunt-cache-filepaths }}"
      - run: echo "tfstateMismatchFilepaths=${{ steps.tfstate-bucket.outputs.tfstate-mismatch-filepaths }}"

```

## Inputs

### Action inputs

| Name                          | Description | Required | Default |
| ----------------------------- | ----------- | -------- | ------- |
| `bucket`                      | The name of the bucket to pull | yes  | |
| `project`                     | The project name that own the bucket | yes |
| `terragrunt-cache`            | If set to true, it will locally remove empty .terragrunt-cache directory | no | `true` |
| `tfstate`                     | If set to true, it will locally remove empty tfstate files | no | `true` |
| `push`                        | If set to true, it will push changes to bucket | no | `false` |
| `terragrunt-directory`        | Set the terragrunt directory from the checkout repository to start the filepath with to compare. Used when checkout-warning-mismatch: true' | no | |
| `terragrunt-bucket-directory` | Set the terragrunt bucket directory to start the filepath with to compare. Used when checkout-warning-mismatch: true' | no | |

## Outputs

### Action outputs

You can get some outputs from this actions :

| Name                                | Description                                                                              |
| ----------------------------------- | ---------------------------------------------------------------------------------------- |
| `empty-tfstate-filepaths`           | The file paths list of empty `default.tfstate` files                                     |
| `empty-tfstate-filepaths-count`     | The file paths count of empty `default.tfstate` files                                    |
| `terragrunt-cache-filepaths`        | The file paths list of `.terragrunt-cache` directories                                   |
| `terragrunt-cache-filepaths-count`  | The file paths count of `.terragrunt-cache` directories                                  |
| `tfstate-mismatch-filepaths`        | The file paths list of `default.tfstate` not existing as `terragrunt.hcl` in repository  |
| `tfstate-mismatch-filepaths-count`  | The file paths count of `default.tfstate` not existing as `terragrunt.hcl` in repository |

## Contributing

### Build

The build steps transpiles the `src/main.ts` to `lib/index.js` which is used in a NodeJS environment.
It is handled by `vercel/ncc` compiler.

```sh
$ npm run build
```

