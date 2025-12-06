---
title: github-actions-opentelemetry
date: 2025-07-06 08:58:05 +00:00
tags:
  - paper2
  - GitHub Actions
draft: false
repo: https://github.com/paper2/github-actions-opentelemetry
marketplace: https://github.com/marketplace/actions/github-actions-opentelemetry
version: v0.7.0
dependentsNumber: "4"
---


Version updated for **https://github.com/paper2/github-actions-opentelemetry** to version **v0.7.0**.
- This action is used across all versions by **4** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-actions-opentelemetry) to find the latest changes.

## Release notes

Release Notes v0.7.0

  🎉 Major Features

  - Multi-Event Support: Added support for push event in addition to existing workflow_run events (#124)
  - Workflow Run Testing: Added comprehensive workflow_run tests to validate action behavior after
  workflow completion (#129)

  🔧 Testing & Development Improvements

  - Enhanced Testing Framework:
    - Added reusable workflow for action output validation (#130)
    - Improved testing instructions and architecture documentation (#123)
    - Added configuration files for development and testing environments (#133)
  - Development Environment:
    - Refactored devcontainer.json for better organization and settings (#126)
    - Updated extension identifier for Anthropic Claude Code support (#127)

  📊 Data Processing Enhancements

  - Normalization Improvements:
    - Enhanced normalization filters to replace dynamic values with fixed ones for consistent
  testing (#143)
    - Refactored expected metrics and traces JSON files to standardize structure (#142)
    - Updated test data for workflow run scenarios (#144)

  🏗️ Architecture Refactoring

  - Workflow Structure:
    - Refactored example workflows to use reusable workflow patterns (#128)
    - Removed 'main' branch triggers from example workflows for cleaner testing (#140)
    - Improved workflow organization and maintainability (#141)

  📈 Impact

  This release significantly expands the action's capabilities by supporting multiple GitHub event
  types while maintaining backward compatibility. The enhanced testing framework and improved data
  normalization provide better reliability and easier maintenance for future development.

  Full Changelog: https://github.com/paper2/github-actions-opentelemetry/compare/v0.6.0...v0.7.0
