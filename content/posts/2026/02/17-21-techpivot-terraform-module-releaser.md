---
title: Terraform Module Releaser
date: 2026-02-17 21:33:54 +00:00
tags:
  - techpivot
  - GitHub Actions
draft: false
repo: https://github.com/techpivot/terraform-module-releaser
marketplace: https://github.com/marketplace/actions/terraform-module-releaser
version: v2.0.0
dependentsNumber: "27"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/techpivot/terraform-module-releaser** to version **v2.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **27** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-module-releaser) to find the latest changes.

## Action Summary

The **Terraform Module Releaser** GitHub Action simplifies the management of Terraform modules in a monorepo by automating versioning, releases, and documentation. It efficiently handles module-specific tagging, creates GitHub releases and changelogs based on commit messages, and generates detailed wikis for each module. This action eliminates manual tasks, ensures clean dependency management, and operates entirely within the GitHub ecosystem with zero external dependencies.

## Release notes

## 2.0.0 (2026-02-17)

### 🚨 Breaking Changes

- **Conventional Commits Default Parser** ⚠️: Semantic versioning now defaults to conventional commit parsing instead of keyword-based parsing. If you relied on the previous default, please review your configuration. This change improves release accuracy and clarity. @virgofx (#378)
     **`semver-mode`**
    ```markdown
      Controls how semantic version bumps are determined from commit messages.

      Valid options: "conventional-commits" (default) or "keywords".

      "conventional-commits" (default): Parses commit messages using the Conventional Commits
      specification (https://www.conventionalcommits.org/). Version bumps are determined by commit
      type and breaking change indicators:
        - MAJOR: "BREAKING CHANGE" footer or "!" after type/scope (e.g., "feat!: drop Node 16")
        - MINOR: "feat" type (e.g., "feat: add new endpoint")
        - PATCH: "fix" type (e.g., "fix: resolve null pointer")
        - Any other valid conventional commit type defaults to PATCH
      The default-semver-level input is still respected as the fallback when a commit does not
      conform to the Conventional Commits format (i.e., has no recognized type prefix).

      "keywords": Uses major-keywords, minor-keywords, and patch-keywords for simple substring
      matching against commit messages. This is the legacy behavior from versions prior to v1.9.0.
      When using this mode, the keyword-based inputs control version bumps.
    ````

### ✨ New Features

- **Semantic Versioning Modes** 🏷️: Added support for multiple semantic versioning modes and conventional commit presets, giving you more control over release automation and version bumping. @virgofx (#378)
- **Optional Tag Signing** 🔏: Major tag creation now supports optional signing and fallback mechanisms, enhancing release security and reliability. @virgofx (#381)
- **AI Agent Workflow Support** 🤖: Introduced comprehensive documentation and workflows for AI agents, including implementation planners, test specialists, and PR writer agents, to streamline development and testing. @virgofx (#375)

### 🐛 Bug Fixes

- **Formatting and Spelling Corrections** ✍️: Fixed minor spelling and formatting issues across documentation and code comments for better clarity. @virgofx (#375)
- **Output Redirection in Tag Script** 🛠️: Corrected output redirection and removed unnecessary newlines in update-major-tag.sh, improving script reliability. @virgofx (#346)

### 🛠 Improvements

- **Terraform-docs v0.21.0** 📄: Updated terraform-docs version across configuration and documentation for enhanced compatibility and output. @virgofx (#380)
- **Node.js 25 Upgrade** 🚀: Upgraded Node.js to version 25 and updated related documentation, ensuring access to the latest features and performance improvements. @virgofx (#376)
- **Major Version Tag Script** 🏷️: Added and enhanced script for updating major version tags in GitHub Actions, simplifying release management. @virgofx (#346)
- **.editorconfig for Consistency** 📝: Introduced .editorconfig to enforce consistent coding styles across the project. @virgofx (#346)

### 📚 Documentation

- **Comprehensive Guides and Architecture Docs** 📚: Expanded documentation with detailed guides on architecture, development, testing, and agent workflows, making onboarding and contribution easier than ever. @virgofx (#375)
- **README Badge and Sponsors Link** 💎: Updated README with improved badge styles and added a GitHub Sponsors link to highlight community support. @virgofx (#383)
- **Semantic Versioning Options in README** 🏷️: Clarified semantic versioning configuration options in README for easier setup. @virgofx (#346)
- **Node.js Upgrade Documentation** 🛠️: Updated documentation to reflect Node.js 25 upgrade. @virgofx (#376)

### 🔧 Developer Experience

- **Octokit Networking Fix** 🌐: Enabled peer mode on Octokit client to resolve intermittent networking issues in devcontainer and CI environments, ensuring smoother authentication and connectivity. @virgofx (#347)
- **Test and TypeScript Guidelines** 🧪: Added comprehensive guidelines for testing and TypeScript source structure, supporting best practices and maintainability. @virgofx (#375)

---

This release delivers powerful new automation capabilities, improved reliability, and a smoother developer experience. Dive into the enhanced documentation and enjoy streamlined workflows for your next release!

###### Full Changelog: https://github.com/techpivot/terraform-module-releaser/compare/v1.8.1...v2.0.0
