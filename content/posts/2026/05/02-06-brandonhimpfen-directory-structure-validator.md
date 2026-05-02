---
title: Directory Structure Validator
date: 2026-05-02 06:01:22 +00:00
tags:
  - brandonhimpfen
  - GitHub Actions
draft: false
repo: https://github.com/brandonhimpfen/directory-structure-validator
marketplace: https://github.com/marketplace/actions/directory-structure-validator
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/brandonhimpfen/directory-structure-validator** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/directory-structure-validator) to find the latest changes.

## Action Summary

The **Directory Structure Validator** GitHub Action automates the validation of a repository's folder structure to ensure required directories exist, relative to a configurable base path. It helps enforce consistent project layouts across various use cases, such as templates, starter kits, or documentation sites, and can either fail workflows or report missing directories without failing. Key capabilities include customizable directory checks, flexible error handling, and actionable outputs detailing the validation results.

## What's Changed

Directory Structure Validator is a lightweight GitHub Action that ensures required directories exist in your repository.

This initial release focuses on simplicity, flexibility, and fast validation within CI pipelines.

## Features

- Validate presence of required directories (e.g., `/src`, `/docs`, `/tests`).
- Configurable directory list via action inputs.
- Clear error messages when directories are missing.
- Fails the workflow when requirements are not met.
- Fast execution with minimal dependencies.

## Use Cases

- Enforce consistent repository structure across teams.
- Standardize project scaffolding for monorepos or templates.
- Prevent incomplete or improperly structured pull requests.
