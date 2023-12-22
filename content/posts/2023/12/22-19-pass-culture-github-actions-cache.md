---
title: Cache GCS for self-hosted and Azure for github-runner
date: 2023-12-22 19:19:36 +00:00
tags:
  - pass-culture-github-actions
  - GitHub Actions
draft: false
repo: pass-culture-github-actions/cache
marketplace: https://github.com/marketplace/actions/cache-gcs-for-self-hosted-and-azure-for-github-runner
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **pass-culture-github-actions/cache** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cache-gcs-for-self-hosted-and-azure-for-github-runner) to find the latest changes.

## Release notes

# Google Cloud Storage or Azure Cache Action

This composite action will decide weither use gcs or azure cache.

- gcs is used for self-hosted runner
- azure is used for github runner

## Usage

> workflow.yml

```yaml
- name: Cache the node_modules
  id: node-modules-cache
  uses: pass-culture-github-actions/cache@v1.0.0
  with:
    bucket: my-ci-cache
    path: node_modules
    key: node-modules-${{ runner.os }}-${{ hashFiles('package-lock.json') }}
    restore-keys: |
      node-modules-${{ runner.os }}-${{ hashFiles('package-lock.json') }}
```

## Inputs

This composite action use under the hood the two following actions:

- gcs: https://github.com/pass-culture-github-actions/gcs-cache
- azure: https://github.com/actions/cache

Read their documentation for all their inputs.

Additionnaly, this GitHub action can control the gcloud auth internaly if you provide the following inputs

| Name         | Type     | Default | Example                                                               | Description                                                       |
| ------------ | -------- | ------- | --------------------------------------------------------------------- | ----------------------------------------------------------------- |
| workload-identity-provider       | String   | ø       | `projects/your-project-id/locations/global/workloadIdentityPools/your-identity-pool/providers/your-provider`                                                         | The GCP workload identity provider used for Gcloud auth                |
| service-account         | String | ø       | `github-ci@your-project.iam.gserviceaccount.com`                                                        | The GCP service account used for Gcloud auth                                         |




## License

This project is [MIT licensed](LICENSE.txt).

