---
title: Garden Action
date: 2024-06-11 16:46:51 +00:00
tags:
  - garden-io
  - GitHub Actions
draft: false
repo: garden-io/garden-action
marketplace: https://github.com/marketplace/actions/garden-action
version: v2.0
dependentsNumber: "2"
---


Version updated for **garden-io/garden-action** to version **v2.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/garden-action) to find the latest changes.

## Release notes

## What's Changed
* **BREAKING CHANGE**: remove kubeconfig inputs by @stefreak and @twelvemo in https://github.com/garden-io/garden-action/pull/11

The Kubeconfig inputs turned out to confuse some of our users. Now you need to create your Kubeconfig before calling the Garden Action. When using AWS EKS your GitHub workflow could look like this:

```
  garden-ci:
    runs-on: ubuntu-latest
    steps:
      - name: AWS auth
        uses: aws-actions/configure-aws-credentials@v1.7.0
        with:
          aws-region: eu-central-1
          role-to-assume: ${{ secrets.AWS_ROLE_EKS_DEV }}
          role-session-name: GitHubActionsDev
          role-duration-seconds: 3600
      - name: AWS EKS Kubeconfig
        run: |
          # Add EKS cluster ${cluster_name} to ~/.kube/config
          # NOTE: The context name will be the EKS cluster ARN by default.
          # If your Garden configuration expects a different context name,
          # you can add override it using the `--alias` option.
          aws eks update-kubeconfig --name ${cluster_name} --region ${region}
      - uses: actions/checkout@v3.0.2
      - name: Run tests in ci environment with Garden
        uses: garden-io/garden-action@v2
        with:
          command: >
            test --env ci
            --var postgres-database=postgres
            --var postgres-password=${{ secrets.PG_PASSWORD }}
          garden-auth-token: ${{ secrets.GARDEN_AUTH_TOKEN }}
```
Note that we are not passing the `kubeconfig` input anymore, but update the `kubectl` configuration (`~/.kube/config`) using the command `aws eks update-kubeconfig`


**Full Changelog**: https://github.com/garden-io/garden-action/compare/v1.2...v2.0
