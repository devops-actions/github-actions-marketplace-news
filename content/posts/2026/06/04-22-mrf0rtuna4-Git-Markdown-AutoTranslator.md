---
title: Generate Localized Markdown File
date: 2026-06-04 22:50:01 +00:00
tags:
  - mrf0rtuna4
  - GitHub Actions
draft: false
repo: https://github.com/mrf0rtuna4/Git-Markdown-AutoTranslator
marketplace: https://github.com/marketplace/actions/generate-localized-markdown-file
version: v2.3.0
dependentsNumber: "3"
actionType: Docker
---


Version updated for **https://github.com/mrf0rtuna4/Git-Markdown-AutoTranslator** to version **v2.3.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/generate-localized-markdown-file) to find the latest changes.

## What's Changed

## v2.3.0

### Highlights

- Added a new translation provider abstraction, making it easier to support multiple `deep-translator` engines in a consistent way.
- Introduced support for `provider`, `source_language`, `provider_options`, and `validate_provider` configuration options.
- Added provider validation so you can test connectivity and credentials before processing markdown files.
- Expanded the action metadata and documentation to reflect the new configuration model.
- Improved argument parsing and error handling for invalid inputs and unsupported markdown files.
- Refactored localization, processing, logging, and filesystem handling for better structure and maintainability.

### Improvements

- More robust localization workflow with cleaner separation of concerns.
- Better support for provider-specific credentials and environment variables.
- Updated Docker and GitHub Actions configuration.
- Expanded type stubs for `deep_translator` integrations.
- Added comprehensive tests for the localizator, processor, providers, and main entrypoint.

### Testing

- New automated test coverage was added across core translation and localization components.
- The release includes fixtures for GitHub-flavored markdown translation scenarios.

### Notes

- Existing workflows may need to be updated to use the new configuration options.
- The default provider remains `GoogleTranslator`.
- For providers that require credentials, make sure the corresponding environment variables are set.

## PR's
* feat(MD_AST): Implement Markdown AST parsing by @mrf0rtuna4 in https://github.com/mrf0rtuna4/Git-Markdown-AutoTranslator/pull/4


**Full Changelog**: https://github.com/mrf0rtuna4/Git-Markdown-AutoTranslator/compare/v2.2.1...v2.3.0
