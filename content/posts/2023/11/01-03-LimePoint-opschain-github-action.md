---
title: opschain change
date: 2023-11-01 03:18:15 +00:00
tags:
  - LimePoint
  - GitHub Actions
draft: false
repo: LimePoint/opschain-github-action
marketplace: https://github.com/marketplace/actions/opschain-change
version: opschain-action-v3
dependentsNumber: "?"
---


Version updated for **LimePoint/opschain-github-action** to version **opschain-action-v3**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opschain-change) to find the latest changes.

## Release notes

# opschain-github-action 

This GitHub action can be used to initiate an [OpsChain](https://www.opschain.io) change.

## Setup

On your GitHub Repository or Organisation, add the following secrets:

- `OPSCHAIN_URL` - The URL with which to access OpsChain
- `OPSCHAIN_USERNAME` - The user with which to authenticate to OpsChain
- `OPSCHAIN_PASSWORD` - The user credential with which to authenticate to OpsChain
- `OPSCHAIN_GITHUB_USERNAME` - The GitHub User with which OpsChain should authenticate to GitHub
- `OPSCHAIN_GITHUB_PAT` - The GitHub PAT with which OpsChain should authenticate to GitHub

## Usage

Add a new job in your GitHub Workflow

```yaml
name: Verify - OpsChain

on:
  workflow_dispatch:
    inputs:
      environment_code:
        type: choice
        description: Choose an environment
        required: true
        options:
          - sandbox
          - sbxblue
          - sbxgreen

env:
  OPSCHAIN_ACTION: print_context
  OPSCHAIN_PROJECT_NAME: blueprint
  OPSCHAIN_REMOTE: origin

jobs:

  verify-opschain:
    name: Verify OpsChain GitHub Action
    runs-on: ubuntu-latest
    if: ${{ github.ref == 'refs/heads/main' }}
    timeout-minutes: 60
    environment:
      name: ${{ inputs.environment_code }}
    concurrency:
      group: ${{ github.workflow }}-${{ inputs.environment_code }}
      cancel-in-progress: false
    steps:
      - name: Checkout code
        uses: actions/checkout@v3

      - name: Install OpsChain CLI
        run: |
          mkdir -p /usr/local/bin
          curl -sSL https://github.com/LimePoint/opschain/releases/download/2023-10-24/opschain-linux -o /usr/local/bin/opschain
          chmod 755 /usr/local/bin/opschain

      - name: Deploy
        uses: limepoint/opschain-github-action@v3
        with:
          opschain_apiBaseUrl: ${{ secrets.OPSCHAIN_URL }}
          opschain_username: ${{ secrets.OPSCHAIN_USERNAME }}
          opschain_password: ${{ secrets.OPSCHAIN_PASSWORD }}
          opschain_project: ${{ env.OPSCHAIN_PROJECT_NAME }}
          opschain_environment: ${{ inputs.environment_code }}
          opschain_git_remote: ${{ env.OPSCHAIN_REMOTE }}
          opschain_git_username: ${{ secrets.OPSCHAIN_GITHUB_USERNAME }}
          opschain_git_password: ${{ secrets.OPSCHAIN_GITHUB_PAT }}
          opschain_action: ${{ env.OPSCHAIN_ACTION }}
```

The following arguments are supported for this action:

- `opschain_apiBaseUrl`: OpsChain API Base URL, required: true
- `opschain_username`: OpsChain username, required: true
- `opschain_password`: OpsChain password, required: true
- `opschain_project`: Project code for the change, default: auto-generated using GITHUB_REPOSITORY and GITHUB_REPOSITORY_OWNER variables, required: true
- `opschain_environment`: Environment code for the change, required: true
- `opschain_action`: The action to perform during this change, required: true
- `opschain_requestTimeout`: opschain request timeout, default: '60000', required: false
- `opschain_action_metadata`: The metadata to store along with this change, default: '', required: true
- `opschain_git_remote`: Git Remote name to use on the OpsChain Project, default: 'origin', required: true
- `opschain_git_rev`: The Git revision (branch/tag/commit) for the change, default: ${GITHUB_SHA}, required: true
- `opschain_github_username`: The GitHub Username with which to authenticate, required: true
- `opschain_github_pat`: The GitHub Privileged Access Token with which to authenticate, required: true

# Licence & authors

- Author:: LimePoint (support@limepoint.com)

See [LICENCE](LICENCE)

