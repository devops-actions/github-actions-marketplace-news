---
title: Fix Code securely
date: 2026-01-09 21:21:26 +00:00
tags:
  - csm-actions
  - GitHub Actions
draft: false
repo: https://github.com/csm-actions/securefix-action
marketplace: https://github.com/marketplace/actions/fix-code-securely
version: v0.5.1
dependentsNumber: "2"
---


Version updated for **https://github.com/csm-actions/securefix-action** to version **v0.5.1**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fix-code-securely) to find the latest changes.

## Action Summary

Securefix Action is a GitHub Action designed to securely automate code fixes within CI workflows without requiring the sharing of sensitive GitHub App private keys or external service access to your code. It enhances the security of workflows by operating entirely within GitHub Actions while providing a straightforward, serverless implementation. Key capabilities include secure commit pushes, pull request creation, and customizable validation processes, all aimed at improving developer productivity and maintaining code security.

## Release notes

[Issues](https://github.com/csm-actions/securefix-action/issues?q=is%3Aissue+is%3Aclosed+milestone%3Av0.5.1) | [Pull Requests](https://github.com/csm-actions/securefix-action/pulls?q=is%3Apr+is%3Aclosed+milestone%3Av0.5.1) | https://github.com/csm-actions/securefix-action/compare/v0.5.0...v0.5.1 | [Base revision](https://github.com/csm-actions/securefix-action/tree/98f1a62cc2d0db78f67bc0ffb5bf5a61f6a92c51)

## Features

#432 Support listing committed files without git ls-files

The input `use_git_ls_files` is added.

## Others

#406 Update dependency zod to v4 (`3.25.76` => `4.3.5`)
