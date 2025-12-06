---
title: Linear Ticket PR Validation
date: 2025-11-24 05:28:49 +00:00
tags:
  - Dammyololade
  - GitHub Actions
draft: false
repo: https://github.com/Dammyololade/ticket-pr-validation-action
marketplace: https://github.com/marketplace/actions/linear-ticket-pr-validation
version: v1.0.4
dependentsNumber: "?"
---


Version updated for **https://github.com/Dammyololade/ticket-pr-validation-action** to version **v1.0.4**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/linear-ticket-pr-validation) to find the latest changes.

## Release notes

# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.4] - 2025-11-23

### Fixed

- Fixed ticket ID extraction failing for branch names like `feature/enda-1555-...`
- Changed default branch pattern from `[A-Za-z]+-\\d+` to `[A-Za-z]+-[0-9]+` to avoid regex escaping issues
- Pattern now correctly matches ticket IDs in all contexts (YAML inputs, branch names, PR titles)

## [1.0.3] - 2025-11-23

### Fixed

- Added `.prettierignore` to exclude `dist/` folder from formatting checks
- Resolved CI pipeline formatting check failures

## [1.0.2] - 2025-11-23

### Fixed

- Include `dist/` folder in repository for GitHub Actions compatibility
- Fixed action not found error when referenced by tag (e.g., `@v1.0.1`)
- Updated `.gitignore` to allow `dist/` folder (standard practice for GitHub Actions)

### Changed

- Updated release process to ensure `dist/` is committed before tagging

## [1.0.1] - 2025-11-23

### Changed

- Enhanced action description in `action.yml` for better Marketplace visibility
- Improved code comments for better clarity
- Updated README testing section to better distinguish between end-user and developer instructions
- Refined workflow comments for clarity

## [1.0.0] - 2025-11-23

### Added

- Initial release of Ticket PR Validation Action
- Automatic ticket ID extraction from branch names and PR titles using regex patterns
- Linear GraphQL API integration to fetch ticket details
- Acceptance criteria extraction from ticket descriptions
- Formatted comment posting with ticket information and review requests
- Support for custom branch patterns, assistant mentions, and dry-run mode
- Comprehensive error handling with informative error comments
- Support for custom GitHub tokens
- Local testing scripts (`test-real.sh` and `test-with-act.sh`)
- Comprehensive test suite with 31 passing tests
- Full TypeScript implementation with type safety
- CI/CD workflow for automated testing and linting

### Features

- 🔍 Automatic ticket ID detection from branch names or PR titles
- 📋 Fetches ticket details from Linear GraphQL API
- 📝 Extracts acceptance criteria from markdown descriptions
- 💬 Posts formatted comments with ticket information
- 🧪 Dry-run mode for safe testing
- ⚠️ Graceful error handling with informative messages
- 🔧 Highly configurable with multiple input options

### Documentation

- Comprehensive README with usage examples
- Input/output documentation
- Troubleshooting guide
- Testing instructions for multiple scenarios

