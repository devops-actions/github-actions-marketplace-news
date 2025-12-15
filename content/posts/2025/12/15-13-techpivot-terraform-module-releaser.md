---
title: Terraform Module Releaser
date: 2025-12-15 13:16:52 +00:00
tags:
  - techpivot
  - GitHub Actions
draft: false
repo: https://github.com/techpivot/terraform-module-releaser
marketplace: https://github.com/marketplace/actions/terraform-module-releaser
version: v1.8.0
dependentsNumber: "21"
---


Version updated for **https://github.com/techpivot/terraform-module-releaser** to version **v1.8.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **21** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-module-releaser) to find the latest changes.

## Release notes

## 1.8.0 (2025-12-15)

### ✨ New Features

- **Flexible Module Reference Mode** 🏷️: Choose how Terraform module versions are referenced in generated documentation—by tag or commit SHA—using the new `module-ref-mode` configuration. This gives you precise control over version tracking and auditability in your wiki documentation. @Copilot (#283)
- **Smarter Changelog Generation** 📝: Changelog generation is now token-aware and more efficient, with intelligent commit message truncation (especially for dependabot updates) and real-time token usage estimation. This keeps release notes concise while staying within API limits. @virgofx (#342)

### 🛠 Improvements

- **Upgraded Testing Infrastructure** 🧪: Upgraded from Vitest 3 to Vitest 4 with enhanced test coverage tooling. Includes comprehensive new test cases covering edge scenarios in wiki repository handling, changelog generation for modules without releases, and configuration clearing. Maintains 100% code coverage across all metrics (statements, branches, functions, lines). @virgofx (#341)
- **Node.js 24 Development Environment** 🚀: Development environment upgraded to Node.js 24 for improved performance and compatibility with the latest features. All configuration files, documentation, and workflows updated for seamless setup. @virgofx (#340)
- **Biome Schema Reference Update** 🧩: Biome schema now references your local installation instead of a remote URL, preventing version mismatches and ensuring consistent linting and formatting across all contributors. @virgofx (#339)

### 📦 Dependencies

- **Production Dependencies**: Updated `@modelcontextprotocol/sdk`, `express`, `glob`, `p-limit`, `@actions/core`, `@octokit/plugin-paginate-rest`, `@octokit/plugin-rest-endpoint-methods`, `@octokit/request-error`, and Vite security patches (#304, #312, #320, #330, #331, #341)
- **Development Dependencies**: Updated `openai` (5.23.1 → 6.10.0), `@octokit/types`, `minimatch`, `textlint`, `which`, and npm-development group packages (#279, #286, #294, #298, #303, #323, #325, #326, #341)
- **GitHub Actions**: Updated `actions/checkout` (5 → 6), `actions/setup-node` (4 → 6), `actions/github-script` (7 → 8), `actions/upload-artifact` (4 → 5), `github/codeql-action` (3 → 4), `peter-evans/create-pull-request`, `SonarSource/sonarqube-scan-action` (5.2.0 → 6.0.0), and `super-linter/super-linter` updates (#276, #277, #278, #284, #293, #296, #297, #302, #321, #322, #324)

### 📚 Documentation

- **Comprehensive Contributor Guide** 🤝: New CONTRIBUTING.md provides detailed guidance on environment setup, devcontainer usage, GITHUB_TOKEN configuration, workflow practices, commit conventions (Conventional Commits), and community standards—making it easier than ever to contribute. @Copilot (#249)
- **Clearer Copilot Instructions** 📖: Copilot instructions restructured for better clarity and organization, with improved guidance on Node.js compatibility, code standards, and development best practices. @virgofx (#338)

---

**Full Changelog**: https://github.com/techpivot/terraform-module-releaser/compare/v1.7.1...v1.8.0
