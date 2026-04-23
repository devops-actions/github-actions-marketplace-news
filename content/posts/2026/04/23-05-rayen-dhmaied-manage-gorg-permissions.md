---
title: Manage GitHub org permissions as YAML
date: 2026-04-23 05:54:51 +00:00
tags:
  - rayen-dhmaied
  - GitHub Actions
draft: false
repo: https://github.com/rayen-dhmaied/manage-gorg-permissions
marketplace: https://github.com/marketplace/actions/manage-github-org-permissions-as-yaml
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/rayen-dhmaied/manage-gorg-permissions** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/manage-github-org-permissions-as-yaml) to find the latest changes.

## Action Summary

The `manage-gorg-permissions` GitHub Action automates the management of organization permissions by syncing team memberships, repository access, and direct collaborator roles based on a YAML configuration file (`gorg.yaml`). By enabling permissions as code, it simplifies and standardizes the administration of GitHub organizations, ensuring consistent access control across teams and repositories. The action leverages a GitHub App for authentication and generates reports to track applied changes.

## What's Changed

**v1.0.0 — Initial release**

Manage GitHub organization permissions as code using a single YAML file.

**Features**
- Define teams, repo permissions, and direct collaborators in `gorg.yaml`
- Sync is triggered automatically on push via GitHub Actions
- Authenticates using a GitHub App
- Auto-generates a markdown report of the applied state
- Validates config before touching any API
- Handles rate limiting, missing resources, and concurrent runs gracefully

**Requirements**
- A GitHub App installed with required permissions ([README.md](https://github.com/rayen-dhmaied/manage-gorg-permissions#1-create-a-github-app))
- Three repository secrets: `GORG_APP_ID`, `GORG_APP_PRIVATE_KEY`, `GORG_INSTALLATION_ID`
