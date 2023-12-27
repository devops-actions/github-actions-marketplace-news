---
title: UE5-Build-Project
date: 2023-12-27 11:14:44 +00:00
tags:
  - OrchidIsle
  - GitHub Actions
draft: false
repo: OrchidIsle/UE5-Build-Project
marketplace: https://github.com/marketplace/actions/ue5-build-project
version: 0.2.2
dependentsNumber: "?"
---


Version updated for **OrchidIsle/UE5-Build-Project** to version **0.2.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ue5-build-project) to find the latest changes.

## Release notes


## Release Notes for UE5-Build-Project - Version 0.2.2

We are pleased to announce the latest update to the `UE5-Build-Project` GitHub Action. This version introduces a significant enhancement to the build process for Unreal Engine projects.

### New Feature: Compile the Editor

#### `EDITOR` Input

-   **Compile the Editor**: The new `EDITOR` input allows you to choose whether to compile the Unreal Engine editor as part of your build process. This option is especially useful for builds that require editor functionality or for workflows that involve editor-based scripting and automation.
-   **Default Enabled**: This feature is set to `true` by default, ensuring that your builds include the editor unless explicitly configured otherwise.

### How to Use the New Feature

To use this new feature, include the `EDITOR` input in your workflow configuration:

```yaml
- name: Cook, Stage & Package UE Project
  uses: OrchidIsle/UE5-Build-Project@latest
  with:
    # ... (other configurations)
    EDITOR: true
```
