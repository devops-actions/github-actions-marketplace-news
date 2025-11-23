---
title: Deploy Microsoft Fabric items with fabric-cicd
date: 2025-11-23 12:59:20 +00:00
tags:
  - chantifiedlens
  - GitHub Actions
draft: false
repo: https://github.com/chantifiedlens/deploy-microsoft-fabric-items
marketplace: https://github.com/marketplace/actions/deploy-microsoft-fabric-items-with-fabric-cicd
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/chantifiedlens/deploy-microsoft-fabric-items** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-microsoft-fabric-items-with-fabric-cicd) to find the latest changes.

## Release notes

# Deploy Microsoft Fabric workspace items with fabric-cicd

This composite GitHub Action performs the following steps to deploy Microsoft Fabric items to a workspace. By deploying metadata about the items that are stored within a Git repository that has been connected to a Microsoft Fabric workspace with [Microsoft Fabric Git integration](https://learn.microsoft.com/en-us/fabric/cicd/git-integration/intro-to-git-integration?tabs=azure-devops).

This is done with the [fabric-cicd](https://github.com/microsoft/fabric-cicd) Python library. The steps performed are as below:

- Checks out the repository
- Sets up Python
- Installs the [fabric-cicd](https://github.com/microsoft/fabric-cicd) Python package
- Authenticates to Azure using a Service Principal via Az PowerShell
- Runs a Python deployment script (either `auth_spn_deploy_all_workspace.py` if items-in-scope input has no value or `auth_spn_deploy_fabric_items.py` or if items are specified)

Inputs

- `azure-client-id` (required) - Azure Service Principal client id (can be passed from [encrypted secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets?WT.mc_id=DP-MVP-5004032)).
- `azure-client-secret` (required) - Azure Service Principal client secret (can be passed from [encrypted secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets?WT.mc_id=DP-MVP-5004032)).
- `azure-tenant-id` (required) - Azure tenant id (can be passed from [encrypted secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets?WT.mc_id=DP-MVP-5004032)).
- `workspace-id` (required) - Workspace id to pass to the script (can also be provided via repo variables).
- `environment-name` (optional) - Environment string (default: `Test`,can also be provided via repo variables).
- `fabric-cicd-version` (optional) - Specific version of fabric-cicd library (default: ``,can also be provided via repo variables). Latest version installed when not specified.
- `repository-directory` (optional) - Path to repository directory containing workspace items (default: `./workspace`, can also be provided via repo variables).
- `items-in-scope` (optional) - ItemsInScope argument for the script. When left blank all supported items are deployed to the workspace specified (can also be provided via repo variables).


Notes: 
- The action expects Azure credentials as inputs. For security, pass those inputs from your repository or organization `secrets` when you call the action (example below).
- Deployment is based on the [fabric-cicd Python library](https://microsoft.github.io/fabric-cicd/latest/).
- Only the metadata is deployed, not the data within items themselves.
- You can utilize [fabric-cicd parameterization](https://microsoft.github.io/fabric-cicd/latest/how_to/parameterization/) providing that the `parameter.yml` file is in your own repository.
- Has been tested with latest versions of windows and ubuntu hosted runers.
- Additional examples can be found in the [GH-deploy-microsoft-fabric-items-examples GitHub repository](https://github.com/ChantifiedLens/GH-deploy-microsoft-fabric-items-examples)

Usage

Add this action to a job step in your workflow. Example:

```yaml
jobs:
  deploy:
    runs-on: windows-latest
    steps:
      - name: Deploy Fabric items
        uses: ChantifiedLens/deploy-microsoft-fabric-items@v1.0.0
        with:
          azure-client-id: ${{ secrets.AZURE_CLIENT_ID }}
          azure-client-secret: ${{ secrets.AZURE_CLIENT_SECRET }}
          azure-tenant-id: ${{ secrets.AZURE_TENANT_ID }}
          workspace-id: ${{ vars.TestWorkspace }}
          environment-name: 'Test'
          fabric-cicd-version: '0.1.30'
          repository-directory: './workspace'
          items-in-scope: ${{ vars.ItemsInScope }}

```


