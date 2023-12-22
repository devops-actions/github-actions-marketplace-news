---
title: Google Cloud Artifact Registry Action for gcloud self-hosted runners
date: 2023-12-22 19:19:38 +00:00
tags:
  - pass-culture-github-actions
  - GitHub Actions
draft: false
repo: pass-culture-github-actions/artifact-registry
marketplace: https://github.com/marketplace/actions/google-cloud-artifact-registry-action-for-gcloud-self-hosted-runners
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **pass-culture-github-actions/artifact-registry** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/google-cloud-artifact-registry-action-for-gcloud-self-hosted-runners) to find the latest changes.

## Release notes

# Google Cloud Artifact Registry Action for gcloud self-hosted runners

This composite action will decide weither use artifact registry or npm registry for Node.js dependencies.

- artifact registry is used for self-hosted runner
- npm registry is used for github runner

## Usage

> workflow.yml

```yaml
- name: "Use the artifact registry"
  uses: pass-culture-github-actions/artifact-registry@v1.0.0
  with:
    # use those 2 only if you want to manage the gcp auth within this action
    workload-identity-provider: projects/your-project-id/locations/global/workloadIdentityPools/your-identity-pool/providers/your-provider
    service-account: github-ci@your-project.iam.gserviceaccount.com
    # those 2 are required and must use secret manager to store the secrets
    secret-workload-identity-provider-artifact-registry: myorg-project-id/my-artifact-registry-workload-identity-provider-secret
    secret-service-account-artifact-registry: myorg-project-id/my-artifact-registry-service-account-secret
    # this must target where your artifact registry is
    gcp-zone: europe-west9
    gcp-project-id: myorg-project-id
    gcp-registry-id: my-org-npmjs-remote
    # if your lock file is not at the root, use one of the following
    package-lock-file-path: subdirectory/package-lock.json
    yarn-lock-file-path: subdirectory/yarn.lock
```

## Inputs

| Name                                                | Type   | Default           | Example                                                                                                      | Description                                                                             |
|-----------------------------------------------------|--------|-------------------|--------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| workload-identity-provider                          | String | ø                 | `projects/your-project-id/locations/global/workloadIdentityPools/your-identity-pool/providers/your-provider` | GCP workload identity provider used to retrieve secrets used for artifact registry auth |
| service-account                                     | String | ø                 | `github-ci@your-project.iam.gserviceaccount.com`                                                             | GCP service-account used to retrieve secrets used for artifact registry auth            |
| secret-workload-identity-provider-artifact-registry | String |                   | `myorg-project-id/my-artifact-registry-workload-identity-provider-secret`                                    | GCP workload identity provider used to retrieve secrets used for artifact registry auth |
| secret-service-account-artifact-registry            | String |                   | `myorg-project-id/my-artifact-registry-service-account-secret`                                               | GCP service-account used to retrieve secrets used for artifact registry auth            |
| gcp-zone                                            | String | ø                 | `europe-west9`                                                                                               | GCP zone where the artifact registry is hosted                                          |
| gcp-project-id                                      | String | ø                 | `myorg-project-id`                                                                                           | GCP project id where the artifact registry is hosted                                    |
| gcp-registry-id                                     | String | ø                 | `my-org-npmjs-remote`                                                                                        | GCP registry id                                                                         |
| package-lock-file-path                              | String | package-lock.json | `subdirectory/package-lock.json`                                                                             | package-lock.json file path                                                             |
| yarn-lock-file-path                                 | String | yarn.lock         | `subdirectory/yarn.lock`                                                                                     | yarn.lock file path                                                                     |


## License

This project is [MIT licensed](LICENSE.txt).

