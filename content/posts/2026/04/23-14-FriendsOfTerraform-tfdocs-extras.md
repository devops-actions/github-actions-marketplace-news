---
title: tfdocs-extras
date: 2026-04-23 14:07:21 +00:00
tags:
  - FriendsOfTerraform
  - GitHub Actions
draft: false
repo: https://github.com/FriendsOfTerraform/tfdocs-extras
marketplace: https://github.com/marketplace/actions/tfdocs-extras
version: v0.0.0-rc.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/FriendsOfTerraform/tfdocs-extras** to version **v0.0.0-rc.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tfdocs-extras) to find the latest changes.

## Action Summary

The `tfdocs-extras` GitHub Action automates the generation and updating of structured documentation for Terraform modules, particularly enhancing support for complex `object()` type definitions, including nested objects. It solves the challenge of parsing these definitions into human-readable Markdown documentation, addressing gaps in Terraform Docs functionality. Key capabilities include automatic documentation updates upon changes to Terraform files and support for advanced documentation directives to improve clarity and maintainability.

## What's Changed

We've reached Release Candidate status! :tada: Special shoutout to @chris-m-powell for helping me with testing and reporting bugs!

## BREAKING: Go Package Renamed

The Go package has been renamed from `tfdocextras` (singular "tfdoc") to `tfdocsextras`. I hadn't noticed this typo until now.

## New: Backward Compatibility Promise

New [explicit rules and guidelines](https://github.com/FriendsOfTerraform/tfdocs-extras#backward-compatibility-promise) have been added for how future changes to any part of this project will be made.

## New: GitHub Action

Easily integrate tfdocs-extras with your repository by using our [GitHub Action](https://github.com/FriendsOfTerraform/tfdocs-extras#usage-as-a-github-action). There's nothing to install or run manually; just create a workflow for your pull requests. For example, the FriendsOfTerraform organization has [a workflow that will render docs when a PR is labeled as "needs formatting"](https://github.com/FriendsOfTerraform/modules/blob/main/.github/workflows/format-on-label.yaml).

Added in https://github.com/FriendsOfTerraform/tfdocs-extras/pull/4 https://github.com/FriendsOfTerraform/tfdocs-extras/pull/7

## Fixes

- Added a new "Required" column to nested objects in the documentation; it was not possible to tell whether a property in an object was required prior to this. #4
  - New `Required` field in the `ArgumentGroup` struct
- Default values are now rendered correctly for all inputs and objects. This was especially problematic where empty lists were not displayed. #6
- Indentation is preserved for code blocks that exist in DocBlocks. #8
- Objects as default values no longer appear in the cells; instead, a link to the relevant documentation is rendered. #9
- Add workaround for the "Sensitive" column not being correct due to [a bug in Terraform Docs](https://github.com/terraform-docs/terraform-docs/issues/798).

## Documentation

- Added missing documentation for the `@deprecated` directive.
- Added clarifying notes for the `@regex` directive

---

**Full Changelog**: https://github.com/FriendsOfTerraform/tfdocs-extras/compare/v0.0.0-beta.6...v0.0.0-rc.1
