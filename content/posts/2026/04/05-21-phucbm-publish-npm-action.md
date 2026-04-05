---
title: Publish NPM Package on Release
date: 2026-04-05 21:59:57 +00:00
tags:
  - phucbm
  - GitHub Actions
draft: false
repo: https://github.com/phucbm/publish-npm-action
marketplace: https://github.com/marketplace/actions/publish-npm-package-on-release
version: v1.0.16
dependentsNumber: "12"
actionType: Composite
---


Version updated for **https://github.com/phucbm/publish-npm-action** to version **v1.0.16**.

- This action is used across all versions by **12** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/publish-npm-package-on-release) to find the latest changes.

## Action Summary

This GitHub Action automates the process of building, testing, and publishing NPM packages whenever a new GitHub release is created. It simplifies the deployment workflow by handling tasks like dependency installation, test execution, version updates, and publishing artifacts to NPM, reducing manual effort and ensuring consistency. Additionally, it supports secure authentication methods, including NPM tokens and OIDC trusted publishing, for streamlined and secure package management.

## What's Changed

Fix: upgrade npm to latest (11.5.1+) before OIDC publish. npm trusted publishing requires npm 11.5.1+; Node 20 only ships with npm 10.
