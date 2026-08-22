---
title: Setup MySQL with Python 2.7
date: 2026-08-22 14:12:57 +00:00
tags:
  - griffinkelly
  - GitHub Actions
draft: false
repo: https://github.com/griffinkelly/mysql-python
marketplace: https://github.com/marketplace/actions/setup-mysql-with-python-2-7
version: v1.1
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  The GitHub Action sets up a MySQL database in Docker, allowing for various configurations such as character set and collation. It supports specific versions of MySQL and can be used to automate tasks involving MySQL operations. The action is limited by Github Actions's support for Linux environments and requires users to shut down the Default MySQL before setting it up if using port 3306.
---


Version updated for **https://github.com/griffinkelly/mysql-python** to version **v1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-mysql-with-python-2-7) to find the latest changes.

## Action Summary

The GitHub Action sets up a MySQL database in Docker, allowing for various configurations such as character set and collation. It supports specific versions of MySQL and can be used to automate tasks involving MySQL operations. The action is limited by Github Actions's support for Linux environments and requires users to shut down the Default MySQL before setting it up if using port 3306.

## What's Changed

- Update document (de1fba8)
- Supports more options (73a5ef7)
- Add docker configurations (9e1c6ff)
- Initial commit (60f8cfb)
