---
title: Solace Event Portal Provisioning
date: 2023-12-02 03:16:49 +00:00
tags:
  - SolaceDev
  - GitHub Actions
draft: false
repo: SolaceDev/solace-ep-provisioning-github-action
marketplace: https://github.com/marketplace/actions/solace-event-portal-provisioning
version: v1.9
dependentsNumber: "?"
---


Version updated for **SolaceDev/solace-ep-provisioning-github-action** to version **v1.9**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/solace-event-portal-provisioning) to find the latest changes.

## Release notes

This release adds support for taking the Solace PubSub+ Event Portal Application Version ID as follows:


```yaml
uses: SolaceDev/solace-ep-provisioning-github-action@v1.2
with:
    <other_inputs>
    APPLICATION_VERSION_ID: ${{ env. APPLICATION_VERSION_ID}}
```

