---
title: Alembic Actions
date: 2026-01-07 13:21:05 +00:00
tags:
  - OpenMindUA
  - GitHub Actions
draft: false
repo: https://github.com/OpenMindUA/alembic-actions
marketplace: https://github.com/marketplace/actions/alembic-actions
version: v0.6
dependentsNumber: "?"
---


Version updated for **https://github.com/OpenMindUA/alembic-actions** to version **v0.6**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/alembic-actions) to find the latest changes.

## Action Summary

The Alembic Actions Collection is a set of GitHub Actions designed to streamline the management of Alembic database migrations in CI/CD workflows. It automates tasks such as detecting migrations in pull requests, generating SQL for database changes, testing the application and reversal of migrations in a test database, and safely deploying migrations to production or staging environments. These actions improve collaboration by providing SQL context for code reviews and ensure database migrations are reliable and secure.

## Release notes

  ## What's Changed

  ### Bug Fixes
  - **Fixed duplicate comments**: Review action now updates existing comments instead of creating new ones on each commit
  - **Fixed migration filtering**: Now only `.py` files in `versions/` directory are considered migrations (ignores `env.py`, `script.py.mako`, etc.)
  - **Fixed "all migrations" issue**: When no valid migration revisions are found in PR, SQL generation is skipped instead of generating ALL migrations from the beginning

  ### Improvements
  - Added comment marker to identify and track comments
  - SQL comparison before updating - comments only update when SQL actually changes
  - Support for separate comments per database in multi-database setups

  ### Tests
  - Added tests for new migration filtering logic
  - Updated existing tests to match new behavior
