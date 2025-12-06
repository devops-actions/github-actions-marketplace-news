---
title: Branch Shift
date: 2025-11-26 13:10:56 +00:00
tags:
  - ws2git
  - GitHub Actions
draft: false
repo: https://github.com/ws2git/branch-shift
marketplace: https://github.com/marketplace/actions/branch-shift
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/ws2git/branch-shift** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/branch-shift) to find the latest changes.

## Release notes

Just so you know – the initial stable release of **Branch Shift** is announced. This GitHub Action is designed to facilitate the programmatic renaming of branches within a repository, addressing the need for automated branch hygiene and adherence to naming conventions in continuous integration and continuous deployment (CI/CD) pipelines.

---

## ✨ Core Functionality and Architecture

This Action operates through an encapsulated Node.js runtime environment (`runs: using: 'node16'`), utilizing the GitHub REST API for execution. The branch renaming process is conducted in two discrete steps to ensure transactional integrity:

1.  **Reference Creation:** A new reference is established (i.e., the target branch name) pointing to the same SHA as the source branch.
2.  **Source Deletion:** The original branch reference is subsequently deleted.

### Required Parameters

Successful execution is contingent upon the mandatory provision of the following input parameters:

* `github_token`: Authentication token, ideally with `repo` scope.
* `owner`: Repository owner (user or organization).
* `repo`: Target repository identifier.
* `branch`: The current branch reference to be modified.
* `new_name`: The desired branch reference name.

---

## 🚀 Implementation and Integration

Integration is achieved by invoking the action within a standard GitHub Actions workflow. The following workflow snippet illustrates a common implementation, utilizing the `workflow_dispatch` trigger for on-demand execution and input validation.

### Example Workflow (`.github/workflows/branch_ops.yml`):

```yaml
name: Branch Rename Utility

on:
  # Execution is initiated manually through the GitHub Actions UI.
  workflow_dispatch:
    inputs:      
      owner:
        description: 'Repository Owner'
        required: true
        default: ${{ github.repository_owner }}
      repo:
        description: 'Repository Identifier'
        required: true
        default: ${{ github.event.repository.name }}
      branch:
        description: 'Current Branch Reference'
        required: true        
      new_name:
        description: 'Target Branch Reference'
        required: true

jobs:
  exec_branch_shift:
    runs-on: ubuntu-latest
    permissions:
      # Elevated write permissions on contents are mandated for branch manipulation.
      contents: write 
    steps:
      - name: Execute Branch Shift Operation
        # Action is referenced via the version tag for immutable execution.
        uses: ws2git/branch-shift@v1 
        
        with:
          # Authentication is performed using a high-privilege PAT Secret.
          github_token: ${{ secrets.YOUR_PAT }} 
          owner: ${{ github.event.inputs.owner }}
          repo: ${{ github.event.inputs.repo }}
          branch: ${{ github.event.inputs.branch }}
          new_name: ${{ github.event.inputs.new_name }}
````

## 🛡️ Authentication and Authorization

Due to the destructive nature of the reference deletion step, the provision of a token with elevated authorization is critical. **It is strongly recommended that a Personal Access Token (PAT) with the `repo` scope be utilized** and securely referenced via GitHub Secrets (e.g., `secrets.YOUR_PAT`), as the default `${{ github.token }}` may frequently lack the requisite permissions for branch modification within restricted organizational contexts.

## 🔗 Documentation and Support

For comprehensive details concerning inputs, operational methodology, and security considerations, the primary [README.md](https://github.com/ws2git/branch-shift/blob/main/README.md) document should be consulted.

Bug reports and feature requests are welcome and should be submitted via the [Issue](https://github.com/ws2git/branch-shift/issues).

