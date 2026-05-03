---
title: Sylius Plugin CI
date: 2026-05-03 06:39:30 +00:00
tags:
  - Setono
  - GitHub Actions
draft: false
repo: https://github.com/Setono/sylius-plugin
marketplace: https://github.com/marketplace/actions/sylius-plugin-ci
version: 2.2.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/Setono/sylius-plugin** to version **2.2.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sylius-plugin-ci) to find the latest changes.

## Action Summary

The **Sylius Plugin GitHub Actions** provide a suite of composite actions designed to streamline the continuous integration (CI) process for developers creating Sylius plugins. These actions automate key tasks such as static code analysis, unit and integration testing, coding standards validation, dependency analysis, mutation testing, code coverage reporting, and backward compatibility checks. By packaging these tools into an easy-to-use pipeline, the action simplifies plugin development, reduces configuration effort, and ensures adherence to best practices.

## What's Changed

- Add testsuite input to phpunit-running actions and Node/fixtures setup to integration-tests (807ad7d)
- Drop extensions input from backwards-compatibility sub-action (bff61da)
- Add backwards-compatibility sub-action wrapping Roave's BC check (6d67e6e)
- Archive add-ci-composite-actions and sync ci-composite-actions spec (78c8c00)
- Use vendor/bin tools and add defaults for php-version/dependencies (507ebf8)
- Change name (09b76ea)
- Add bin/release script to enforce dual-tag release invariant (13851ef)
- Add composite GitHub Actions for Sylius plugin CI (1b2784a)
- Add .editorconfig (d715376)
- Document rule that new features must be added to README (9388a1b)
