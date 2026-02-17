---
title: Deploy Ansible Galaxy Collection
date: 2026-02-17 13:25:09 +00:00
tags:
  - artis3n
  - GitHub Actions
draft: false
repo: https://github.com/artis3n/ansible_galaxy_collection
marketplace: https://github.com/marketplace/actions/deploy-ansible-galaxy-collection
version: v3.0.0
dependentsNumber: "351"
actionType: Docker
---


Version updated for **https://github.com/artis3n/ansible_galaxy_collection** to version **v3.0.0**.
- This action is used across all versions by **351** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-ansible-galaxy-collection) to find the latest changes.

## Action Summary

The `ansible_galaxy_collection` GitHub Action automates the process of building and deploying Ansible Galaxy Collections to the Ansible Galaxy platform. It simplifies tasks such as creating collection archive files, dynamically managing versioning, and publishing collections. This action is particularly useful for streamlining the release pipeline of Ansible developers by ensuring compliance with Ansible Galaxy requirements and reducing manual intervention.

## Release notes

While this is a major version change due to underlying Node changes, no breaking changes are expected for downstream consumers of this action, unless you are relying on the long-deprecated `galaxy_config_file` input parameter.

## Changed
- Updates the GitHub action toolkit to their v3 versions, requiring full ESM compatibility inside the action code. These changes are all internal to the action and mainly required changes to the docker build process.
- The action now uses Ansible 3.13 under the hood, which also required docker build process changes.
- Migrated to using Renovate instead of Dependabot

## Removed
- With the major version bump, finally removing a long-deprecated `galaxy_config_file` input parameter. Ansible Galaxy requires the galaxy config file to be named `galaxy.yml` so this input parameter has been deprecated for a number of years.

