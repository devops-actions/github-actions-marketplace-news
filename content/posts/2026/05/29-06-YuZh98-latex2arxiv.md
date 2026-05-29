---
title: latex2arxiv pre-flight
date: 2026-05-29 06:40:28 +00:00
tags:
  - YuZh98
  - GitHub Actions
draft: false
repo: https://github.com/YuZh98/latex2arxiv
marketplace: https://github.com/marketplace/actions/latex2arxiv-pre-flight
version: v1.2.4
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/YuZh98/latex2arxiv** to version **v1.2.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/latex2arxiv-pre-flight) to find the latest changes.

## Action Summary

`latex2arxiv` is a tool designed to streamline the process of preparing LaTeX projects for submission to arXiv. It automates tasks such as cleaning and pruning project files, removing unnecessary content, verifying compatibility to avoid common arXiv rejections, and generating an arXiv-ready `.zip` file. Additionally, it provides step-by-step upload instructions and metadata extraction, making the submission process simpler and more efficient, especially for users with complex or messy LaTeX projects.

## What's Changed


### Changed
- GitHub Action: drop redundant dir-zip shell wrap; CLI handles dir input natively since v0.10
- CLI: exclude `.github/` when zipping a directory input
