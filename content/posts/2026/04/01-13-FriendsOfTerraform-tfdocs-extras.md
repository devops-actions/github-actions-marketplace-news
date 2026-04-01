---
title: tfdocs-extras
date: 2026-04-01 13:58:10 +00:00
tags:
  - FriendsOfTerraform
  - GitHub Actions
draft: false
repo: https://github.com/FriendsOfTerraform/tfdocs-extras
marketplace: https://github.com/marketplace/actions/tfdocs-extras
version: v0.0.0-beta.6
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/FriendsOfTerraform/tfdocs-extras** to version **v0.0.0-beta.6**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tfdocs-extras) to find the latest changes.

## Action Summary

The **Terraform Documentation Extras (tfdocs-extras)** GitHub Action provides a tool for parsing Terraform `object()` type definitions, including nested objects, into structured and documented formats. It addresses the limitations of Terraform Docs by automating the generation of comprehensive documentation that includes field details, default values, and support for advanced directives like `@since` and `@example`. The action streamlines documentation creation for Terraform modules, offering output in GitHub-friendly Markdown and enabling integration as a Go library or CLI tool.

## What's Changed

## Fixes

- **Breaking change:** Casing for attributes is now preserved when being rendered in the README. Previously, the headings used to show object attributes under the "Objects" section were transformed to PascalCase; now, they will remain in snake_case per Terraform best practices. (#2)
- Empty sections and tables are no longer rendered in READMEs (#3)
