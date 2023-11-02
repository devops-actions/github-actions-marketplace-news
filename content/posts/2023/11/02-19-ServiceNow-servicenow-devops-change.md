---
title: ServiceNow DevOps Change Automation
date: 2023-11-02 19:06:10 +00:00
tags:
  - ServiceNow
  - GitHub Actions
draft: false
repo: ServiceNow/servicenow-devops-change
marketplace: https://github.com/marketplace/actions/servicenow-devops-change-automation
version: v3.0.0
dependentsNumber: "239"
---


Version updated for **ServiceNow/servicenow-devops-change** to version **v3.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **239** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/servicenow-devops-change-automation) to find the latest changes.

## Release notes

###  Automatic updation of close code based on overall pipeline execution status 
The Change created from a pipeline is now automatically closed and updated with the closure notes, actual start/end time based on the overall pipeline completion status. This is controlled by a configuration flag which can be passed in as the attribute in the CHG creation step or via the configuration in the pipeline level in DevOps Change Velocity. 
