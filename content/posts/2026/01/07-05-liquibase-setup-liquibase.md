---
title: Setup Liquibase
date: 2026-01-07 05:39:14 +00:00
tags:
  - liquibase
  - GitHub Actions
draft: false
repo: https://github.com/liquibase/setup-liquibase
marketplace: https://github.com/marketplace/actions/setup-liquibase
version: v2.1.0
dependentsNumber: "6"
---


Version updated for **https://github.com/liquibase/setup-liquibase** to version **v2.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-liquibase) to find the latest changes.

## Action Summary

This GitHub Action simplifies the installation and configuration of Liquibase, a database schema change management tool, within CI/CD workflows. It automates the downloading, installation, and setup of specific Liquibase versions for both Community and Secure editions, ensuring cross-platform support and seamless integration. With features like version control, intelligent caching, and enhanced logging, it optimizes workflow performance and reliability while addressing the need for consistent and efficient Liquibase setups in diverse environments.

## Release notes

## 🚀 GitHub Action Release

This release contains the built distribution files required for the GitHub Action to work.

## 🚀 New Features

- **⚡ Tool Cache Support** - Liquibase installations are now cached using `@actions/tool-cache`, significantly improving workflow execution time on subsequent runs for self-hosted runners @jnewton03 (#101)
- **🔗 Custom Download URL Support** - Add `download_url` input for internal/private repositories @jnewton03 (#95)
- **📊 Scarf Tracking URLs** - Add download analytics for Community, Pro, and Secure editions (DAT-21375) @jandroav (#110)
- **🏷️ Community Edition Support** - Add 'community' edition for Liquibase 5.0 FSL licensing @jnewton03 (#90)
- **📝 Updated Examples** - Update examples for Liquibase 5.0+ 'all in the box' features @jnewton03 (#89)
- **🤖 Claude Code GitHub Workflow** - Add automated workflow for Claude Code integration @jnewton03 (#94)

## 🐛 Bug Fixes

- fix(DAT-21375): Fixes for Scarf tracking URLs @jandroav (#115)
- fix: Add secure-edition UAT scope and dual-version support @jnewton03 (#117)
- fix: Add missing checks/statuses permissions to Claude workflows @jnewton03 (#101)

## 📚 Documentation

- docs: Update examples to new naming conventions (5.0.x, community, secure) @jnewton03 (#116)

## 🔧 Maintenance & Dependencies

<details>
<summary>27 changes</summary>

- fix: Add secure-edition UAT scope and dual-version support @jnewton03 (#117)
- docs: Update examples to new naming conventions (5.0.0, community, secure) @jnewton03 (#116)
- feat: Add custom download URL support for internal repositories @jnewton03 (#95)
- feat(DAT-21375): Add Scarf tracking URLs for download analytics @jandroav (#110)
- chore(deps): bump actions/download-artifact from 6 to 7 @dependabot (#111)
- chore(deps): bump actions/checkout from 5 to 6 @dependabot (#107)
- chore(deps): bump actions/upload-artifact from 5 to 6 @dependabot (#112)
- chore(deps-dev): bump the development-dependencies group with 5 updates @dependabot (#113)
- chore(deps): bump the production-dependencies group with 2 updates @dependabot (#114)
- chore(deps-dev): bump the development-dependencies group across 1 directory with 5 updates @dependabot (#109)
- chore(deps): bump glob from 10.4.5 to 10.5.0 @dependabot (#105)
- chore(deps-dev): bump js-yaml from 3.14.1 to 3.14.2 @dependabot (#103)
- chore(deps-dev): bump the development-dependencies group across 1 directory with 5 updates @dependabot (#102)
- chore(deps): bump the production-dependencies group with 2 updates @dependabot (#98)
- fix: add missing checks/statuses permissions to Claude workflows @jnewton03 (#101)
- chore(deps-dev): bump the development-dependencies group with 2 updates @dependabot (#97)
- feat: Add 'community' edition support for Liquibase 5.0 FSL licensing @jnewton03 (#90)
- docs: update examples for Liquibase 5.0+ 'all in the box' features @jnewton03 (#89)
- refactor(workflows): Use reusable Claude Code workflows from build-logic @jnewton03 (#96)
- chore(deps): bump actions/download-artifact from 5 to 6 @dependabot (#92)
- chore(deps): bump actions/upload-artifact from 4 to 5 @dependabot (#91)
- chore(deps-dev): bump the development-dependencies group with 4 updates @dependabot (#87)
- chore(deps): bump actions/setup-node from 5 to 6 @dependabot (#86)
- chore(deps): bump semver from 7.7.2 to 7.7.3 @dependabot (#85)
- chore(deps-dev): bump the development-dependencies group with 4 updates @dependabot (#84)
- chore(deps): bump github/codeql-action from 3 to 4 @dependabot (#83)
- chore(deps-dev): bump the development-dependencies group with 6 updates @dependabot (#82)
</details>

### Usage Example
```yaml
steps:
  - name: Setup Liquibase
    uses: liquibase/setup-liquibase@v2.1.0
    with:
      version: '5.0.3'
      edition: 'secure'
    env:
      LIQUIBASE_LICENSE_KEY: ${{ secrets.LIQUIBASE_LICENSE_KEY }}
```

### Build Information
- **Full Changelog**: https://github.com/liquibase/setup-liquibase/compare/v2.0.0...v2.1.0
- **GitHub Actions**: https://github.com/liquibase/setup-liquibase/actions
- **Marketplace**: https://github.com/marketplace/actions/setup-liquibase

---

*This release was automatically generated and includes all merged pull requests since the previous release.*
