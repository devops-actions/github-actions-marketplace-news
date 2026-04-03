---
title: RoboInfra URDF Validator
date: 2026-04-03 21:44:38 +00:00
tags:
  - Ravindar10
  - GitHub Actions
draft: false
repo: https://github.com/Ravindar10/validate-urdf-action
marketplace: https://github.com/marketplace/actions/roboinfra-urdf-validator
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Ravindar10/validate-urdf-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/roboinfra-urdf-validator) to find the latest changes.

## Action Summary

The **validate-urdf-action** is a GitHub Action designed to automate the validation of ROS URDF files in CI/CD pipelines using the RoboInfra API. It helps developers identify and resolve structural errors in URDF files—such as joint validity, kinematic chain issues, and duplicate names—early in the development process, preventing issues from propagating to simulations or hardware. The action also supports optional kinematic analysis for advanced insights, streamlining the development of robotics applications.

## What's Changed

## What's new
- Validate ROS URDF files in GitHub Actions
- 9 structural checks
- Optional kinematic analysis (Basic/Pro plan)
- fail-on-invalid=false for report-only mode
- Outputs: is-valid, errors, dof
