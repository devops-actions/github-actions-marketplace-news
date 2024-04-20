---
title: Magento 2 installation with DDEV
date: 2024-04-20 11:00:04 +00:00
tags:
  - julienloizelet
  - GitHub Actions
draft: false
repo: julienloizelet/magento2-ddev-installation
marketplace: https://github.com/marketplace/actions/magento-2-installation-with-ddev
version: v3.1.0
dependentsNumber: "2"
---


Version updated for **julienloizelet/magento2-ddev-installation** to version **v3.1.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/magento-2-installation-with-ddev) to find the latest changes.

## Release notes

[_Compare with previous release_](https://github.com/julienloizelet/magento2-ddev-installation/compare/v3.0.0...v3.1.0)
### Changed
- Use `mariadb:10.4` as default database for Magento >= `2.4.1`
- Use `mariadb:10.2` as default database for Magento < `2.4.1`
### Add
- Add `database` input to allow choosing database version and type
### Fixed
- Remediate command injection vulnerabilities by using intermediate environment variables 

