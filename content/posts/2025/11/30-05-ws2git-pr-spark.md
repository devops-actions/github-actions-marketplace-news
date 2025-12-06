---
title: PR Spark
date: 2025-11-30 05:25:08 +00:00
tags:
  - ws2git
  - GitHub Actions
draft: false
repo: https://github.com/ws2git/pr-spark
marketplace: https://github.com/marketplace/actions/pr-spark
version: v3
dependentsNumber: "?"
---


Version updated for **https://github.com/ws2git/pr-spark** to version **v3**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-spark) to find the latest changes.

## Release notes

## Major Architecture Refactoring & Enhanced Features

### Core Improvements
- **Complete TypeScript Migration**: Rewritten from JavaScript to TypeScript for enhanced type safety and developer experience
- **Modular Architecture**: Implemented separation of concerns with dedicated service layers and configuration management
- **Input Validation**: Robust validation system for all parameters with comprehensive error handling

### New Features
- **Cross-Repository Support**: Create pull requests across different repositories within the same organization
- **Enhanced Input Parameters**: Added `owner` and `repo` inputs for flexible repository targeting
- **Improved Error Handling**: Detailed error messages and validation for branch conflicts and invalid inputs

### Technical Enhancements
- **Octokit Integration**: Leverages GitHub's official REST API client for reliable PR operations
- **Configuration Manager**: Centralized input validation and configuration management
- **Service Layer Architecture**: Clean separation between business logic and GitHub API interactions

### Breaking Changes
- **New Required Inputs**: `owner` and `repo` parameters are now mandatory
- **Updated Output Structure**: Consistent output formatting with proper TypeScript interfaces

### Usage Example
```yaml
- uses: ws2git/pr-spark@v3
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
    owner: ${{ github.repository_owner }}
    repo: ${{ github.event.repository.name }}
    title: 'Automated PR'
    source-branch: 'feature-branch'
    dest-branch: 'main'
```

**Upgrade Note**: Review your workflows to include the new required `owner` and `repo` parameters for seamless migration to v3.
