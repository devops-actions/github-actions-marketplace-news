---
title: Sylius Plugin CI
date: 2026-04-21 06:27:45 +00:00
tags:
  - Setono
  - GitHub Actions
draft: false
repo: https://github.com/Setono/sylius-plugin
marketplace: https://github.com/marketplace/actions/sylius-plugin-ci
version: 2.1.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/Setono/sylius-plugin** to version **2.1.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sylius-plugin-ci) to find the latest changes.

## Action Summary

The **Sylius Plugin GitHub Action** is a suite of CI/CD tools designed to streamline the development and maintenance of Sylius plugins. It automates key tasks such as static code analysis, dependency management, testing (unit, integration, and mutation), code coverage, and backward compatibility checks. By providing pre-configured, modular actions aligned with Sylius development standards, it reduces the overhead of setting up and maintaining individual CI pipelines for plugin authors.

## What's Changed

- Drop extensions input from backwards-compatibility sub-action (bff61da)
- Add backwards-compatibility sub-action wrapping Roave's BC check (6d67e6e)
- Archive add-ci-composite-actions and sync ci-composite-actions spec (78c8c00)
- Use vendor/bin tools and add defaults for php-version/dependencies (507ebf8)
- Change name (09b76ea)
- Add bin/release script to enforce dual-tag release invariant (13851ef)
- Add composite GitHub Actions for Sylius plugin CI (1b2784a)
- Add .editorconfig (d715376)
- Document rule that new features must be added to README (9388a1b)
- Add highest/lowest dependency matrix to CI (3835800)
